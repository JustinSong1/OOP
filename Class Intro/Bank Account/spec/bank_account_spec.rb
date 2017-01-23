require_relative '../bank_account'

describe BankAccount do
  let(:account) {BankAccount.new("Harry Potter", "245-384-872")}
  it "Customer name is all caps" do
    expect(account.customer_name).to eq("HARRY POTTER")
  end
  it "Hides account number" do
    expect(account.account_number).to eq("xxx-xxx-872")
  end
  it "Gets the name of the bank" do
    expect(account.bank_name).to eq("GRINGOTTS BANK")
  end
end