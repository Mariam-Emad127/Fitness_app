import 'package:fitness/core/helper/constant.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/feature/frind_screen/controller/cubit/get_frinds_cubit.dart';
import 'package:fitness/feature/profile/ui/widget/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FrindScreen extends StatefulWidget {
  const FrindScreen({super.key});

  @override
  State<FrindScreen> createState() => _FrindScreenState();
}

class _FrindScreenState extends State<FrindScreen> {
  bool isShowUsers = false;
  SearchController searchController = SearchController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkGray,
      appBar: AppBar(
        backgroundColor: ColorsManager.darkGray,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Form(
          child: TextFormField(
            controller: searchController,
            decoration: const InputDecoration(
              labelText: 'Search for a user...',
              labelStyle: TextStyle(color: Colors.white, fontSize: 12),
            ),
            onFieldSubmitted: (String _) {
              setState(() {
                isShowUsers = true;
              });
            },
          ),
        ),
      ),
      body: BlocBuilder<GetFrindsCubit, GetFrindsState>(
        builder: (context, state) => state.maybeWhen(
          getFrindSucess: (user) {
            return ListView.builder(
              itemCount: user.length, //users.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: ImageWidget(image: unknownImage),
                    title: Text(
                      user[index].username ?? "000",
                      style: TextStyles.font18WhiteMedium,
                    ),
                  ),
                );
              },
            );
          },
          getFrindsLoading: () => CircularProgressIndicator(),
          getFrindsFailure: (message) {
            print("vvvvvvvvvvvvvv$message");
            return Text(message, style: TextStyle(color: Colors.white));
          },
          orElse: () {
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
