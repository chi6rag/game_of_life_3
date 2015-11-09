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
      [0, 0]
    end
  end
end