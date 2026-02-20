import 'package:bank_app/account.dart';

class SavingAccount extends Account {
   double interestRate;
   SavingAccount(String ownerName,double balance,this.interestRate)
   :super(ownerName,balance);
   void AddInterest(){
    double interest=balance*interestRate;
    balance+=interest;
    print('$ownerName earned interest \$${interest.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}');

   }

}
