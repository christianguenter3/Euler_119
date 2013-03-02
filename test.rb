digit_power_sums = []
1.upto(100) do |x|
	2.upto(100) do |y|
		value = x ** y
		if value != 1
			digit_power_sums << value  if value.to_s.split(//).map { |x| x.to_i }.inject(:+) == x
		end
	end
end

digit_power_sums.uniq.sort.each_with_index{|value, index| puts index + 1, value}