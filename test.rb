require './test_setup'
require './methods'

describe 'Methods' do

  describe 'sleep_in' do

    it 'should sleep in on the weekend at home' do
      sleep_in?(false, false).must_equal(true)
    end

    it 'should not sleep in during the week at home' do
      sleep_in?(true, false).must_equal(false)
    end

    it 'should sleep in on vacation on the weekend' do
      sleep_in?(false, true).must_equal(true)
    end

    it 'should sleep on vacation during the week' do
      sleep_in?(true, true).must_equal(true)
    end

  end
  
  describe 'monkey_trouble' do

    it 'is trouble when both monkeys are smiling' do
      monkey_trouble?(false, false).must_equal(true)
    end

    it 'is not trouble when only A is smiling' do
      monkey_trouble?(true, false).must_equal(false)
    end

    it 'is not trouble when only B is smiling' do
      monkey_trouble?(false, true).must_equal(false)
    end

    it 'is trouble when neither monkey is smiling' do
      monkey_trouble?(false, false).must_equal(true)
    end

  end

  describe 'sum_double' do
    
    it 'finds the sum' do
      sum_double(1, 2).must_equal(3)
    end

    it 'doubles the sum when the numbers are the same' do
      sum_double(3, 3).must_equal(12)
    end

  end

  describe 'blackjack' do

    it 'a is closer to 21' do
      blackjack(17, 22).must_equal(17)
    end

    it 'b is closer to 21' do
      blackjack(23, 19).must_equal(19)
    end

    it 'both are over' do
      blackjack(25, 23).must_equal(0)
    end

    it 'both are 21' do
      blackjack(21, 21).must_equal(0)
    end

  end

  describe 'n_twice' do

    it 'hello there' do
      n_twice('hello there', 4).must_equal('oh')
    end

  end

  describe 'close_far' do
    
    it 'b close to a' do
      close_far(10, 11, 15).must_equal(true)
    end

    it 'c close to a' do
      close_far(25, 23, 24).must_equal(true)
    end

    it 'all are close' do
      close_far(50, 51, 49).must_equal(false)
    end
    
    it 'nothing close' do
      close_far(45, 8, 60).must_equal(false)
    end
  end

end