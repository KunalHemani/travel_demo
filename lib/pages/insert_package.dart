import 'package:ex_form_db/utils/sql_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InsertPackage extends StatefulWidget {
  const InsertPackage({super.key});

  @override
  State<InsertPackage> createState() => _InsertPackageState();
}

class _InsertPackageState extends State<InsertPackage> {
  @override
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

        );
    } catch (e) {
      print(e);
    }
  }

  // Update the db record
  // Future<void> _updateItem() async {
  //   try {
  //     await SQLHelper.updateItem(
  //         transactionId!,
  //         _titleController,
  //         _descriptionController,
  //         _amountController,
  //         _walletController,
  //         _dropdownValue,
  //         _categoryController,
  //         _oldTransactionAmount,
  //         dateFormat.format(_datetime));
  //   } catch (e) {
  //     print(e);
  //   }
  // }


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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                // initialValue: _transactionItem['title'],
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
                // initialValue: _transactionItem['description'],
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
                // initialValue:  _transactionItem['amount'].toString(),
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
                // initialValue: _transactionItem['title'],
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

              // DropdownButtonFormField<String>(
              //   value: _dropdownValue,
              //   onChanged: (String? value) {
              //     setState(() {
              //       _dropdownValue = value!;
              //     });
              //   },
              //   items: _transactionType
              //       .map<DropdownMenuItem<String>>((String value) {
              //     return DropdownMenuItem<String>(
              //       value: value,
              //       child: Row(
              //         children: [
              //           (value == "Income")
              //               ? const Icon(
              //             Icons.download,
              //             color: Colors.green,
              //           )
              //               : const Icon(
              //             Icons.upload,
              //             color: Colors.red,
              //           ),
              //           const SizedBox(width: 10),
              //           Text(
              //             value,
              //             style: const TextStyle(
              //               fontSize: 16,
              //             ),
              //           ),
              //         ],
              //       ),
              //     );
              //   }).toList(),
              //   decoration: const InputDecoration(
              //     labelText: "Transaction Type",
              //     border: OutlineInputBorder(
              //       borderRadius:
              //       BorderRadius.all(Radius.circular(12.0)),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // TextFormField(
              //   initialValue: _transactionItem['wallet'],
              //   onChanged: (value) {
              //     setState(() {
              //       _walletController = value.trim();
              //     });
              //   },
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(
              //       borderRadius:
              //       BorderRadius.all(Radius.circular(12.0)),
              //     ),
              //     labelText: 'Wallet',
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // TextFormField(
              //   initialValue: _transactionItem['category'],
              //   onChanged: (value) {
              //     setState(() {
              //       _categoryController = value.trim();
              //     });
              //   },
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(
              //       borderRadius:
              //       BorderRadius.all(Radius.circular(12.0)),
              //     ),
              //     labelText: 'Category',
              //   ),
              // ),
              // const SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () => chooseDate(context),
              //   child: Row(
              //     children: [
              //       const Icon(Icons.calendar_month),
              //       const SizedBox(
              //         width: 8,
              //       ),
              //       Text(DateFormat('yyyy-MM-dd hh:mm:ss aa')
              //           .format(_datetime)
              //           .toString()),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
