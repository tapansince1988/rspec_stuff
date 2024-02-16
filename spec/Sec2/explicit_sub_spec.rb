# Overwriding the subject helper function.

describe Hash do
    subject do
        {a: 1, b: 2}
    end
    # we can assign alias to a subject which we can use for overwriting as below
    # subject(:bob) do
    #     {a: 1, b: 2}
    # end

    it 'has 2 key-value pair' do
        expect(subject.length).to eq(2)
    end
    it 'change the hash and add 1 more key-value pair' do
        subject[:c]=3
        expect(subject.length).to eq(3)
    end
end