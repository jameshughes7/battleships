require 'game'

describe Game do
subject(:game) { described_class.new }

  describe '#initialize' do
    it 'should be able to create a new game' do
      board = Board.new
      expect(game).to be_instance_of(Game)
      expect(board).to be_instance_of(Board)
    end

    describe '#gameplay' do
      it 'should not allow for a move that is out of bounds' do
        board = Board.new
        expect(game.out_of_bounds?(11,5)).to eq(true)
      end

      it 'should not allow move if space is already taken' do
        board = Board.new
        game.move(5,5,'x')
        expect(game.space_taken?(5,5)).to eq(true)
      end
    end
  end
end
