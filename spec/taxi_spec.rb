# frozen_string_literal: true

require 'taxi'
# RSpec tests, run with `rspec spec/taxi_spec.rb`

describe Taxi do
  context 'Given first sample path' do
    it 'return a path of 5' do
      taxi = Taxi.new
      path = 'R2, L3'
      expect(taxi.calculate_distance(path)).to eq(5)
    end
  end

  context 'Given second sample path' do
    it 'return a path of 2' do
      taxi = Taxi.new
      path = 'R2, R2, R2'
      expect(taxi.calculate_distance(path)).to eq(2)
    end
  end

  context 'Given third sample path' do
    it 'return a path of 12' do
      taxi = Taxi.new
      path = 'R5, L5, R5, R3'
      expect(taxi.calculate_distance(path)).to eq(12)
    end
  end
end
