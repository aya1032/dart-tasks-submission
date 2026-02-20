class Account {
  String ownerName;
  double balance;
  Account(this.ownerName,this.balance);
  void deposit(double amount){
    if(amount>0){
      balance+=amount;
       print('$ownerName deposited \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}');
    }
    else{
      print('Invalid Deposit Amount');
    }
  }

void withdraw(double amount){
  if(amount>0 && amount<= balance ){
    balance-=amount;
     print('$ownerName withdrew \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}');

  }
  else{
    print('Invalid or insufficient balance for withdrawal');
  }

}
}
