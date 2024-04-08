require 'spec_helper'

class Card
    attr_accessor :rank, :suite
    def initialize(rank, suite)
        @rank = rank
        @suite = suite
    end
end

describe Card do
    let(:card) {Card.new('Ace', 'Spade')}
    
    it 'has a rank' do
        expect(card.rank).to eq('Ace')
    end
    it 'rank can be changed' do
        expect(card.rank).to eq('Ace')
        card.rank = 'Queen'
        expect(card.rank).to eq('Queen')
    end
    it 'has a suite' do
        expect(card.suite).to eq('Spade')
    end
    it 'has a custom error message' do
        comparision = "Spades"
        expect(card.suite).to eq(comparision), "Hey I expected '#{comparision}', but I got '#{card.suite}' instead!"
    end
end