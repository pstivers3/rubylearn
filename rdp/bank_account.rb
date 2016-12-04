#!/usr/bin/env ruby

class BankAccount
  def initialize( account_owner )
    @owner = account_owner
    @balance = 0
  end

  def deposit( amount )
    @balance = @balance + amount
  end

  def withdraw( amount )
    @balance = @balance - amount
  end

  attr_reader :balance, :owner
end

my_account=BankAccount.new('Paul')
my_account.withdraw(100)
puts my_account.balance
my_account.deposit(200)
puts my_account.balance
puts my_account.owner

