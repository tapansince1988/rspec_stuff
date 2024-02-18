describe 'start_with and end-with' do
    context 'caterpillar' do
        it 'check for the substring at the begening of the string' do
            expect(subject).to start_with('cat')
        end
    end
end