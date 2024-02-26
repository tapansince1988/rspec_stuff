class Deck
    def self.build
        # Buisness logic to build whole bunch of cards
    end
end
class CardGame
    attr_reader :cards
    def start
        @cards = Deck.build
    end
end

RSpec.describe CardGame do
    it 'can only implement class methods that are defined on a class' do
        # we cannot define a method in the class double that is not defined in the class
        # class_double(Deck, :build => ['Ace', 'Queen'], suffle: ['queen', 'ace'])
        deck_class = class_double(Deck, :build => ['Ace', 'Queen']).as_stubbed_const
        expect(deck_class).to receive(:build)
        subject.start
        expect(subject.cards).to eq(['Ace', 'Queen'])
    end
end