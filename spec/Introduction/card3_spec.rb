require 'spec_helper'

class Card
    # attr_reader :rank, :suite
    attr_accessor :rank, :suite
    def initialize(rank, suite)
        @rank = rank
        @suite = suite
    end
end

describe Card do

    # Using let keyword to instanciate card object.
    # Let doesnot re-initiate when changing the value
    # Let works with something called memorization and not like helper function
    # let initiate the variable each time for each test / expample (like hooks)
    let(:card) {Card.new('Ace', 'Spade')}

    # let variable can be used inside another let
    # let(:x) {1 + 1}
    # let(:y) {x + 10}
    # let!(:z) {y - 2}    to ensure that a let object is created before running the test (not lazy loading)
    
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
end