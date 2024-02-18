# predicate methods are those which return a boolean value (true or false)
# these methods are easily identifiable by a question mark in the method.

# simple ruby predicate methods

# puts 0.zero?
# puts 15.zero?

# puts 2.even?
# puts 3.odd?

# puts [].empty?


describe 'predicate methods and predicate matchers' do
    it 'can be tested with ruby methods' do
        result = 16/2
        expect(result.even?).to be(true)
    end
    it 'can be tested with predicate matchers' do
        expect(16/2).to be_even
        expect(15).to be_odd
        expect(0).to be_zero
        expect([]).to be_empty
    end

    describe 0 do
        it {is_expected.to be_zero}
    end
end