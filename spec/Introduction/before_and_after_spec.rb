describe "before and after hooks" do
    before(:context) do     # before and after (:context) hooks are executed only once 
                            # for the entire block of describe or context that it is defined in.
        puts "Before Context"
    end
    after(:context) do
        puts "After Context"
    end
    before(:example) do
        puts "Before example"
    end
    after(:example) do
        puts "After Example"
    end
    context "A" do
        it "is just a random example" do
            puts "Inside 1st Example"
            expect(5*4).to eq(20)
        end
    end
    context "B" do
        it "is just another random example" do
            puts "Inside 2nd Example"
            expect(5-3).to eq(2)
        end
    end
end