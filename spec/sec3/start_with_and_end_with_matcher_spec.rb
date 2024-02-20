describe 'start_with and end-with' do
    context 'caterpillar' do
        it 'check for the substring at the begening of the string' do
            expect(subject).to start_with('cat')
        end
        it 'check for the substring at the end of the string' do
            expect(subject).to end_with('pillar')
        end
        it {is_expected.to start_with('cat')}
        it {is_expected.to end_with('pillar')}
    end
    context [:a, :b, :c, :d] do
        it 'should check for elements at the begening of the array' do
            expect(subject).to start_with(:a)
            expect(subject).to start_with(:a, :b)
        end
        it 'should check for elements at the end of the array' do
            expect(subject).to end_with(:d)
            expect(subject).to end_with(:c, :d)
        end
        it {is_expected.to start_with(:a, :b, :c)}
        it {is_expected.to end_with(:b, :c, :d)}
    end
end