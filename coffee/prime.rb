

def prime(bound)
  primes = []
  (0..bound).each do |prime|
    is_prime = true
    (0..(prime-1)).each do |divider|
      if prime % divider == 0
        is_prime = false
        break
      end
    if is_prime
      primes << prime
    end
  end
  return primes
end

primes = prime(50)

puts primes
