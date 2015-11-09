module GameOfLife
  RSpec.describe Cell do
    let(:cell){Cell.new(1, 1, true)}

    describe 'live neighbours' do
      let(:neighbour_one){Cell.new(0, 1, true)}
      let(:neighbour_two){Cell.new(2, 0, true)}
      let(:neighbour_three){Cell.new(0, 0, false)}

      xit 'for cell with 2 live neighbours has count 2' do
        neighbours = Cells.new(cell, neighbour_one, neighbour_two, neighbour_three)
        expect(cell.live_neighbours(neighbours).count).to eq(2)
      end

      it 'for a cell are alive' do
        neighbours = Cells.new(cell, neighbour_one, neighbour_two, neighbour_three)
        expect(cell.live_neighbours(neighbours).are_all_alive?).to eq(true)
      end
    end

    describe 'is alive' do
      it 'is true for cell which is alive' do
        expect(cell.is_alive?).to eq(true)
      end

      it 'is false for a cell which is not alive' do
        cell = Cell.new(1, 1, false)
        expect(cell.is_alive?).to eq(false)
      end
    end

    describe 'equality' do
      it 'is false when cell is compared to nil' do
        expect(cell == nil).to eq(false)
      end

      it 'is false when compared with non cell' do
        expect(cell == 1).to eq(false)
      end

      context 'of cell with x=1, y=1 and alive=true' do
        it 'is false when compared to cell with x=2, y=1 and alive=true' do
          other_cell = Cell.new(2, 1, true)
          expect(cell == other_cell).to eq(false)
        end

        it 'is true when compared to cell with x=1, y=1 and alive=true' do
          other_cell = Cell.new(1, 1, true)
          expect(cell == other_cell).to eq(true)
        end
      end

      it 'is of cell with other cell with same states is symmetric' do
        other_cell = Cell.new(1, 1, true)
        expect(other_cell == cell).to eq(true)
      end
    end

    describe 'hash' do
      it 'is same for two cells of same states' do
        other_cell = Cell.new(1, 1, true)
        expect(cell.hash).to eq(other_cell.hash)
      end

      it 'is different for two cells of different states' do
        other_cell = Cell.new(2, 1, true)
        expect(cell.hash).to_not eq(other_cell.hash)
      end
    end

  end
end