# Instance double are used to closely mimick the instance of a class.
# It doesnot allow the method declaration of extra methods that are not defined in the class
# It also checks for the method signature (arguments) defined in the class
class Person
    def a(seconds)
      sleep(seconds)
      "Hello"
    end
  end
  
  RSpec.describe Person do
    describe 'regular double' do
      it 'can implement any method' do
        person = double(a: "Hello", b: 20)
        expect(person.a).to eq("Hello")
      end
    end
  
    describe 'instance double' do
      it 'can only implement methods that are defined on the class' do
        # person = instance_double(Person, a: 'Hello', b: 20)
  
        person = instance_double(Person)
        allow(person).to receive(:a).with(3).and_return("Hello")
        expect(person.a(3)).to eq("Hello")
      end
    end
  
  end