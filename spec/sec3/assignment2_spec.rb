=begin
Questions for this assignment

    1.  Write a compound expectation that asserts the string firetruck starts with the substring
        "fire" and ends with the substring "truck".

    2.  Write a compound expectation that asserts that the number 20 is even and that it 
        responds to the times mthod.

    3.  Write a compound expectation that asserts that the array [4, 8, 15, 16, 23, 42] 
        includes the value 42 and starts with the values 4, 8, and 15.
=end
describe 'firetruck' do
    it 'starts and ends with a definite string' do
        expect(subject).to start_with('fire').and end_with('truck')
    end
end
describe 'number' do
    it 'to be even and responds to times method' do
        expect(20).to be_even.and respond_to(:times)
    end
end
describe [4, 8, 15, 16, 23, 42] do
    it 'to include 42 and starts with 4, 8, 15' do
        expect(subject).to include(42).and start_with(4, 8, 15)
    end
end

=begin
Form the author

    describe 'firetruck' do
        it 'has two substrings' do
            expect(subject).to start_with('fire').and end_with('truck')
        end
    end
    describe 20 do
        it 'is even and responds to the times method' do
            expect(subject).to be_even.and respond_to(:times)
        end
    end
    describe [4, 8, 15, 16, 23, 42] do
        it 'includes and excludes values' do
            expect(subject).to include(42).and start_with(4, 8, 15)
        end
    end
=end