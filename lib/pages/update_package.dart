import 'package:ex_form_db/utils/sql_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ex_form_db/pages/signup.dart';

class UpdatePackage extends StatefulWidget {
  final int? city_index;
  UpdatePackage({super.key, this.city_index});

  @override
  State<UpdatePackage> createState() => _UpdatePackageState();
}

class _UpdatePackageState extends State<UpdatePackage> {
  late int? city_index;

  List<Map<String, dynamic>> _journals = [];
  bool _isLoading = true;
  int _choiceIndex = 0;

  void _refreshJournals() async {
    final data = await SQLHelper.getItems(
        switchArg: "all", tableName: "package");

    setState(() {
      _journals = data;
      print(_journals.toString());
      // _walletjournals = cashWalletdata;
      // _categoriesjournals = categoriesdata;
      _isLoading = false;
      _choiceIndex = 0;
      // offsetN = 10;
    });
  }


  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    city_index = widget.city_index;
    _refreshJournals();
  }


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _titleController = "";
  String _descriptionController = "";
  double _amountController = 0.0;
  String _imageController = "";


  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      // (_isEditable) ? _updateItem() : _addItem();
      _addItem();
      Navigator.of(context).pop();
      _formKey.currentState!.reset();
    }
  }

  // Insert a new journal to the database
  Future<void> _addItem() async {
    try {
      await SQLHelper.createItem(
          _titleController,
          _descriptionController,
          _amountController,
          _imageController

        // (_walletController.isEmpty) ? "Cash" : _walletController,
        // _dropdownValue,
        // _categoryController,
        // dateFormat.format(_datetime),
      );
    } catch (e) {
      print(e);
    }
  }

  // Update the db record
  // Future<void> _updateItem() async {
  //   try {
  //     await SQLHelper.updateItem(
  //         _titleController,
  //         _descriptionController,
  //         _amountController,
  //         _imageController);
  //         // _walletController,
  //         // _dropdownValue,
  //         // _categoryController,
  //         // _oldTransactionAmount,
  //         // dateFormat.format(_datetime));
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  static Future<int> updateItem(
      int id,
      String title,
      String? description,
      double amount,
      String coverImage
      // String? wallet,
      // String type,
      // String? category,
      // double oldTransactionAmount,
      // String dateTime,
      ) async {
    final db = await SQLHelper.db();

    final data = {
      'title': title,
      'description': description,
      'amount': amount,
      'coverImage' : coverImage,
      // 'wallet': wallet,
      // 'type': type,
      // 'category': category,
      // "createdAt": dateTime
    };

    final result =
    db.update('package', data, where: "id = ?", whereArgs: [id]);

    // final amountDiff = amount - oldTransactionAmount;
    //
    // await updateWalletAmount(wallet!, amountDiff);
    return result;
  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ADMIN"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {_submitForm();},
        child: Icon(
            Icons.save
        ),

      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              initialValue: _journals[city_index!]["title"],
              onChanged: (value) {
                setState(() {
                  _titleController = value.trim();
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Title',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: _journals[city_index!]["description"],
              onChanged: (value) {
                setState(() {
                  _descriptionController = value.trim();
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Description',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
                initialValue: _journals[city_index!]["amount"].toString(),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter amount';
                }

                double parsedAmount = double.tryParse(value) ?? 0.0;

                if (parsedAmount < 0) {
                  return "Please enter a valid positive amount";
                }

                return null;
              },
              onChanged: (value) {
                setState(() {
                  _amountController = double.tryParse(value) ?? 0.0;
                });
              },
              keyboardType: const TextInputType.numberWithOptions(
                  decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                    RegExp(r'^\-?\d{0,10}(\.\d{0,2})?$')),
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Amount',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: _journals[city_index!]["coverImage"],
              onChanged: (value) {
                setState(() {
                  _imageController = value.trim();
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'ImageURL',
              ),
            ),
          ],
        ),
      ),
    );
  }
}