class ProffessionalWrestler
    attr_accessor :name, :finishing_move
    def initialize (name, finishing_move)
        @name, @finishing_move = name, finishing_move
    end
end

describe 'have_attributes matcher' do
    describe ProffessionalWrestler.new('Stone Cold Steve Austin', 'Stunner') do
        it 'checks for object attribute and proper values' do
            expect(subject).to have_attributes(name: 'Stone Cold Steve Austin')
            expect(subject).to have_attributes(finishing_move: 'Stunner')
            expect(subject).to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner')
        end
        it {is_expected.to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner')}
    end
end