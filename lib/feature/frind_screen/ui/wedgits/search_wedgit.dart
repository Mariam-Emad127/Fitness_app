import 'package:fitness/core/theming/color.dart';
import 'package:flutter/material.dart';

class SearchWedgit extends StatefulWidget {
  const SearchWedgit({super.key});

  @override
  State<SearchWedgit> createState() => _SearchWedgitState();
}

class _SearchWedgitState extends State<SearchWedgit> {
    SearchController searchController = SearchController();
    bool isShowUsers = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: 1,
            child: Padding(
              padding:   const EdgeInsets.symmetric(vertical: 8,horizontal: 6),
              child: Form(
                child: TextFormField(
                  controller: searchController,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorsManager.gray,width: 2),  
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'Search for a user...',
                    labelStyle: TextStyle(color: Colors.white, fontSize: 12),
                    fillColor: ColorsManager.darkBlue,
                    filled: true
                  ),
                  onFieldSubmitted: (String _) {
                    setState(() {
                      isShowUsers = true;
                    });
                  },
                ),
              ),
            ),
          );

        
  }
}