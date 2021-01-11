# RUBY_VERSION: ruby 2.7.2p137

require_relative './car.rb'

def normalize_data(input)
  car = Car.new(input)
  car.normalize_car
end

examples = [
  [{ :year => '2018', :make => 'fo', :model => 'focus', :trim => 'blank' },
   { :year => 2018, :make => 'Ford', :model => 'Focus', :trim => nil }],
  [{ :year => '200', :make => 'blah', :model => 'foo', :trim => 'bar' },
   { :year => '200', :make => 'blah', :model => 'foo', :trim => 'bar' }],
  [{ :year => '1999', :make => 'Chev', :model => 'IMPALA', :trim => 'st' },
   { :year => 1999, :make => 'Chevrolet', :model => 'Impala', :trim => 'ST' }],
  [{ :year => '2000', :make => 'ford', :model => 'focus se', :trim => '' },
   { :year => 2000, :make => 'Ford', :model => 'Focus', :trim => 'SE' }]
]

examples.each_with_index do |(input, expected_output), index|
  if (output = normalize_data(input)) == expected_output
    puts "THE IF BRANCH"
    puts input
    puts expected_output
    puts index
    puts "Example #{index + 1} passed!"
  else
    puts "THE ELSE BRANCH"
    puts input
    puts expected_output
    puts index
    puts "Example #{index + 1} failed,
          Expected: #{expected_output.inspect}
          Got:      #{output.inspect}"
  end
end