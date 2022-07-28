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
end
