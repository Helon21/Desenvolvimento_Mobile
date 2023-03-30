import 'dart:io';
import 'package:intl/intl.dart';
import 'package:flutter/gestures.dart';

class expensesFunctions{
  List<double> _expensiveList = [];
  List<String> _expensiveDescription = [];
  List<DateTime> _dateStorage = [] ;

  void expensesRegister() {
    print("When ending list, type exit, to stop program");
    while(true){
      print("Type your expenses:");
      double? expenses = double.parse(stdin.readLineSync()!);
      if(expenses == null || expenses < 0.00){
        while(expenses == null || expenses < 0.00){
          print("Type your expense again, with a valid value");
          expenses = double.parse(stdin.readLineSync()!);
        }
      }
      print("Type your expense description:");
      String? description = stdin.readLineSync()!;
      while(description == null || description == ''){
        while(description == null || description == ''){
          description = stdin.readLineSync();
        }
      }
      print("Type date of expense (in MM/dd/yyyy format):");
      String? inputDate = stdin.readLineSync();
      DateTime? date = null;
      List<String> comparision = ['MM/dd/yyyy', 'MMddyyyy', 'MM-dd-yyyy'];
      for(String pattern in comparision){
        try{
          date = DateFormat(pattern).parse(inputDate!);
          break;
        }catch (e){
          print("Invalid date format. Type again");
        }
      }
      if(date != null){
        print("Entered date: ${DateFormat('MM/dd/yyyy').format(date)}");
        _expensiveList.add(expenses);
        _expensiveDescription.add(description);
        _dateStorage.add(date);
      }else{
        print("Invalid date. Expense not registered.");
      }
      print("Do you want to register another expense? (yes/no)");
      String? answer = stdin.readLineSync();
      if(answer?.toLowerCase() == 'no');
      break;
    }
  }

  void allExpenses() => print("All your expenses are: $_expensiveList, $_expensiveDescription, $_dateStorage");
  
}