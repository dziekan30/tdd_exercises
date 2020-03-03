require 'rspec'
class ChangeMachine
  
  def change(number)
    array = []

    # if number > 5 && number < 10
    #   example = number % 5
    #   Array.new(example, 1)
    #   array.push(5, Array.new(example, 1)).flatten
    if  number == 10
       [10]
    elsif number == 5
      array << number
    elsif number < 5
       Array.new(number, 1)
    else number > 5 && number < 10 
      p "=" * 30
        remainder = (number - 5)
       p array << 5
        array << (Array.new(remainder, 1)).flatten
    end
  end
end



RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end

    it 'should return [1,1] when given 2' do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1,1])
    end

    it 'should return [1,1,1] when given 3' do
      machine = ChangeMachine.new
      expect(machine.change(3)).to eq([1,1,1])
    end

    it 'should return [1,1,1,1] when given 4' do
      machine = ChangeMachine.new
      expect(machine.change(4)).to eq([1,1,1,1])
    end

    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq([5])
    end

    it 'should return [5, 1] when given 6' do
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5, 1])
    end

    it 'should return [5, 1, 1] when given 7' do
      machine = ChangeMachine.new
      expect(machine.change(7)).to eq([5, 1, 1])
    end

    it 'should return [5, 1, 1, 1] when given 8' do
      machine = ChangeMachine.new
      expect(machine.change(8)).to eq([5, 1, 1, 1])
    end

    it 'should return [5, 1, 1, 1, 1] when given 9' do
      machine = ChangeMachine.new
      expect(machine.change(9)).to eq([5, 1, 1, 1, 1])
    end

    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      expect(machine.change(10)).to eq([10])
    end

    # it 'should return [25, 25, 25, 25] when given 100' do
    #   machine = ChangeMachine.new
    #   expect(machine.change(100)).to eq([25, 25, 25, 25])
    # end 

  end
end
