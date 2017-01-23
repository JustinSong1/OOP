#Name: Justin Song
#Period: 6

class BankAccount
    BANK = "GRINGOTTS BANK"
    def initialize(name, account_number)
        @customer_name = name
        @account_number = account_number
    end

    def customer_name
        format_name(@customer_name)
    end

    def account_number
        format_account_number(@account_number)
    end

    def bank_name
      BANK
    end

    private
    def format_name(name)
        name.upcase
    end

    private
    def format_account_number(account_number)
        account_number.gsub(/(\d{3})-(\d{3})-(\d{3})/, 'xxx-xxx-\3')
    end
end

#Write a class called BankAccount
  #Attributes: (Neither readable nor writable)
    #customer_name (String)
    #account_number (String)

  #Constants:
    #BANK
      #value: "GRINGOTTS BANK"

  #Public Instance Methods
    #customer_name
      #Returns the customer's name. The name should be formatted
      #correctly (see #format_name)
    #account_number
      #Returns the account number. The account number should be formatted
      #correctly (see #format_account_number)
    #bank_name
      #Returns the value of the constant named BANK

  #Private Instance Methods (helper methods)
    #format_name
      #This method takes a name and uppercases each letter. This
      #method should be used as a helper method to #customer_name
    #format_account_number
      #If an account number is 123-865-983, then this method returns
      #the number as xxx-xxx-983

  #Answer these questions:
  #1
  #What is the purpose of writing private helper methods?
  # The purpose of writing private helper methods is to make it so the code
  # is more organized and so that each method only does one thing. This way
  # we can reuse methods later on in the code.


  #2
  #What is a public interface?
  # A public interface is the point in software where independent software 
  # interacts with each other.




