import 'package:finance_manager/settings.dart';
import 'package:finance_manager/widgets/functions/expensesFunctions.dart';
import 'package:flutter/material.dart';

void main() {
  //runApp(Settings());
  expensesFunctions myExpenseFunction = new expensesFunctions();
  myExpenseFunction.expensesRegister();
}