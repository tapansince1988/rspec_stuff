describe "#even? method" do
    # it "should return true if number is even"
    # it "should return false if number is not even"

    # describe "with even number" do
    context "with even number" do       #context is same as describe behind the scene in rspec but is more elegent and readable
        it "should return true" do
            # expect(4.even?).to be true
            expect(4.even?).to be_truthy
        end
    end

    # describe "with odd number" do
    context "with odd number" do
        it "should return false" do
            # expect(4.even?).to be false
            expect(5.even?).to be_falsy
        end
    end
end