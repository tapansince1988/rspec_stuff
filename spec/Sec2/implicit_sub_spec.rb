# Implicite Subject is a variable already created by rspec 
# which is used to instantiate the class that we define in describe block
describe Hash do
    # let(:my_hash) {Hash.new}      Line this and below is same
    # let(:subject) {Hash.new}      RSpec already provides us with the default object called subject
    #                               hence we can directly start from below

    it 'should start of empty' do
        expect(subject.length).to eq(0)
    end
    # This test passes as object called 'subject' is already abailble to us
    it 'output the subject and its class' do
        puts subject
        puts subject.class
    end
end