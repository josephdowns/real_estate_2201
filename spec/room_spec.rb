require './lib/room'

RSpec.describe Room do
  context "Iteration 1" do
    it "exists" do
      room = Room.new(:bedroom, 10, '13')
      expect(room).to be_an_instance_of(Room)
    end

    it "has a category" do
      room = Room.new(:bedroom, 10, '13')
      expect(room.category).to eq(:bedroom)
    end

    it "can get area" do
      room1 = Room.new(:bedroom, 10, '13')
      room2 = Room.new(:living_room, 15, '12')
      expect(room1.find_area).to eq(130)
      expect(room2.find_area).to eq(180)
    end
  end
end
