import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';
import 'package:restaurant_app_yaya_food/config/function.dart';
import 'package:restaurant_app_yaya_food/view/widgets/button.dart';
import 'package:restaurant_app_yaya_food/view/widgets/commentaireWidget.dart';
import 'package:restaurant_app_yaya_food/view/widgets/description.dart';
import 'package:restaurant_app_yaya_food/view/widgets/ingredients.dart';

class detailsFoodsCartItem extends StatefulWidget {
  const detailsFoodsCartItem({super.key});

  @override
  State<detailsFoodsCartItem> createState() => _detailsFoodsCartItemState();
}

class _detailsFoodsCartItemState extends State<detailsFoodsCartItem> {
  int _selectedTag = 0;

  void changeTag(int index) {
    setState(() {
      _selectedTag = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CButton(title: "Modifier", onPressed: () {}),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Config.colors.textColor, // <-- SEE HERE
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Détails",
          style: TextStyle(
            color: Config.colors.primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 220,
                  width: width(context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(Config.asset.cesar),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Légumes grillés☀️",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Config.colors.primaryColor,
                            ),
                          ),
                          Text(
                            "5.00 €",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Config.colors.secondaryColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: width(context),
                        child: RatingBar.builder(
                          itemSize: 30.0,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Config.colors.secondaryColor,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                CustomTabView(
                  index: _selectedTag,
                  changeTag: changeTag,
                ),
                _selectedTag == 0
                    ? DescriptionsWidget()
                    : _selectedTag == 1
                        ? IngredientWidget()
                        : CommentaireWidget()
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomTabView extends StatefulWidget {
  final Function(int) changeTag;
  final int index;
  const CustomTabView(
      {super.key, required this.changeTag, required this.index});

  @override
  State<CustomTabView> createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView> {
  final List<String> _tags = ["Descriptions", "Ingredients", "Commentaires"];
  @override
  Widget _buildTags(int index) {
    return GestureDetector(
      onTap: () {
        widget.changeTag(index);
      },
      child: Text(
        _tags[index],
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: widget.index == index
              ? Config.colors.primaryColor
              : Config.colors.flouTextColor,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _tags
            .asMap()
            .entries
            .map((MapEntry map) => _buildTags(map.key))
            .toList(),
      ),
    );
  }
}
