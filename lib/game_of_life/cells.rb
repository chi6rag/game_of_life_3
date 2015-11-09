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
      live_cells = @cells.select{|cell| cell.is_alive?}
      Cells.new(*live_cells)
    end

    def reject_cell(other_cell)
      return self unless @cells.include?(other_cell)
      remaining_cells = cells_after_rejection_of(other_cell)
      Cells.new(*remaining_cells)
    end

    private
    def cells_after_rejection_of(other_cell)
      @cells.reject{|cell| cell == other_cell}
    end
    
  end
end