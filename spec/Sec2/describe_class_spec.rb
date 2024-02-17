# "described_class" is used to dynamically instanciate the class without using the class name
# this is so that if in future the class name is changed it has no effect on the code of instanciation.

class King
# class Royal         class name changing to 'Royal'
# class Prince        class name changed to 'Prince'
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

describe King do
# describe Royal do        class name when changed to 'Royal'
# describe Prince do        class name when changed to 'Prince'
    # subject {King.new('Boris')}
    subject {described_class.new('Boris')}              # Same as above, but can find the class when the class name changes
    # let(:louis) {King.new('Louis')}
    let(:louis) {described_class.new('Louis')}          # Same as above, but can find the class when the class name changes

    it 'represents a great person' do
        expect(subject.name).to eq('Boris')
        expect(louis.name).to eq('Louis')
    end
end