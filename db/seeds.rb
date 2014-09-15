# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Customer.create(firstname: 'Johny', lastname: 'Flow')
Customer.create(firstname: 'Raj', lastname: 'Jamnis')
Customer.create(firstname: 'Andrew', lastname: 'Chung')
Customer.create(firstname: 'Mike', lastname: 'Smith')
Charge.create(paid: true, amount: 3000, currency: 'usd', refunded: false, customer_id: 1, disputed: false)
Charge.create(paid: true, amount: 3500, currency: 'usd', refunded: false, customer_id: 1, disputed: false)
Charge.create(paid: true, amount: 4000, currency: 'usd', refunded: false, customer_id: 1, disputed: false)
Charge.create(paid: true, amount: 4500, currency: 'usd', refunded: false, customer_id: 1, disputed: false)
Charge.create(paid: true, amount: 5000, currency: 'usd', refunded: false, customer_id: 1, disputed: false)
Charge.create(paid: true, amount: 5500, currency: 'usd', refunded: false, customer_id: 2, disputed: false)
Charge.create(paid: true, amount: 6000, currency: 'usd', refunded: false, customer_id: 2, disputed: false)
Charge.create(paid: true, amount: 6500, currency: 'usd', refunded: false, customer_id: 2, disputed: false)
Charge.create(paid: true, amount: 7000, currency: 'usd', refunded: false, customer_id: 3, disputed: false)
Charge.create(paid: true, amount: 7500, currency: 'usd', refunded: false, customer_id: 4, disputed: false)
Charge.create(paid: false, amount: 5000, currency: 'usd', refunded: false, customer_id: 3, disputed: false)
Charge.create(paid: false, amount: 4500, currency: 'usd', refunded: false, customer_id: 3, disputed: false)
Charge.create(paid: false, amount: 2000, currency: 'usd', refunded: false, customer_id: 3, disputed: false)
Charge.create(paid: false, amount: 9000, currency: 'usd', refunded: false, customer_id: 4, disputed: false)
Charge.create(paid: false, amount: 1000, currency: 'usd', refunded: false, customer_id: 4, disputed: false)
Charge.create(paid: true, amount: 1000, currency: 'usd', refunded: false, customer_id: 1, disputed: true)
Charge.create(paid: true, amount: 1000, currency: 'usd', refunded: false, customer_id: 1, disputed: true)
Charge.create(paid: true, amount: 1500, currency: 'usd', refunded: false, customer_id: 1, disputed: true)
Charge.create(paid: true, amount: 700, currency: 'usd', refunded: false, customer_id: 2, disputed: true)
Charge.create(paid: true, amount: 3000, currency: 'usd', refunded: false, customer_id: 2, disputed: true)
