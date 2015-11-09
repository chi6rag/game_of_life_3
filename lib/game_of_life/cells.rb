module GameOfLife
  class Cells
    def initialize(*cells)
      @cells = cells
    end

    def alive?
      @cells.each {|cell| return false unless cell.is_alive?}
      true
    end
  end
end