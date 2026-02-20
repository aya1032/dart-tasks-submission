import 'account.dart';

class CheckingAccount extends Account {
  double withdrawalFee; 

  CheckingAccount(String ownerName, double balance, this.withdrawalFee)
      : super(ownerName, balance);

  
  @override
  void withdraw(double amount) {
    double totalAmount = amount + withdrawalFee;

    if (amount > 0 && totalAmount <= balance) {
      balance -= totalAmount;
      print('$ownerName withdrew \$${amount.toStringAsFixed(2)} + fee \$${withdrawalFee.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Invalid or insufficient balance for withdrawal');
    }
  }
}
