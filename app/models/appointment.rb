class Appointment < ApplicationRecord
  belongs_to :user

  has_many :appt_cuisines, dependent: :destroy
  has_many :cuisines, through: :appt_cuisines, dependent: :destroy

  has_many :appt_prices, dependent: :destroy
  has_many :prices, through: :appt_prices, dependent: :destroy

  has_many :appt_locations, dependent: :destroy
  has_many :locations, through: :appt_locations, dependent: :destroy

  validates :content, presence: true, length: { minimum: 8}
  validates :location_selects, presence: true
  validates :price_selects, presence: true
  validates :cuisine_selects, presence: true

  def cuisine_selects
    cuisines.join(", ")
  end

  def cuisine_selects=(cuisines_array)
    no_empty_string = cuisines_array.reject { |c| c.empty? }
    cuisine_parse = no_empty_string.collect{|s| s.strip.downcase}.uniq
    new_or_found_cuisines = cuisine_parse.collect { |name| Cuisine.find_or_create_by(name: name) }
    self.cuisines += new_or_found_cuisines
  end

  def cuisine_list
    cuisines.join(", ")
  end

  def cuisine_list=(cuisines_string)
    cuisine_names = cuisines_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_cuisines = cuisine_names.collect { |name| Cuisine.find_or_create_by(name: name) }
    self.cuisines += new_or_found_cuisines
  end

  def price_selects
    prices.join(", ")
  end

  def price_selects=(prices_array)
    no_empty_string = prices_array.reject { |p| p.empty? }
    price_parse = no_empty_string.collect{|s| s.strip.downcase}.uniq
    new_or_found_prices = price_parse.collect { |name| Price.find_or_create_by(name: name) }
    self.prices += new_or_found_prices
  end

  def price_list
    prices.join(", ")
  end

  def price_list=(prices_string)
    price_names = prices_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_prices = price_names.collect { |name| Price.find_or_create_by(name: name) }
    self.prices += new_or_found_prices
  end

  def location_selects
    locations.join(", ")
  end

  def location_selects=(locations_array)
    no_empty_string = locations_array.reject { |l| l.empty? }
    location_parse = no_empty_string.collect{|s| s.strip.downcase}.uniq
    new_or_found_locations = location_parse.collect { |name| Location.find_or_create_by(name: name) }
    self.locations += new_or_found_locations
  end

  def location_list
    locations.join(", ")
  end

  def location_list=(locations_string)
    location_names = locations_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_locations = location_names.collect { |name| Location.find_or_create_by(name: name) }
    self.locations += new_or_found_locations
  end

end
