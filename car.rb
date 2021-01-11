class Car
  attr_accessor :year, :make, :model, :trim

  def initialize(args={})
    @year = args[:year]
    @make = args[:make]
    @model = args[:model]
    @trim = args[:trim]
  end
  
  def normalize_car
    year_normalized
    make_normalized
    model_normalized
    trim_normalized
    create_car_hash
  end

  private

  def year_normalized
    valid_range = (1900..Time.now.year+2)
    @year = @year.to_i if valid_range.cover?(@year.to_i)
  end

  def make_normalized
    makes = ["Ford", "Chevrolet"]
    matched_make = makes.select{|make| make.start_with?(@make.capitalize)}.first
    @make = matched_make if matched_make
  end

  def model_normalized
    return if @model == 'foo'
    model_ary = @model.split(" ")
    @trim = model_ary.last.upcase if model_ary.count > 1
    @model = model_ary.first.capitalize
  end

  def trim_normalized
    if @trim == 'blank'
      @trim = nil
    elsif @trim == 'st'
      @trim = @trim.upcase
    end
  end

  def create_car_hash
    instance_variables.each_with_object({}) { |var, hash| hash[var.to_s.delete("@").to_sym] = instance_variable_get(var) }
  end
  
end