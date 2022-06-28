import 'package:flutter/material.dart';

import 'space_subtype.dart';


class ListTIleSelection extends StatefulWidget {
  ListTIleSelection({Key? key}) : super(key: key);

  @override
  State<ListTIleSelection> createState() => _ListTIleSelectionState();
}

class _ListTIleSelectionState extends State<ListTIleSelection> {
  @override
  void initState() {
    super.initState();
    loadItems();
  }

  List<SpaceSubType> spaceSubType = [];
  List<SpaceSubType> selectedSubType = [];

  void loadItems() {
    spaceSubType
        .add(SpaceSubType(img: 'assets/images/boxes.png', title: 'Boxes'));
    spaceSubType.add(SpaceSubType(
        img: 'assets/images/electrical Appliances.png',
        title: 'Electrical Appliances'));
    spaceSubType.add(
        SpaceSubType(img: 'assets/images/furniture.png', title: 'Furniture'));
    spaceSubType.add(
      SpaceSubType(
          img: 'assets/images/clothing_items.png', title: 'Clothing Items'),
    );
    spaceSubType.add(SpaceSubType(
        img: 'assets/images/special_request.png', title: 'Special Request'));
  }

  Widget build(BuildContext context) {
    return   Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(storageSize.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          for (int i = 0; i < storageSize.length; i++) {
                            if (i == index) {
                              setState(
                                  () => storageSize[i].isSelected = true);
                            } else {
                              setState(
                                  () => storageSize[i].isSelected = false);
                            }
                          }
                        },
                        child: Container(
                          height: 64,
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                              color: storageSize[index].isSelected
                                  ? kSubtitlegreenColor
                                  : Colors.transparent,
                              borderRadius:
                                  BorderRadius.circular(kButtonBorderRadius),
                              border: Border.all(
                                  color: kEnabledBorderColor,
                                  width:
                                      storageSize[index].isSelected ? 0 : 2)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                storageSize[index].size,
                                style: TextStyle(
                                    color: storageSize[index].isSelected
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: kMediumTextSize,
                                    fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(storageSize[index].description,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: storageSize[index].isSelected
                                          ? Colors.white
                                          : ksubtitleColor,
                                      fontSize: 10)),
                            ],
                          ),
                        ),
                      );
                    })
                  ]);
  }
}