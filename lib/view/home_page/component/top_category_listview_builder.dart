import 'package:classy_e_com_demo_test_ui_1/model/top_categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TopCategoryListviewBuilder extends StatelessWidget {
  const TopCategoryListviewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 20,
            );
          },
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: TopCategoriModel.list.length,
          itemBuilder: (BuildContext context, i) {
            TopCategoriModel categoriData = TopCategoriModel.list[i];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  //color: Colors.deepOrangeAccent,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image:
                      AssetImage(categoriData.imagePath.toString()),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset:
                        Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Center(child: Text(categoriData.categoriName.toString())),
              ],
            );
          },
        ),
      ),
    );
  }
}
