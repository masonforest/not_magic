# NotMagic

Adds 'not\_' prepended versions of all boolean methods for use instead of the ! operator.


## Installation

Add this line to your application's Gemfile:

    gem 'not_magic'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install not_magic

## Usage

If you have the class

      class Item
        def available?
          true
        end
      end

You could then call

    item = Item.new
    item.not_available? # => false


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
