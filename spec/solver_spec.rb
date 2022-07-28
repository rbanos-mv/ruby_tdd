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
end
