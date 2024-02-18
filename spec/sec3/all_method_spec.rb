describe 'all matchers' do
    it 'check all values are odd' do
        # [5,7,9].each do |val|
        #     expect(val).to be_odd
        # end
        # the below example is same as the above one
        expect([5,7,9]).to all(be_odd)
        expect([4,6,8]).to all(be_even)
        expect([[],[],[]]).to all(be_empty)
        expect([0,0]).to all(be_zero)
        expect([5,7,9]).to all(be<10)
    end
    describe [5,7,9] do
        it {is_expected.to all(be_odd)}
        it {is_expected.to all(be<10)}
    end
    it 'to show the error message' do
        expect([3, 7, 8]).to all(be_odd)
    end
end