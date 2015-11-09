module GameOfLife
  class Cells
    def initialize(*cells)
      @cells = cells
    end

    def alive?
      true
    end
  end
end