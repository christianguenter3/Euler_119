require 'test/unit'
require_relative 'Euler119.rb'

class TestEuler119 < Test::Unit::TestCase
	TESTCASES = { 
								#1  => 81,
								#2  => 512,
								#3  => 2401,
								#4  => 4913,
								#5  => 5832,
								#6  => 17576,
								#7  => 19683,
								#8  => 234256,
								#9  => 390625,
								#10 => 614656
								#11 => 1679616
								30 => 1
								}

	def test_get_n_digit_power_sum
		TESTCASES.each { |input, output| assert_equal(output,@euler119.get_n_digit_power_sum(input))  }
	end

	TESTCASES2 = { 10			=> false,
								 512 		=> true,
								 511 		=> false,
								 614656 => true,
								 614655 => false}

	def test_is_digit_power_sum?
		TESTCASES2.each { |input,output|  assert_equal(output,@euler119.is_digit_power_sum?(input)) }
	end

	def setup
		@euler119 = Euler119.new
	end
end