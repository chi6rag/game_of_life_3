module GameOfLife
  RSpec.describe Cells do
    let(:cell_one){Cell.new(0, 0, true)}
    let(:cell_two){Cell.new(1, 0, true)}

    describe 'alive' do
      it 'is true if all cells are alive' do
        cell_three = Cell.new(2, 0, true)
        cells = Cells.new(cell_one, cell_two, cell_three)
        expect(cells.alive?).to eq(true)
      end

      it 'is false if any cell is dead' do
        cell_three = Cell.new(2, 0, false)
        cells = Cells.new(cell_one, cell_two, cell_three)
        expect(cells.alive?).to eq(false)
      end
    end
  end
end