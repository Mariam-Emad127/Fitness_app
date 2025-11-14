import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/feature/profile/data/models/user.dart';
import 'package:flutter/material.dart';

class FrindScreen extends StatefulWidget {
  const FrindScreen({super.key});

  @override
  State<FrindScreen> createState() => _FrindScreenState();
}

class _FrindScreenState extends State<FrindScreen> {
  bool isShowUsers = false;
  List<UserModel> users = [];
  SearchController searchController = SearchController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkGray,
       appBar: AppBar(
        backgroundColor:ColorsManager.darkGray ,
     leading: IconButton(
    icon: const Icon(Icons.arrow_back,color: Colors.white,),
    onPressed: () => Navigator.pop(context),
  ),
        title: Form(
          child: TextFormField(
            controller: searchController,
            decoration:
                const InputDecoration(labelText: 'Search for a user...',
                labelStyle: TextStyle(color: Colors.white,fontSize: 12)
                
                ),
            onFieldSubmitted: (String _) {
              setState(() {
                isShowUsers = true;
              });
            },
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 5, //users.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Unknown_person.jpg/813px-Unknown_person.jpg",
                ),
                radius: 16,
              ),
              title: Text("cfcc",style: TextStyles.font15WhiteMedium),),
       
          );
        },
      ),
    );
  }
}
