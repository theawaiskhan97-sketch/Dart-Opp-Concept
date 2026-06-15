class BankAccount {
  double _balance = 0;

  void deposit(double amount) {
    _balance += amount;
  }

  double get balance => _balance;
}

void main() {
  BankAccount account = BankAccount();

  account.deposit(1000);

  print(account.balance);
}
