# *****************************************************
#
#   Methods
#
#     Write the three methods below. Use the tests in
#     `test.rb` to verify that they work
#     correctly. DO NOT print any info to the console.
#
# *****************************************************


# sleep_in?
#
# Students sleep in if it is not a weekday or we're on vacation. 
#
# > Parameters
# ------------ 
#   * weekday  - true only if it is a weekday
#   * vacation - true only if the student is on vacation
#
# TODO - write sleep_in?

def sleep_in?(weekday, vacation)
	if vacation
		true
	elsif !weekday
		true
	else
		false
	end
end

# monkey_trouble?
#
# We have two monkeys, a and b, and the parameters a_smile and b_smile 
# indicate if each is smiling. 
# We are in trouble if they are both smiling or if neither of them is smiling.
# Return true if we are in trouble.
#
# > Parameters 
# ------------
#   * a_smiling   - true only if monkey a is smiling
#   * b_smiling   - true only if monkey b is smiling
#
# TODO - write monkey_trouble?

def monkey_trouble?(a_smiling, b_smiling)
	if a_smiling && b_smiling
		true
	elsif !a_smiling && !b_smiling
		true
	else
		false
	end
end

# sum_double
#
# Given two int values, return their sum. Unless the two values are the same,
# then return double their sum. 
#
# > Parameters 
# ------------
#   * a - an integer
#   * b - an integer
#
# TODO - write sum_double

def sum_double(a, b)
	if a != b
		return a + b
	else
		return a * 2 + b * 2
	end
end


# *****************************************************
#
#   Testing
#
#     Write the three methods below, but this time the
#     tests are not given to you, so write those first.
#
# *****************************************************


# blackjack
#
# Given 2 int values greater than 0, return whichever value is nearest to 21 
# without going over. Return 0 if they both go over.
#
# > Parameters 
# ------------
#   * a - an integer
#   * b - an integer
#
# TODO - write blackjack (tests first)

def blackjack(a, b)
	if a < 21 && b < a
		return a
	elsif a < 21 && b < 21 && b > a
		return b
	elsif b > 21 && a < 21
		return a
	elsif a > 21 && b < 21
		return b
	elsif a > 21 && b > 21
		return 0
	elsif a == b
		return 0
	end
end

# n_twice
#
# Given a string and an int n, return a string made of the first and last n 
# chars from the string.
#
# Hint | Use string.slice
#      | http://ruby-doc.org/core-2.2.0/String.html#method-i-slice
#
# > Parameters 
# ------------
#   * str - a string with length at least n
#   * n   - an integer
#
# TODO - write n_twice (tests first)

def n_twice(str, n)
	a = str.slice!(n)
	b = str.slice!(n * -1)
	return "#{a}#{b}"
end

# close_far
#
# Given three ints, a b c, return true if one of b or c is "close" (differing 
# from a by at most 1), while the other is "far", differing from both other 
# values by 2 or more. Note: n.abs computes the absolute value of number n.
#
# > Parameters 
# ------------
#   * a - an integer
#   * b - an integer
#   * c - an integer
#
# TODO - write close_far (tests first)

def close_far(a, b, c)
	if (a - b).abs <= 1 && (a - c).abs <= 1
		return false
	end

	if (a - b).abs <= 1 && (a - c).abs >= 2
		return true
	elsif (a - c).abs <= 1 && (a - b).abs >= 2
		return true
	else
		return false
	end

end