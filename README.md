# InsurancePolicy

ActiveRecord extension for managing an insurance policy's attributes.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'insurance_policy'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install insurance_policy

## Usage

Generate a model and call the method.

```ruby
class CreateApplicants < ActiveRecord::Migration

  def change
    create_table :people do |t|
      t.string   :insurance_policy_company,    :limit => 150
      t.string   :insurance_policy_number,     :limit => 20
      t.date     :insurance_policy_expires_on
    end
  end

end

class Person < ActiveRecord::Base

  insurance_policy :insurance_policy

end
```

You can now use the insurance policy methods on the Person instances. You will also be able to use 
the existing attribute methods.

```ruby
person = Person.create!( :insurance_policy_company => 'ACME', 
                         :insurance_policy_number  => '123456789',
                         :insurance_policy_expires_on => Date.parse( '2012-12-31' ) )

person.insurance_policy.class #=> InsurancePolicy::Policy
person.insurance_policy.company #=> ACME
person.insurance_policy.number #=> 123456789
person.insurance_policy.expires_on #=> Mon, 31 Dec 2012
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
