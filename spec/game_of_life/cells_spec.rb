module GameOfLife
  RSpec.describe Cells do
    let(:cell_one){Cell.new(0, 0, true)}
    let(:cell_two){Cell.new(1, 0, true)}

    describe 'are all alive' do
      it 'is true if all cells are alive' do
        cell_three = Cell.new(2, 0, true)
        cells = Cells.new(cell_one, cell_two, cell_three)
        expect(cells.are_all_alive?).to eq(true)
      end

      it 'is false if any cell is dead' do
        cell_three = Cell.new(2, 0, false)
        cells = Cells.new(cell_one, cell_two, cell_three)
        expect(cells.are_all_alive?).to eq(false)
      end
    end

    it 'count for collection with zero cells is zero' do
      cells = Cells.new
      expect(cells.count).to eq(0)
    end

    it 'count for collection with two cells is two' do
      cells = Cells.new(cell_one, cell_two)
      expect(cells.count).to eq(2)
    end

    describe 'live cells' do
      it 'are two for a collection of two live cells' do
        cells = Cells.new(cell_one, cell_two)
        expect(cells.live_cells.count).to eq(2)
      end
    end
  end
end