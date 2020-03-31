require 'pry'
class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project  #project is a Project instance.
    project.backers << self  #calling instance method from Project class with our Project instance.
  end
end

# bob = Backer.new("Bob")
# magic = Project.new("Magic Gathering")
# bob.back_project(magic)

# it 'also adds the backer to the project\'s backers array' do
#   logan = Backer.new("Logan")
#   hoverboard = Project.new("Awesome Hoverboard")
#   logan.back_project(hoverboard)

#   # If by this point, the project knows about a new backer, where does that mean
#   # some more magic needs to happen? There's really only one place it can happen.
#   expect(hoverboard.backers).to include(logan)