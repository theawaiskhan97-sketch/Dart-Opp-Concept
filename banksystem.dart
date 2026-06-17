import 'dart:io';

// A simple class that models a bank account with a balance.
class BankAccount {
  // The amount of money currently in the account.
  int balance = 0;

  // Add money into the account.
  void display(int amount) {
    // Increase the current balance by the deposited amount.
    balance = balance + amount;
  }

  // Remove money from the account if there is enough balance.
  int withdraw(int amount) {
    // Only withdraw if the balance is greater than the requested amount.
    if (balance > amount) {
      balance = balance - amount;
      return balance;
    } else {
      // If there is not enough money, keep the balance unchanged.
      return balance;
    }
  }
}

void main() {
  // Create a new BankAccount object.
  final bank = BankAccount();

  // Ask the user for the initial balance and read it from the terminal.
  stdout.write('Initial Balance: =');
  int initialBalance = int.parse(stdin.readLineSync()!);

  // Set the starting balance using the display() method.
  bank.display(initialBalance);

  // Show the current balance to the user.
  stdout.write('Current Balance: =');
  print(bank.balance);

  // Ask the user for an amount to deposit.
  stdout.write('Enter the amount to deposit: =');
  int amount = int.parse(stdin.readLineSync()!);
  bank.display(amount);

  // Show the balance after deposit.
  stdout.write('Deposited Balance: =');
  print(bank.balance);

  // Ask the user for an amount to withdraw.
  stdout.write('Enter the amount to withdraw: =');
  int withdrawAmount = int.parse(stdin.readLineSync()!);

  // Attempt to withdraw the requested amount.
  bank.withdraw(withdrawAmount);

  // Show the balance after withdrawal.
  stdout.write('Withdrawn Balance: =');
  print(bank.balance);
  stdout.write("Reamaing Balance: =");
  print(bank.withdraw(withdrawAmount));
}
