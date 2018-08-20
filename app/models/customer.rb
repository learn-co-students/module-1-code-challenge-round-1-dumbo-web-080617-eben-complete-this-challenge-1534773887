class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    person = all.find {|customer| customer.full_name == name}
    person
  end

  def self.find_all_by_first_name(name)
    people = all.find_all {|customer| customer.first_name == name}
    people
  end

  def self.all_names
    Customer.all.map {|cust| cust.full_name}
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}.count
  end

  def restaurants
    customer_rest = Review.all.select {|review| review.customer == self}
    customer_rest.map {|review| review.restaurant}
  end
  
end
