import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:observablelist_mobx_flutter/app/models/item_model.dart';
import 'package:observablelist_mobx_flutter/app/pages/home/home_controller.dart';
import 'package:observablelist_mobx_flutter/app/pages/home/components/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  _dialog() {
    var model = ItemModel();

    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Adicionar item'),
          content: TextField(
            autofocus: true, 
            onChanged: model.setTitle,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Novo item',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                controller.addItem(model);
                Navigator.of(context).pop();
              },
              child: const Text('Adicionar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: TextField(
          onChanged: controller.setFilter,
          decoration: const InputDecoration(hintText: 'Pesquisar..'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Observer(
              builder: (_) {
                return Text('${controller.totalChecked.toString()} Checked');
              },
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: controller.listItems.length,
            itemBuilder: (_, index) {
              var item = controller.ListFiltered[index];
              return ItemWidget(
                item: item,
                removeClicked: () {
                  controller.removeItem(item);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _dialog();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
