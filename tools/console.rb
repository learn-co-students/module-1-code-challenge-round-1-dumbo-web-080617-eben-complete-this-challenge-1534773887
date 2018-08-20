require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

abc = Restaurant.new("abc")
p_t = Restaurant.new("Pies & Thighs")
mexico = Restaurant.new("Mexico 2000")
commons = Restaurant.new("Commons")
hot_house = Restaurant.new("Peaches Hot House")


eben = Customer.new("Eben", "Woodward")
danny = Customer.new("Danny", "Krug")
maddie = Customer.new("Maddie", "Celis")
joanna = Customer.new("Joanna", "Klop")
becca = Customer.new("Becca", "Hafter")
alison = Customer.new("Alison", "Charde")
maddie_b = Customer.new("Maddie", "Balis")

eben_peaches = Review.new(eben, hot_house, 4, "great")
danny_commons = Review.new(danny, commons, 1, "terrible")
danny_peaches = Review.new(danny, hot_house, 5, "fantastic")
danny_p_t = Review.new(danny, p_t, 3, "fine")
maddie_peaches = Review.new(maddie, hot_house, 4, "pretty good")
joanna_abc = Review.new(joanna, abc, 3, "alright")
becca_mexico = Review.new(becca, mexico, 5, "amazing")
alison_abc = Review.new(alison, abc, 2, "not great")











binding.pry
0 #leave this here to ensure binding.pry isn't the last line
