# frozen_string_literal: true

class Taxi
  # Implements a taxi, driving in a US-style chessboard-city center

  def initialize
    @heading = []
    @heading[0] = [0, 1]
    @heading[90] = [1, 0]
    @heading[180] = [0, -1]
    @heading[270] = [-1, 0]
    @current_position = { x: 0, y: 0, heading: 0 }
  end

  def calculate_distance(path)
    ## Calculates block-distance, as described on https://oqton-taxicab.surge.sh/readme.txt

    traverse_path(path)

    @current_position[:x].abs + @current_position[:y].abs
  end

  private

  def traverse_path(path)
    path.split(/,\s*/).each do |step|
      direction = step[0]
      count = step[1..].to_i

      rotate(direction)
      step(count)
    end
  end

  def rotate(direction)
    case direction
    when 'L'
      @current_position[:heading] -= 90
    when 'R'
      @current_position[:heading] += 90
    else
      raise "Incorrect direction #{direction}"
    end
    @current_position[:heading] %= 360 # full circles
  end

  def step(count)
    @current_position[:x] += count * @heading[@current_position[:heading]][0]
    @current_position[:y] += count * @heading[@current_position[:heading]][1]
  end
end
