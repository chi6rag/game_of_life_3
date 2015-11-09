module GameOfLife
  class Cells
    def initialize(*cells)
      @cells = cells
    end

    def are_all_alive?
      @cells.each {|cell| return false unless cell.is_alive?}
      true
    end

    def count
      @cells.count
    end

    def live_cells
      Cells.new(Cell.new(0, 0, true), Cell.new(0, 0, true))
    end
  end
end