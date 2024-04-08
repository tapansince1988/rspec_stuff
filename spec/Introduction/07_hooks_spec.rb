    # require 'spec_helper'         # says find the file based on your path of execution
                                    # i.e. form where you are running/executing the file
                                    # from perspective of your execution or standing path 

require_relative '../spec_helper'       # says find the file based on my path of execution
                                        # i.e. find form where the file path where the code is written
                                        # from perspective of your file path executed

class Card
    attr_reader :rank, :suite
    def initialize(rank, suite)
        @rank = rank
        @suite = suite
    end
end

describe Card do

    # before do             Similar to the line below
    # before(:example) do
    # before(:suite) do     Runs before the entire suite
    # before(:context) do   Runs before every describe block

    before do
        @card = Card.new('Ace', 'Spade')
    end

    # card = Card.new('Ace', 'Spade')
    it 'has a rank' do
        expect(@card.rank).to eq('Ace')
    end
    it 'has a suite' do
        expect(@card.suite).to eq('Spade')
    end
end