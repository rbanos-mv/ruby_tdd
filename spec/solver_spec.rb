require_relative '../solver'

RSpec.describe Solver do
  it 'should be an instance of Solver' do
    solver = Solver.new

    expect(solver).to be_an_instance_of(Solver)
  end

  context 'When testing the method factorial' do
    it 'should throw an NoNegativesException when factorial of a negative number' do
      solver = Solver.new

      expect { solver.factorial(-1) }.to raise_error(NoNegativesException)
    end

    it 'should return 1 when factorial(0)' do
      solver = Solver.new

      result = solver.factorial(0)

      expect(result).to be 1
    end

    it 'should return 1 when factorial(1)' do
      solver = Solver.new

      result = solver.factorial(1)

      expect(result).to be 1
    end

    it 'should return 120 when factorial(5)' do
      solver = Solver.new

      result = solver.factorial(5)

      expect(result).to be 120
    end
  end

  context 'When testing the method reverse' do
    it "should return 'edcba' when reverse('abcde')" do
      solver = Solver.new

      result = solver.reverse('abcde')

      expect(result).to eq 'edcba'
    end

    it "should return '54321' when reverse(12345)" do
      solver = Solver.new

      result = solver.reverse(12_345)

      expect(result).to eq '54321'
    end
  end

  context 'When testing the method fizzbuzz' do
    it "should return '1' when fizzbuzz(1)" do
      solver = Solver.new

      result = solver.fizzbuzz(1)

      expect(result).to eq '1'
    end

    it "should return 'fizz' when fizzbuzz(3)" do
      solver = Solver.new

      result = solver.fizzbuzz(3)

      expect(result).to eq 'fizz'
    end

    it "should return 'buzz' when fizzbuzz(5)" do
      solver = Solver.new

      result = solver.fizzbuzz(5)

      expect(result).to eq 'buzz'
    end

    it "should return 'fizz' when fizzbuzz(15)" do
      solver = Solver.new

      result = solver.fizzbuzz(15)

      expect(result).to eq 'fizzbuzz'
    end
  end
end
