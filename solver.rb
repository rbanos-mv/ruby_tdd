class NoNegativesException < StandardError
end

class Solver
  def factorial(number)
    raise NoNegativesException, 'No negative numbers allowed' if number.negative?

    return 1 if number.zero?

    number * factorial(number - 1)
  end

  def reverse(string)
    string.to_s.reverse
  end

  def fizzbuzz(number)
    result = ''
    result << 'fizz' if (number % 3).zero?
    result << 'buzz' if (number % 5).zero?
    result = number.to_s if result.empty?
    result
  end
end
