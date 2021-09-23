require 'tower_of_hanoi'

describe TowerOfHanoi do 
    subject(:towers){TowerOfHanoi.new}
       describe "#move" do
            it "can move to an empty array" do
                expect{towers.move(0, 1)}.to_not raise_error 
            end
            it "can only move to a larger disc" do
                expect(towers.move)
            end
        end
end