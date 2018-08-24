def largestPrimeFactors(limit)
  current_number = 1
  factors = []

  while current_number <= (limit + 1) / 2
    if limit % current_number == 0
      factors << current_number
      current_number += 1
    else
      current_number += 1
    end
  end

  prime = false
  factors_eval = -1
  factor = factors[factors_eval]
  current_number = 2
  while prime == false
    if current_number == factor
      prime = true
    elsif factor % current_number == 0
      factors_eval = factors_eval - 1
      factor = factors[factors_eval]
      current_number = 2
    else
      current_number = current_number + 1
    end
  end
  puts factor.to_s
end

largestPrimeFactors(600851475143)
