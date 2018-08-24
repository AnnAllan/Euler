def mult(int1, int2, limit)
  mults  = []
  i = 1
  while i < limit do
    if (i % int1 == 0) || (i % int2 == 0 )
      mults << i
    end
    i += 1
  end
  puts mults.inject(0) {|sum, x| sum + x}
end

mult(3,5,10)
mult(3,5,10000)
