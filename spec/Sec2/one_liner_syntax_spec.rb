RSpec.describe 'Shorthand Syntax' do
    subject {5}

    context 'with classic syntax' do
        it 'should return 5' do
            expect(subject).to eq(5)
        end
    end

    context 'with one-liner syntax' do
        it {is_expected.to eq(5)}
    end
end