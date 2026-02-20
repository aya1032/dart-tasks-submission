import 'package:bank_app/account.dart';
import 'package:bank_app/chiking_account.dart';
import 'package:bank_app/saving_account.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank App',
      theme: ThemeData(
       
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: ' Bank AppHome Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
   @override
  State<MyHomePage> createState() => _MyHomePageState();
}

  class _MyHomePageState extends State<MyHomePage> {
  List<Account> accounts = []; 

  @override
  void initState() {
    super.initState();

    accounts = [
      SavingAccount('Aya', 200, 0.05),
      CheckingAccount('Nada', 10000, 200)
    ];

    
    for (var acc in accounts) {
      acc.deposit(100);  
        if (acc is SavingAccount) {
        acc.AddInterest();  
      }
    }

    
    for (var acc in accounts) {
      acc.withdraw(50);  
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: accounts.map((acc) => 
            Text("${acc.runtimeType} - ${acc.ownerName}: \$${acc.balance.toStringAsFixed(2)}")
          ).toList(),
        ) ,
      ),
    );
  }
}

