import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WaterParameter extends StatefulWidget {
  const WaterParameter({Key? key}) : super(key: key);

  @override
  WaterParameterState createState() => WaterParameterState();
}

class WaterParameterState extends State<WaterParameter> {
  List<Map<String, dynamic>> items = [];

  TextEditingController nameController = TextEditingController();
  TextEditingController valueController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  Future<void> _loadItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? storedItems = prefs.getString('stored_items');
    if (storedItems != null) {
      setState(() {
        items = (storedItems.split(';'))
            .map((item) => Map<String, dynamic>.fromIterable(item.split(','), key: (e) => 'name', value: (e) => double.parse(e.split(':')[1])))
            .toList();
      });
    }
  }

  Future<void> _saveItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String serializedItems =
        items.map((item) => item.entries.map((e) => '${e.key}:${e.value}').join(',')).join(';');
    prefs.setString('stored_items', serializedItems);
  }

  void addItemToList() {
    String name = nameController.text.trim();
    String valueText = valueController.text.trim();
    if (name.isNotEmpty && valueText.isNotEmpty) {
      double value = double.tryParse(valueText) ?? 0.0;
      setState(() {
        items.add({'name': name, 'value': value});
        nameController.clear();
        valueController.clear();
        _saveItems();
      });
    }
  }

  void updateItem(int index, String newName, double newValue) {
    setState(() {
      items[index]['name'] = newName;
      items[index]['value'] = newValue;
      _saveItems();
    });
  }

  void deleteItem(int index) {
    setState(() {
      items.removeAt(index);
      _saveItems();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Array Input'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Enter a name',
                hintText: 'e.g., Item 1',
              ),
              onSubmitted: (_) => addItemToList(),
            ),
            SizedBox(height: 10),
            TextField(
              controller: valueController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: 'Enter a value',
                hintText: 'e.g., 3.14',
              ),
              onSubmitted: (_) => addItemToList(),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: addItemToList,
              child: Text('Add Item'),
            ),
            SizedBox(height: 20),
            Text(
              'Items Entered:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${items[index]['name']}: ${items[index]['value']}'),
                    trailing: IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Edit Item'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    controller: TextEditingController(text: items[index]['name']),
                                    decoration: InputDecoration(labelText: 'Name'),
                                    onChanged: (value) => setState(() => items[index]['name'] = value),
                                  ),
                                  SizedBox(height: 10),
                                  TextField(
                                    controller: TextEditingController(text: items[index]['value'].toString()),
                                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                                    decoration: InputDecoration(labelText: 'Value'),
                                    onChanged: (value) => setState(() => items[index]['value'] = double.tryParse(value) ?? 0.0),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Cancel'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    updateItem(index, items[index]['name'], items[index]['value']);
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Save'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Delete Item'),
                            content: Text('Are you sure you want to delete this item?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Cancel'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  deleteItem(index);
                                  Navigator.of(context).pop();
                                },
                                child: Text('Delete'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      items.clear();
                      _saveItems();
                    });
                  },
                  child: Text('Delete All'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Save All Items'),
                          content: Text('Are you sure you want to save all items?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cancel'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                _saveItems();
                                Navigator.of(context).pop();
                              },
                              child: Text('Save'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Save All'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
