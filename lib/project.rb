class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer  #=> backer is a Backer instance.
    backer.backed_projects << self  #calling instance method from Backer class with our Backer instance.
  end


end

# awesome = Project.new("this is great")