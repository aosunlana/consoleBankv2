import 'dart:io';
void main() {
  print("Enter your name?");
  // Reading name of the user
  String accountName = stdin.readLineSync();

  // Printing the name
  print("Hello, $accountName! \nWelcome to developerBarak Micro-charity Bank!!");

  print('Enter your account number');
  //   Reading account number from the user
  String accountNumber = stdin.readLineSync();

  AccountInfo customer1 = AccountInfo(accountName: accountName, accountNumber: accountNumber);
}


class AccountInfo {
  String accountName;
  String accountNumber;
  double accountBalance = 0;

AccountInfo({String accountName, String accountNumber}) {
  this.accountName = accountName;
  this.accountNumber = accountNumber;
}


void checkBalance() {
  print('Your available balance is $accountBalance');
}

void deposit(double credit) {
this.accountBalance = credit + accountBalance;
if (credit > 0) {
print('Deposit successful, Your new account balance is ${this.accountBalance}. Thanks for banking with us! ');
} else {
  print('Invalid input. Please type the amount you intend to deposit again. ');
}
}

void withdrawal(double debit) {
  this.accountBalance = accountBalance - debit;
  if (debit > this.accountBalance) {
    print('Insufficient funds!');
  }else {
    print('Withdrawal of $debit successful, Your new account balance is ${this.accountBalance}');
}
}

}
