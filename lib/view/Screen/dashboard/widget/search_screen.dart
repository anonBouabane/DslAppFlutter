import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(decoration:const BoxDecoration(color: Colors.white),
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  hintText: "search...",
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            )),
      ),
    );
  }
}
