class ProgrammingLanguage
    attr_accessor :name
    def initialize(name = 'Ruby')
        @name = name
    end
end

describe ProgrammingLanguage do
    let(:language) {ProgrammingLanguage.new('Python')}
    it 'should store the name of the language' do
        expect(language.name).to eq('Python')
    end
    context 'without passing initialize value of the class' do
        let(:language) {ProgrammingLanguage.new}
        it 'should default to Ruby' do
            expect(language.name).to eq('Ruby')
        end
    end
    context 'another example after the context of overwriting' do
        it 'should again get the language as Python' do
            expect(language.name).to eq('Python')
        end
    end
end