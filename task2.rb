Car = Struct.new(:id, :brend, :model, :year, :color, :price, :reg_num)

class CarManager
	def initialize
		$cars = []
	end

	def add car
		$cars.push(car)
	end

	def slect_brend brend
		selected = []
		for car in $cars do
			if car.brend == brend
				selected << car
			end
		end
		return selected
	end

	def select_model_older_n (model, years_of_use)
		selected = []
		for car in $cars do
			if (2021 - car.year) > years_of_use and car.model == model
				selected << car
			end
		end
		return selected
	end

	def slect_by_year_and_price (year, low_price)
		selected = []
		for car in $cars do
			if car.year == year and car.price >= low_price
				selected << car
			end
		end
		return selected
	end

	def toString
		res = ''
		for car in $cars do
			res += car.to_s + "\n"
		end
		return res
	end

end

manager = CarManager.new
manager.add Car.new(1, 'Honda', 'XX', 2011, 'r', 300, '001')
manager.add Car.new(2, 'Honda', 'XX', 2010, 'r', 150, '002')
manager.add Car.new(3, 'Mazda', 'XX', 2010, 'r', 300, '003')
manager.add Car.new(4, 'Honda', 'YY', 2011, 'r', 400, '004')

# # manager.add car
arr = manager.slect_brend('Honda')
for car1 in arr do
	puts car1
end
puts "\n"
arr = manager.select_model_older_n('XX', 5)
for car1 in arr do
	puts car1
end
puts "\n"
arr = manager.slect_by_year_and_price(2010, 200)
for car1 in arr do
	puts car1
end

puts manager.toString
