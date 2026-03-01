import 'package:fitness/core/helper/constant.dart';
import 'package:fitness/core/routing/routes.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/core/widgets/image_widget.dart';
import 'package:fitness/feature/frind_screen/controller/cubit/get_frinds_cubit.dart';
import 'package:fitness/feature/frind_screen/ui/wedgits/appbar_wedgit.dart';
import 'package:fitness/feature/frind_screen/ui/wedgits/loading_feind.dart';
import 'package:fitness/feature/frind_screen/ui/wedgits/search_wedgit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FrindScreen extends StatefulWidget {
  const FrindScreen({super.key});

  @override
  State<FrindScreen> createState() => _FrindScreenState();
}

class _FrindScreenState extends State<FrindScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkGray,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppbarWedgit(),
          SearchWedgit(),
          Expanded(
            flex: 8,
            child: BlocBuilder<GetFrindsCubit, GetFrindsState>(
              builder: (context, state) => state.maybeWhen(
                getFrindSucess: (user) {
                  return ListView.builder(
                    itemCount: user.length, //users.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed(
                            Routes.chatScreen,
                            arguments: {
                              "name": user[index].username,
                              "id": user[index].uid,
                              "photo": user[index].photo,
                            },
                          );
                        },
                        child: ListTile(
                          leading: CirImageWidget(
                            photo: unknownImage,
                            radious: 20,
                          ),

                          title: Text(
                            user[index].username ?? "000",
                            style: TextStyles.font16WhiteMedium,
                          ),
                        ),
                      );
                    },
                  );
                },
                getFrindsLoading: () => LoadingFrind(),
                getFrindsFailure: (message) {
                  return Text(message, style: TextStyle(color: Colors.white));
                },
                orElse: () {
                  return CircularProgressIndicator();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
