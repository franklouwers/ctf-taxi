# Taxicab Geometry Solution

For the Oqton Hackaton 2022-05-25 CTF 🏴‍☠️

In Ruby, because Thijs hadn't received a Ruby solution yet ;)

## Run

`./run.rb`

## Tests

[RSpec](http://rspec.info) tests in [spec/taxi\_spec.rb](spec/taxi_spec.rb)

To run the tests, run `rspec spec/taxi_spec.rb` (if you don't have `rspec` yet, please run `bundle install`).

Also passes all Rubycop tests.

## Requirements

Requires Ruby >= 2.6 (for the 1.. array slice) on line 28 in [taxi.rb][lib/taxi.rb#L28].
