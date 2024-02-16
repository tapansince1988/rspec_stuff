=begin
        1. Create a new ​array_spec.rb​ file.
        2. Create an example group using ​RSpec.describe​ with an argument of ​Array​.
            a. This represent Ruby's native Array class.
        3. Add an example with a docstring of your choice.
        4. Write an assertion that tests that the initial length of ​subject​ is 0. 
        5. In the same example, invoke the ​push​ method to add an element to the ​subject​ array.
        6. Write another assertion to check that the length of the array is now 1.

    Questions for this assignment

        Paste your complete code below.
        What does the subject helper method return?
        ---An instance of the class under test.
        Why is better to pass a class argument to the describe method instead of a string with the class name?
        ---With a class argument, RSpec is able to instantiate an instance of the class and make it lazily 
        available via the subject method.
=end

describe Array do
    it 'it starts with an empty array' do
        expect(subject.length).to eq(0)
        subject.push('Tapan')
        expect(subject.length).to eq(1)
    end
end