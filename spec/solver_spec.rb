require_relative '../solver'

RSpec.describe Solver do
  it 'should be an instance of Solver' do
    solver = Solver.new

    expect(solver).to be_an_instance_of(Solver)
  end
end
