class User
  attr_accessor :name
  # attr_accessor gives you both of these:
  # def name
  # def name=(name)

  def initialize(name = "Don")
    @name = name
  end

  # Overrides default reader
  # # user.name
  # # => "some name"
  def name
    "#{@name} Johnson"
  end

  # Overrides default setter
  # # user.name = "some name"
  def name=(n)
    @name = n.capitalize
  end


end
