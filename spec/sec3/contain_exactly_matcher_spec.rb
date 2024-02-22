# contain_exactly matcher checks of exact content (values not type)
# it doesn't care about the order of the content
# it will through error if there is less or more values in the given matching object

describe 'contain_exactly matcher' do
    subject {[1,2,3]}

    it 'should check for the presence of all objects' do
        expect(subject).to contain_exactly(1,2,3)
        expect(subject).to contain_exactly(3,2,1)
        expect(subject).to contain_exactly(3,1,2)
        expect(subject).to contain_exactly(2,3,1)
    end
    it 'should through error if the given object is less' do
        expect(subject).to contain_exactly(1,2,3,4)
    end
    it 'should through error if the given object is more' do
        expect(subject).to contain_exactly(1,2)
    end
    it {is_expected.to contain_exactly(1,2,3)}
    it {is_expected.to contain_exactly(3,1,2)}
    it {is_expected.to contain_exactly(2,3,1)}
end