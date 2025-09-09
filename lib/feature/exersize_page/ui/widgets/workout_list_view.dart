import 'package:fitness/core/theming/style.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/exersize_image.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/info_widget.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/start_icon.dart';
import 'package:flutter/material.dart';

class WorkoutListView extends StatelessWidget {
  const WorkoutListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return 
                          Stack(
                            children: [
                            ExersizeImage(),
                              Positioned(
                                  top: 20,
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Banish Back Fat ",
                                            style: TextStyles.font16WhiteMedium,
                                            maxLines: 2,
                                          ),
                                          Text(
                                            "Training ",
                                            style:
                                                TextStyles.font16WhiteSemiBold,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          InfoWidget(
                                            title: " 500 Kacl",
                                            icon: Icons.lock_clock,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          InfoWidget(
                                            title: "  50 min",
                                            icon: Icons.lock_clock_sharp,
                                          ),
                                        ],
                                      ),
                             StartIcon()
                                    ],
                                  ))
                            ],
                          );
                        });
  }
}