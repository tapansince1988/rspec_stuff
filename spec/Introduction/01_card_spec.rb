require_relative '../spec_helper'

class Card
    attr_reader :rank, :suite
    def initialize(rank, suite)
        @rank = rank
        @suite = suite
    end
end

describe Card do
    card = Card.new('Ace', 'Spade')
    it 'has a rank' do
        expect(card.rank).to eq('Ace')
    end
    it 'has a suite' do
        expect(card.suite).to eq('Spade')
    end
end