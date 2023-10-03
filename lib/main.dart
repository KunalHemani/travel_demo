import 'package:ex_form_db/pages/insert_package.dart';
import 'package:ex_form_db/pages/login_screen.dart';
import 'package:ex_form_db/pages/signup.dart';
import 'package:ex_form_db/pages/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:ex_form_db/pages/sample_card.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:ex_form_db/utils/sql_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _LoadSQLTable.db();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: WelcomeScreen(),
    );
  }
}

class _LoadSQLTable {
  static Future<sql.Database> db() async {
    var databasesPath = await sql.getDatabasesPath();
    var path = '$databasesPath/transaction.db';
    return sql.openDatabase(
      path,
      version: 1,
      onCreate: (sql.Database database, int version) async {
        var batch = database.batch();
        SQLHelper.createTables(database);
        await batch.commit();
      },
    );
  }
}