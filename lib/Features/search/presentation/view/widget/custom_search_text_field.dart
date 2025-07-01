
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:preview_appp/Features/search/presentation/manager/search_cubit/search_cubit.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          onChanged: (query) {
            BlocProvider.of<SearchCubit>(context)
                .requestSearchData(query, isFinalSearch: false);
          },
          decoration: InputDecoration(
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            hintText: 'Search',
            suffixIcon: IconButton(
              onPressed: () {
                final text = controller.text.trim();
                if (text.isNotEmpty) {
                  BlocProvider.of<SearchCubit>(context)
                      .requestSearchData(text, isFinalSearch: true);
                }
              },
              icon: const Opacity(
                opacity: 0.8,
                child: Icon(Icons.search, size: 20),
              ),
            ),
          ),
        ),

        // الاقتراحات من الكيوبت
        BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            if (state is SearchSuggestions && state.suggestions.isNotEmpty) {
              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.suggestions.length,
                itemBuilder: (context, index) {
                  final suggestion = state.suggestions[index];
                  return ListTile(
                    title: Text(suggestion),
                    onTap: () {
                      controller.text = suggestion;
                      BlocProvider.of<SearchCubit>(context).requestSearchData(
                        suggestion,
                        isFinalSearch: true,
                      );
                    },
                  );
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(16),
    );
  }
}

