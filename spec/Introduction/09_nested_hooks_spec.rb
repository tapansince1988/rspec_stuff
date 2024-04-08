describe "nested hooks" do
    before(:context) do
        puts "OUTER Before Context"
    end
    after(:context) do
        puts "OUTER after Context"
    end
    before(:example) do
        puts "OUTER before example"
    end
    after(:example) do
        puts "OUTER after example"
    end
    it "does basic math" do
        puts "inside 1st example"
    end
    context "with condition a" do
        before(:context) do
            puts "inner Before Context"
        end
        after(:context) do
            puts "inner after Context"
        end
        before(:example) do
            puts "inner before example"
        end
        after(:example) do
            puts "inner after example"
        end
        it "does some more basic math" do
            puts "inside nested 2nd example"
        end
    end
end