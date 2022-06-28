import 'package:flutter/material.dart';
import './space_subtype.dart';

import '../constants.dart';

class SelectionListTileWidget extends StatefulWidget {
  final ValueChanged<bool> isSelected;
  final SpaceSubType spaceSubType;

  const SelectionListTileWidget(
      {Key? key, required this.spaceSubType, required this.isSelected})
      : super(key: key);

  @override
  State<SelectionListTileWidget> createState() =>
      _SelectionListTileWidgetState();
}

class _SelectionListTileWidgetState extends State<SelectionListTileWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.isSelected(isSelected);
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        height: 110,
        decoration: BoxDecoration(
            color: isSelected ? kSubtitlegreenColor : Colors.transparent,
            border: Border.all(
                color: kEnabledBorderColor, width: isSelected ? 0 : 2),
            borderRadius: BorderRadius.circular(kButtonBorderRadius)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:8),
              child: Text(widget.spaceSubType.title,
                  style: TextStyle(
                    fontSize:kMediumTextSize,
                    color: isSelected ? Colors.white : kListTileTextColor,
                    fontWeight: isSelected ? FontWeight.w300 : FontWeight.w500,
                  )),
            ),
            Container(
              height: 70,
              padding: const EdgeInsets.all(5),
              child: Image.asset(widget.spaceSubType.img),
            )
          ],
        ),
      ),
    );
  }
}
