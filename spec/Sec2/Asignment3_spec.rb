=begin
    Answer all questions below. For questions that request code samples, 
    use the Code highlighter to format your code (it makes it easier to grade). 
    The highlighter is the last icon on the toolbar (it's the curly braces with dots inside them).
    
    Questions for this assignment

        1. By default, what will subject equal?
        2. How do you define a custom subject? Provide a code example.
        3. How does the described_class helper method work? What is the advantage of 
        using it over writing the class name out?
        4. Write an RSpec test for an array with 2 elements.
            a. Declare the subject to be [1, 2].
            b. Write an example that uses expect(subject) to test whether the array is equal to [1, 2].
            c. Write an example that uses the one-liner is_expected syntax.
            d. Which do you prefer?
        5. What's the difference between include_examples and include_context?
=end

=begin
    1.  subject is equal to the class object defined in the describe block
    2.  subject(:bob) { Hash.new }
    3.  it automatically captures the class name passed to the describe. 
        we don't have to think again about the change of class name or anything.
    
    4. 
        RSpec.describe Array do
            subject {described_class.new([1,2])}
            it 'should return an array with 2 elements' do
                expect(subject).to eq([1,2])
            end
            context 'writing the above example using one liner' do
                it {is_expected.to eq([1,2])}
            end
        end

    5.  I prefer the former (old style) as it is more readable and easy to understand.
    6.  include_example is used to run common set of examples for each describe block.
        include_context is mainly used to run the common business logic across different business block.
=end


=begin
By the autor of the course

        1.  By default, what will subject equal?
        --- An instance of the class under test.

        2.  How do you define a custom subject? Provide a code example.
        --- Invoke the subject method and provide a Ruby block.
            The final evaluation of the block will be the value of subject whenever it's used in an example.
            subject { "hello" }

        3.  How does the described_class helper method work? 
            What is the advantage of using it over writing the class name out?
        --- described_class dynamically references the class being tested 
            (the one passed as an argument to the top-level describe method). The advantage is that, 
            if the class name changes, the rest of the spec does not have to change.

        4.  Write an RSpec test for an array with 2 elements.

            a. Declare the subject to be [1, 2].
            b. Write an example that uses expect(subject) to test whether the array is equal to [1, 2].
            c. Write an example that uses the one-liner is_expected syntax.
            d. Which do you prefer?

        ----
                RSpec.describe 'some array' do
                    subject { [1, 2] }

                    it 'should be an array with 2 elements' do
                        expect(subject).to eq([1, 2])
                    end

                    it { is_expected.to eq([1, 2]) }
                end

        5.  What's the difference between include_examples and include_context?
        --- The include_examples method injects predefined examples into an example group.
            The include_context method injects context 
            (i.e. before blocks, instance variables, helper methods, let variables) into an example group.
            Both remove duplication across tests.
            
=end