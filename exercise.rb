class MilkShake
  	def initialize
    	@base_price = 3
    	@ingredients = [ ]
  	end

  	def add_ingredient(ingredient)
  		@ingredients.push(ingredient)
  	end

  	def price_of_milkshake
  		total_price_of_milkshake = @base_price
  		@ingredients.each do |ingredient|
  			total_price_of_milkshake += ingredient.price
  		end
  		total_price_of_milkshake
  	end
end

class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
    	@price = price
  	end
end

class ShackShop
	def initialize
		@milkshakes = [ ]
	end

	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end

	def checkout
		total_bill = 0
		@milkshakes.each do |milkshake|
			total_bill += milkshake.price_of_milkshake
		end
		total_bill
	end
end

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

puts nizars_milkshake.price_of_milkshake

nizars2_milkshake = MilkShake.new
orange = Ingredient.new("Orange", 3)
mint = Ingredient.new("Mint", 2)
nizars2_milkshake.add_ingredient(orange)
nizars2_milkshake.add_ingredient(mint)

puts nizars2_milkshake.price_of_milkshake

shack_shop = ShackShop.new
shack_shop.add_milkshake(nizars_milkshake)
shack_shop.add_milkshake(nizars2_milkshake)

puts shack_shop.checkout

