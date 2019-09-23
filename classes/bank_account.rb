
class BankAccount

# attr_reader :name, :type, :balance
# attr_writer  :name, :type, :balance
attr_accessor :holder_name, :balance, :type
def initialize(holder_name, balance, type)
  @holder_name = holder_name
  @balance = balance
  @type = type
end
def pay_in(amount)
  @balance += amount

end
 def pay_monthly_fee

     @balance -= 10 if @type == 'personal'

   @balance -= 50 if @type == 'buisness'
 end

end
# def get_holder_name
#   return @holder_name
# end
#
# def get_type
#   return @type
#
# end
#
# def get_balance
#   return @balance
# end
#
# def set_holder_name(name)
# @holder_name = name
# end
# def set_balance(amount)
#   @balance = amount
# end
#
# def set_type(new_type)
#   @type = new_type
# end
# end
