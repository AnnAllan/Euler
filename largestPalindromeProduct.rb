def largest_palindrome_product(number_of_digits)
  start = ("9" * number_of_digits).to_i
  multiplier1 = start
  multiplier2 = start
  max_product = 0
  while multiplier1 >= 1
    while multiplier2 >= 1
      prod = (multiplier1 * multiplier2)
      if (prod.to_s == prod.to_s.reverse)  && (prod > max_product)
        max_product = prod
      end
      multiplier2 -=1
    end
    multiplier2 = start
    multiplier1 -=1
  end
  puts max_product
end

largest_palindrome_product(3)
