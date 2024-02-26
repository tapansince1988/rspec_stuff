RSpec.describe 'spies' do
    let(:animal) {spy('animal')}
    it 'confirms that a message has been received' do
        animal.eat_food
        expect(animal).to have_received(:eat_food)
        expect(animal).not_to have_received(:eat_human)
        # expect(animal).to have_received(:eat_human)
        # Line above will fail as we didnot invoke methot eat_human like we did for eat_food in line 4
    end
    it 'resets between examples' do
        expect(animal).not_to have_received(:eat_food)
    end
    it 'retains the same functionality of a regular double' do
        animal.eat_food
        animal.eat_food
        animal.eat_food('Sushi')
        expect(animal).to have_received(:eat_food).exactly(3).times
        expect(animal).to have_received(:eat_food).at_least(3).times
        expect(animal).to have_received(:eat_food).with('Sushi')
        expect(animal).to have_received(:eat_food).once.with('Sushi')
    end
end