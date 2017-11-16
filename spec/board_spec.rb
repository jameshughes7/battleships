require 'board'

describe Board do
  subject(:board) { described_class.new }

  describe 'initialize' do
    it 'should initialize board object from the Board class' do
      expect(board).to be_instance_of(Board)
    end

    it 'should create a 10x10 grid on the board' do
      expect(board.display_board).to(be_a(Array))
    end

  end
end
