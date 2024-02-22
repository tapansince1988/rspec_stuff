describe 'change matcher' do
    subject {[1,2,3]}
    it 'checks that object state changes using from and to method' do
        expect{subject.push(4)}.to change {subject.length}.from(3).to(4)
    end
    # above examply is not suitable for array (object) which form (length) is changed dynamically
    it 'checks that object state changes using the by method' do
        expect{subject.push(5)}.to change{subject.length}.by(1)
    end

    # checking negative change
    it 'check the object length is reduced (negative argument) using by method' do
        # expect{subject.pop}.to change{subject.length}.from(3).to(2)
        expect{subject.pop}.to change{subject.length}.by(-1)
    end
end