# Write your code for the 'Bank Account' exercise in this file. Make the tests in
# `bank_account_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/bank-account` directory.
# Write your code for the 'Bank Account' exercise in this file. Make the tests in
# `bank_account_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/bank-account` directory.
class BankAccount
  def initialize
    @balance = 0
    @is_open = false
  end

  def open
    raise ArgumentError, "You can't open an already open account" if @is_open

    @is_open = true
  end

  def close
    raise ArgumentError, "You can't close an already closed account" unless @is_open

    @is_open = false
    @balance = 0
  end

  def deposit(sum)
    raise ArgumentError, "You can't check the balance of a closed account" unless @is_open
    raise ArgumentError, "You can't withdraw a negative amount" if sum.negative?

    @balance += sum
  end

  def withdraw(sum)
    raise ArgumentError, "You can't withdraw money into a closed account" unless @is_open
    raise ArgumentError, "You can't withdraw a negative amount" if sum.negative?
    raise ArgumentError, "You can't withdraw more than you have" if sum > @balance

    @balance -= sum
  end

  def balance
    raise ArgumentError, "You can't check the balance of a closed account" unless @is_open

    @balance
  end
end
