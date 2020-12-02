require 'rspec/autorun'

class Test

    def score(dice)
        p "hello"
        return 0
        # Fill me in!
    end

end



describe "Scorer Function" do
    it "should value this as worthless" do
      Test.expect( score( [2, 3, 4, 6, 2] ) == 0,   "Should be 0 :-(" );
    end
    
    it "should value this triplet correctly" do
      Test.expect( score( [2, 2, 2, 3, 3] ) == 200, "Should be 200" );
    end
    
    it "should value this mixed set correctly" do
      Test.expect( score( [2, 4, 4, 5, 4] ) == 450, "Should be 450" );
    end
  end

