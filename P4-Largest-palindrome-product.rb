# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# - - - - - - - - - - - - - - - - - - - #

palindrome = 0

(900..999).each do |num_i|
  (900..999).each do |num_j|
    product = num_i * num_j

    if product > palindrome
      numbers = product.to_s.split('')

      while numbers.any? && numbers.first == numbers.last
        numbers.shift && numbers.pop
      end

      palindrome = product if numbers.length < 2
    end
  end
end
