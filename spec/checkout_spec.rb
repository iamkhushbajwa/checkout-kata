require 'checkout'

describe Checkout do
	it "can be initialised with a basket" do
		checkout = Checkout.new([:a,:b])
		expect(checkout.basket).to eq ([:a,:b])
	end

	it "knows the total when buying A & B" do
		checkout = Checkout.new([:a,:b])
		expect(checkout.total).to eq(80)
	end

	it "knows the total when buying A, B & C" do
		checkout = Checkout.new([:a,:b,:c])
		expect(checkout.total).to eq(100)
	end

	it "knows what offers it qualifies for when buying A, B & B" do
		checkout = Checkout.new([:a,:b,:b])
		expect(checkout.offers_qualified).to eq([45])
	end

	it "knows the total when buying A, B & B" do
		checkout = Checkout.new([:a,:b,:b])
		expect(checkout.total).to eq(95)
	end
end