describe 'not_to method' do
    it 'checks that 2 values doesn\'t match' do
        # expect(5).not_to eq(5)
        expect('Hello').not_to eq('hello')
    end
end