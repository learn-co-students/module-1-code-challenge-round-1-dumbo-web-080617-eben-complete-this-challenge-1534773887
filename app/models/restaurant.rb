class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    places = all.find {|rest| rest.name == name}
    places
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    count = Hash.new(0)
    reviews.each {|review| count[review.restaurant] += review.rating}
    a = count.values
    a[0]/ self.reviews.length

  end

  def longest_review
    reviews.max_by {|review| review.content.length}
  end

end


#### Build out the following methods on the `Restaurant` class


#### Restaurant

# - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant
