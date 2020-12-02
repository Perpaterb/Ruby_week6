require 'rspec/autorun'

class Calcucator
    def add(a,b)
        a+b
    end
end



describe Calcucator do
    it "add 2 numbers" do
        calcucator = Calcucator.new
        expect(calcucator.add( 4, 6)).to eq(10)
    end
end


