import 'package:fitness/core/routing/routes.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/exersizes_cubit.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/shimmer_widget.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/today_itemList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 
class TodayList extends StatelessWidget {
  const TodayList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExersizesCubit, ExersizesState>(
        builder: (context, state) {
      return state.maybeWhen(
          exersizeSucess: (exersizeModel) {
            return ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: exersizeModel.length,
                itemBuilder: (contex, index) {
                  return InkWell(
                    onTap: () async {
                      Navigator.pushNamed(
                        context,
                        Routes.exersizeDetail,
                        arguments: exersizeModel[index].id,
                      );
            
                     },
                    child: TodayItemlist(
                      index: index,
                      equipment: exersizeModel[index].equipment ?? "",
                      difficulty: exersizeModel[index].difficulty ?? "",
                    ),
                  );
                });
          },
          exersizeFailure: (message) {
            return Text(message);
          },
          exersizeLoading: () => ShimmerWidget(),
          orElse: () => Text("Error"));
    });
  }
}
