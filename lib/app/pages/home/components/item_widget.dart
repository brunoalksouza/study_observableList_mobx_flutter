import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:observablelist_mobx_flutter/app/models/item_model.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget(
      {Key? key, required this.item, required Null Function() removeClicked})
      : super(key: key);

  final Function removeClicked = () => {};
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListTile(
          title: Text(item.title),
          leading: Checkbox(
            value: item.check,
            onChanged: (bool? value) {
              if (value != null) {
                item.setCheck(value);
              }
            },
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => {
              removeClicked(),
            },
          ),
        );
      },
    );
  }
}
