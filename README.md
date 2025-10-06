# ruby katas

my collection of algorithm challenges solved in ruby. practicing data structures, algorithms, and problem-solving.

## what's here

various algorithm problems and solutions:
- **trapped_water.rb** - calculate water trapped between elevation peaks (two-pointer technique)

## setup

```bash
# no dependencies needed, just ruby
ruby --version  # should be 3.0+
```

## running solutions

```bash
# run individual kata with tests
ruby trapped_water.rb
```

## how they work

each file contains:
- the solution function (importable)
- test cases using shared test helper
- runs tests automatically when executed directly

example:
```ruby
def trapped_water(heights)
  # solution here
end

if __FILE__ == $0
  require_relative 'test_helper'
  it "should calculate water for complex terrain", 13, trapped_water([0,1,3,0,1,2,0,4,2,0,3,0])
  # more tests...
end
```

## adding new katas

1. create a new `.rb` file with your solution function
2. add test cases using `require_relative 'test_helper'`
3. use `it "should ...", expected, actual` for tests
4. run it to verify

## topics covered

- array manipulation
- two-pointer technique
- greedy algorithms

## why ruby

- clean syntax for focusing on logic
- great for prototyping solutions quickly
- minimal test setup
- fun to write
