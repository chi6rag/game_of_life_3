module GameOfLife
  RSpec.describe Cells do
    describe 'alive' do
      it 'is true if all cells are alive' do
        cell_one   = Cell.new(0, 0, true)
        cell_two   = Cell.new(1, 0, true)
        cell_three = Cell.new(2, 0, true)
        cells = Cells.new(cell_one, cell_two, cell_three)
        expect(cells.alive?).to eq(true)
      end
    end
  end
end