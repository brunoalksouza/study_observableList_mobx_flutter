import 'package:mobx/mobx.dart';
import 'package:observablelist_mobx_flutter/app/models/item_model.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  ObservableList<ItemModel> listItems = [
    ItemModel(title: 'Item 1', check: true),
    ItemModel(title: 'Item 2', check: false),
    ItemModel(title: 'Item 3', check: true),
    ItemModel(title: 'Item 4', check: false),
  ].asObservable();

  @computed
  int get totalChecked => listItems.where((item) => item.check).length;

  @computed
  List<ItemModel> get ListFiltered {
    if (filter.isEmpty) {
      return listItems;
    } else {
      return listItems
          .where(
            (item) => item.title.toLowerCase().contains(filter.toLowerCase()),
          )
          .toList()
          .asObservable();
    }
  }

  @observable
  String filter = '';

  @action
  setFilter(String value) => filter = value;

  @action
  addItem(ItemModel model) {
    listItems.add(model);
  }

  @action
  removeItem(ItemModel model) {
    listItems.removeWhere((item) => item.title == model.title);
  }
}
