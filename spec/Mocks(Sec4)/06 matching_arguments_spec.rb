RSpec.describe 'matching matchers' do
    it 'can return different values depending on the arguments' do
        three_array_element = double    #[1,2,3]

        allow(three_array_element).to receive(:first).with(no_args).and_return(1)
        allow(three_array_element).to receive(:first).with(1).and_return([1])
        allow(three_array_element).to receive(:first).with(2).and_return([1,2])
        allow(three_array_element).to receive(:first).with(be >= 3).and_return([1,2,3])

        expect(three_array_element.first).to eq(1)
        expect(three_array_element.first(1)).to eq([1])
        expect(three_array_element.first(2)).to eq([1,2])
        expect(three_array_element.first(3)).to eq([1,2,3])
        expect(three_array_element.first(4)).to eq([1,2,3])
        expect(three_array_element.first(90)).to eq([1,2,3])
    end
end