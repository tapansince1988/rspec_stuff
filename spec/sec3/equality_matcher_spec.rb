describe 'equality matchers' do
    let(:a) {3.0}
    let(:b) {3}
    context 'eq matchers' do
        it 'test for values a ignores types' do
            expect(a).to eq(3)
            expect(b).to eq(3.0)
            expect(a).to eq(b)
        end
    end
    context 'eql matchers' do
        it 'test for value, including same type' do
            expect(a).not_to eq(3)
            expect(b).not_to eq(3.0)
            expect(a).not_to eq(b)

            expect(a).to eq(3)      # doesn't fail here as it is automatically type cast
            expect(b).to eq(3.0)    # doesn't fail here as it is automatically type cast
            expect(a).to eql(b)     # fails here as type of b is float
        end
    end
    context 'equal or the be matcher' do
        let(:c) {[1,2,3]}
        let(:d) {[1,2,3]}
        let(:e) {c}

        # c and d here above are equal but not identical (same) as they have different memory location
        # c and e are equal and identical (same) as they have same value and are in the same memory location
        # similarly d and e are also not identical (same) but are equal

        # equality means that 2 thinks looks the same
        # identity means that they are the same thing

        it 'cares about equal identity (same object)' do
            expect(c).to eq(d)      # passes becoz both values are equal
            expect(c).to eql(d)     # passes becoz both types are equal
            expect(c).to equal(d)   # fails becoz memory location is different
            expect(c).to equal(e)   # passes becoz memory location is same.
            expect(c).to be(e)      # same as writing one step above.
            expect(c).not_to equal(d)
            expect(c).to equal([1,2,3]) # fails as both are different object in memory
        end
    end
end