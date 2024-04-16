# mock means to emulate something

RSpec.describe "a random double" do
    it 'allows defined methods to be invoked' do
        # stuntman = double("Mr. Danger", fall_of_lader: 'Ouch', :light_on_fire => true)
        # expect(stuntman.fall_of_lader).to eq('Ouch')
        # expect(stuntman.light_on_fire).to be_truthy

        # stuntman = double('Mr. Danger')
        # allow(stuntman).to receive(:fall_of_lader) # by default it returns nil if no return is provided
        # expect(stuntman.fall_of_lader).to be_nil
        # allow(stuntman).to receive(:fall_of_lader).and_return('Ouch')
        # expect(stuntman.fall_of_lader).to eq('Ouch')
        # # The syntax above is very good and we get lots of room to dynamically assign method but it gets really long and overdone

        stuntman = double('Mr. Danger')
        allow(stuntman).to receive_messages(:fall_of_lader => 'Ouch', light_on_fire: true)
        expect(stuntman.fall_of_lader).to eq('Ouch')
        expect(stuntman.light_on_fire).to be_truthy
    end
end
