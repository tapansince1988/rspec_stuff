=begin
    1. Create a new ​array_2_spec.rb​ file.
    2. Create an example group using ​RSpec.describe​ with an argument of ​Array​.
    3. Invoke the ​subject​ method outside of any example.
        a. Give the subject a name of ​:sally.
        b. Inside the block, declare a 2-element array with bracket syntax.
    4. Add an example that tests that the ​subject​ has a length of 2. 
    5. Invoke the ​pop method to remove an element from the ​subject​ array. 
    6. In the same example, write another assertion to check that the length of the array is now 1.
    7. In a second, separate example, write an assertion to confirm that ​sally​ is equal to the original array.

    Questions for this assignment
        Paste your complete code below.
=end

RSpec.describe Array do
    subject(:sally) do
        [1,2]
    end
    # subject(:sally) {[1,2]}   same as above
    it 'array initially should have lenght of 2' do
        expect(subject.length).to eq(2)
        subject.pop
        expect(subject.length).to eq(1)
    end
    it 'sally is same/alias of subject' do
        expect(sally.length).to eq(2)
    end
end