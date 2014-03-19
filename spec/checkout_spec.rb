require 'checkout'

describe Checkout do
	it "knows the total when buying A & B" do
		checkout = Checkout.new
		expect(checkout.total).to eq(80)
	end
end