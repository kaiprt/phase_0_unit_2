# U2.W6: Create a Car Class from User Stories


# I worked on this challenge [by myself.
# U2.W6: Create a Car Class from User Stories


# I worked on this challenge [with: Jake Huhn, Kai Prout].


=begin
List: Attributes
-model
-color
List: Actions
-distance to drive
-display speed
-turn left or right
-accelerate
-decelerate
-distance traveled
-stop
-output of latest action.

# 2. Pseudocode 
1. Create a new class Car.
2. Initialize the car class with its model and color, setting all variables (mileage and speed) to instance.
METHODS 
1. Drive: takes distance and speed and adds the distance to the mileage variable. Returns string to user. 
2. Stop: sets speed to 0 and returns string to user.
3. Turn_right / Turn_left: returns string telling user what has occurred. 
4. Speed: used to check the speed after various adjustments to car
5. Decelerate: if the new_speed given is less than current speed, change car speed and return to user. If not, return error. 
6. Accelerate: see above
7. Miles_driven: inform user of how far the car has driven (mileage) 

1. Create a new class Pizza.
2. Initialize with its type and size; set equal to instance variables 

=end
# 3. Initial Solution
class Car
  # require 'Pizza'
	def initialize(model, color)
		@model = model
		@color = color
		@mileage = 0
		@speed = 0
	end

	def drive(distance, speed = @speed)
		@distance = distance
		@mileage += @distance
		@speed = speed
        return "Driving #{@distance} miles at #{@speed}mph."
	end

	def stop
		@speed = 0
        return "Car has stopped!"
	end

	def turn_right
        return "Your #{@model} is turning right!"
	end

	def turn_left
		return "Your #{@model} is turning left!"
	end

	def speed
		speed = @speed
		return "#{@speed}mph."
	end

	def decelerate(new_speed)
		if new_speed > @speed
			return "You must accelerate to reach that speed."
		else
		@speed = new_speed
		return "Slowing to #{new_speed}"
		end
	end

	def accelerate(new_speed)
		if new_speed < @speed
			return "You must decelerate to reach that speed."
		else
			@speed = new_speed
			return "Accelerating to #{new_speed} mph."
		end
	end

	def miles_driven
		return "Your #{@model} has driven #{@mileage} miles."
	end 
end

class Pizza
  def initialize(type, size)
    @type = type
    @size = size
  end
end 


# 4. Refactored Solution


class Car
	def initialize(model, color)
		@model = model
		@color = color
		@mileage = 0
		@speed = 0
	end

	def drive(distance, speed)
		@distance = distance
		@mileage += @distance
		@speed = speed
        return "Driving #{@distance} miles at #{@speed}mph."
	end

	def stop
		@speed = 0
        return "Car has stopped!"
	end

	def turn_right
        return "Your #{@model} is turning right!"
	end

	def turn_left
		return "Your #{@model} is turning left!"
	end

	def speed
		return "#{@speed}mph."
	end

	def decelerate(new_speed)
		if new_speed > @speed
			return "You must accelerate to reach that speed."
		else
		@speed = new_speed
		return "Slowing to #{new_speed}"
		end
	end

	def accelerate(new_speed)
		if new_speed < @speed
			return "You must decelerate to reach that speed."
		else
			@speed = new_speed
			return "Accelerating to #{new_speed} mph."
		end
	end

	def miles_driven
		return "Your #{@model} has driven #{@mileage} miles."
	end 
end

class Pizza
  def initialize(type, size)
    @type = type
    @size = size
  end
end 


# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Error, test failed!" unless yield
end

car1 = Car.new("Ferrari", "red")
puts car1.drive(0.25, 25) 
puts car1.stop
puts car1.turn_right 
puts car1.drive(1.5, 35)
assert { car1.speed == "35mph." }
puts car1.decelerate(15) 
assert { car1.speed == "15mph." } 
puts car1.drive(0, 25)
puts car1.stop
puts car1.turn_left 
puts car1.drive(1.4, 35) 
puts car1.stop 
puts car1.miles_driven 
assert { car1.miles_driven == "Your Ferrari has driven 3.15 miles." } 

# 5. Reflection