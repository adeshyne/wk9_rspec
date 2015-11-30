require './transaction'


describe Transaction do 

	before do
		@transaction = Transaction.new
	end
	

let(:transaction){Transaction.new(credit_account: 12345, debit_account: 40010, amount: 80050, time: Time.new(2015)) }


it "should return true if account number is valid" do 
	expect(transaction.credit_account).to eq(12345)
end

it "amounts must be of type integer and amount in cents" do
	expect(transaction.amount).to eq(80050)
end

it "time must be of Time date type" do
	expect(transaction.time).to eq(Time.new(2015))
end

it "should return amount to currency" do
		expect(transaction.amount_to_currency).to eq("$800.50")
end

it "should return accurate time" do
    expect(transaction.accurate_time).to eq("Monday, 01 Dec 2015 12:00 AM")
end

after(:each) do
	puts "----Transaction Complete!-----"
end
end


