module GameOfLife
  class Cell
    attr_reader :x, :y

    def initialize(x, y, is_alive)
      @x = x
      @y = y
      @is_alive = is_alive
    end

    def live_neighbours(cells)
      cells.live_cells
    end

    def is_alive?
      @is_alive
    end

    def ==(other)
      return false unless other.is_a?(Cell)
      return true if (has_same_x_coordinates?(other) &&
                      has_same_y_coordinates?(other) &&
                      has_same_alive_status?(other)
      )
      false
    end

    def hash
      [@x, @y, @is_alive].hash
    end

    private
    def has_same_x_coordinates?(other)
      self.x == other.x
    end

    def has_same_y_coordinates?(other)
      self.y == other.y
    end

    def has_same_alive_status?(other)
      self.is_alive? == other.is_alive?
    end

  end
end