require_relative "../piggy_bank.rb"

describe "Piggy Bank" do
  let(:bank) {PiggyBank.new({pennies: 3, nickels: 2, dimes: 4, quarters: 2, capacity: 20})}
  context "Getters" do
    it "Gets the number of pennies" do
      expect(bank.pennies).to eq(3)
    end
    it "Gets the number of nickels" do
      expect(bank.nickels).to eq(2)
    end
    it "Gets the number of dimes" do
      expect(bank.dimes).to eq(4)
    end
    it "Gets the number of quarters" do
      expect(bank.quarters).to eq(2)
    end
    it "Gets the capacity" do
      expect(bank.capacity).to eq(20)
    end
  end
  context "Adds coins" do  
    it "Adds pennies" do
      bank.add_pennies(3)
      expect(bank.pennies).to eq(6)
    end
    it "Adds nickels" do
      bank.add_nickels(5)
      expect(bank.nickels).to eq(7)
    end
    it "Adds dimes" do
      bank.add_dimes(2)
      expect(bank.dimes).to eq(6)
    end
    it "Adds quarters" do
      bank.add_quarters(2)
      expect(bank.quarters).to eq(4)
    end
  end
  context "Doesn't add coins when capacity would be surpassed" do
    it "doesn't add too many pennies" do
      expect(bank.add_pennies(100)).to eq(false)
      expect(bank.pennies).to eq(3)
    end
    it "doesn't add too many nickels" do
      expect(bank.add_nickels(100)).to eq(false)
      expect(bank.nickels).to eq(2)
    end
    it "doesn't add too many dimes" do
      expect(bank.add_dimes(100)).to eq(false)
      expect(bank.dimes).to eq(4)
    end
    it "doesn't add too many quarters" do
      expect(bank.add_quarters(100)).to eq(false)
      expect(bank.quarters).to eq(2)
    end
  end
  context "Take out coins" do
    it "Can take out pennies and return it in cents" do
      expect(bank.take_pennies(2)).to eq(2)
    end
    it "Can take out nickels and return it in cents" do
      cents_in_nickel = 5
      cents = 2 * cents_in_nickel
      expect(bank.take_nickels(2)).to eq(cents)
    end
    it "Can take out dimes and return it in cents" do
      cents_in_dime = 10
      cents = 3 * cents_in_dime
      expect(bank.take_dimes(3)).to eq(cents)
    end
    it "Can take out quarters and return it in cents" do
      cents_in_quarter = 25
      cents = 2 * cents_in_quarter
      expect(bank.take_quarters(2)).to eq(cents)
    end
  end
  context "Doesn't take out coins if there are no more coins left" do
    it "Doesn't take out too many pennies" do
      expect(bank.take_pennies(5)).to eq(nil)
    end
    it "Doesn't take out too many nickels" do
      expect(bank.take_nickels(10)).to eq(nil)
    end
    it "Doesn't take out too many dimes" do
      expect(bank.take_dimes(8)).to eq(nil)
    end
    it "Doesn't take out too many quarters" do
      expect(bank.take_quarters(7)).to eq(nil)
    end
  end
  context "Calculations" do
    it "Gets the total number of coins in the piggy bank" do
      expect(bank.coins).to eq(11)
    end
    it "Gets the total number of cents in the piggy bank" do
      expect(bank.amount_cents).to eq(103)
    end
    it "Gets the total number of dollars and cents in the piggy bank" do
      expect(bank.amount_dollars).to eq(1.03)
    end
  end
end