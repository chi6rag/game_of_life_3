module GameOfLife
  class Cell
    def initialize(x, y, is_alive)
      @is_alive = is_alive
    end

    def live_neighbours(cells)
      [Cell.new(10, 10, false), Cell.new(10, 10, false)]
    end

    def is_alive?
      @is_alive
    end
  end
end