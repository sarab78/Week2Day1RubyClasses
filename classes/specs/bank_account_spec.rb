require('minitest/autorun')
require('minitest/rg')
require_relative('../bank_account')

class TestBankAccount <  Minitest::Test
def setup
@account = BankAccount.new("colin", 500, "buisness")
end
  def test_account_name

    # account = {
    #   holder_name: "colin",
    #   balance: 500,
    #   type: "buisness"
    # }
bank_account = BankAccount.new("colin", 500, "buisness")
assert_equal("colin", @account.holder_name)
    # assert_equal("colin", get_account_name(account))
# bank_account2 = BanlAccount,new("Steve", 500, "buisness")(we can make so many accounts)
  end

def test_account_balance
assert_equal(500, @account.balance)
end

 def test_account_type
assert_equal('buisness', @account.type)
end

def test_set_account_name
  @account.holder_name = 'Bob'
  assert_equal('Bob', @account.holder_name)
end

def test_set_account_balance
  @account.balance = 10000
  assert_equal(10000, @account.balance)
end

 def test_set_account_type
   @account.type = 'personal'
   assert_equal('personal', @account.type)
 end

def test_pay_into_account
  @account.pay_in(1000)
  assert_equal(1500, @account.balance)
end

def test_monthly_fee
  @account.pay_monthly_fee
  assert_equal(450, @account.balance)
end

def test_monthly_fee_personal
  account = BankAccount.new('Alice', 5000, 'personal')
  account.pay_monthly_fee
  assert_equal(4990, account.balance)

end
end
