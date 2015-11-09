module GameOfLife
  RSpec.describe Cell do
    let(:cell){Cell.new(1, 1, true)}

    describe 'live neighbours' do
      it 'for cell with 2 live neighbours has count 2' do
        neighbour_one   = Cell.new(0, 1, true)
        neighbour_two   = Cell.new(2, 0, true)
        neighbour_three = Cell.new(0, 0, false)
        cells = [cell, neighbour_one, neighbour_two, neighbour_three]
        expect(cell.live_neighbours(cells).count).to eq(2)
      end
    end

    describe 'is alive' do
      it 'is true for cell which is alive' do
        expect(cell.is_alive?).to eq(true)
      end
    end
  end
end