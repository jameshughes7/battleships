require 'game'

describe Game do
subject(:game) { described_class.new }
let(:board) {double :board}

  describe '#initialize' do
    it 'should be able to create a new game' do
      expect(game).to be_instance_of(Game)
    end

    describe '#gameplay' do
      it 'should not allow for a move that is out of bounds' do
        expect(game.out_of_bounds?(11,5)).to eq(true)
      end

      it 'should not allow move if space is already taken' do
        game.move(5,5,'x')
        expect(game.space_taken?(5,5)).to eq(true)
      end

      it 'should place ship vertically' do
        expect(game.place_ship_horizontally(0,0,1)).to include([1, nil, nil, nil, nil, nil, nil, nil, nil, nil])
      end

      it 'should place ship horizontally' do
        expect(game.place_ship_vertically(0,0,1)).to include([1, 1, 1, nil, nil, nil, nil, nil, nil, nil])
      end
    end
  end
end
