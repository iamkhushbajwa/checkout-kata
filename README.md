Checkout Kata [![Code Climate](https://codeclimate.com/github/khushkaran/checkout-kata.png)](https://codeclimate.com/github/khushkaran/checkout-kata)
---
End of week 4 challenge @makersacademy set by
[Tony Denyer](https://github.com/antonydenyer) been set
a challenge to complete this
[kata](https://github.com/7digital/kata-checkout).
We need to implement a supermarket checkout that calculates
the total price of a number of items given. Some items have
offers associated with them and the system needs to recognise
that to provide an accurate total. The items are as follows:

| Item | Price  |   Offer   |
|:----:|:------:|:---------:|
|   A  |   50   | 3 for 130 |
|   B  |   30   | 2 for 45  |
|   C  |   20   |
|   D  |   15   |

### Technologies
* Ruby
* Git
* Object-oriented-programming
* Test-driven-development with RSpec
* CRC Cards
* Heroku
* Sinatra

### Instructions
To run the application run `irb`:

```ruby
require "./lib/checkout"
=> true
checkout = Checkout.new([:a, :b, :b, :c])
=> #<Checkout:0x007f96f11e4e68 @basket=[:a, :b, :b, :c]>
checkout.total
=> 115
```

### Issues
* Cleanup of User Interface

### Extension
As an extension I developed a front-end for the Ruby code
in the background which can be viewed on [Heroku](http://checkout-kata.herokuapp.com/).
