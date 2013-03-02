require "Prime"

class	Euler119
	
	def initialize
	end 

	def get_n_digit_power_sum(nth_digit_sum)
		current_digit_sum, value, counter = 0, 0, 10
		while current_digit_sum < nth_digit_sum
			counter += 1
			#next if Prime.prime?(counter)
			if is_digit_power_sum?(counter)	
				value, current_digit_sum = counter, current_digit_sum + 1 
				puts "#{current_digit_sum}  =>  #{value}"
			end
		end
		return counter
	end

	def is_digit_power_sum?(n)
		digit_sum = _sum(n)
		return false if digit_sum == 1 
		power, value = 0, 0

		while value < n
			value = digit_sum**power
			return true if value == n
			power += 1
		end
		return false
	end

	private

	def _sum(n)
		n.to_s.split(//).map { |x| x.to_i }.inject(:+)
	end
end