describe 'include matcher' do
    context 'hot chocolate' do
        it 'checks substring inclusion' do
            expect(subject).to include('hot')
            expect(subject).to include('choc')
            expect(subject).to include('late')
        end
        it {is_expected.to include('choc')}
    end
    describe [10, 20, 30] do
        it 'checks the inclusion in the array, regardless of the order' do
            expect(subject).to include(10)
            expect(subject).to include(10,20)
            expect(subject).to include(30, 10)
        end
        it {is_expected.to include(10)}
    end
    # rspec has abit difficulty identifying a hash and hence we put it inside parenthesis
    describe ({a: 1, b:2, c: 3}) do
        it 'can check for a exixtance of key' do
            expect(subject).to include(:a)
            expect(subject).to include(:a, :b)
            expect(subject).to include(:c, :a)
        end
        it 'can also check for existance of key-value pair' do
            expect(subject).to include(a: 1)
            expect(subject).to include(c: 3, a: 1)
        end
        it 'can not check for existance of value alone' do
            expect(subject).to include(1)
        end
    end
end