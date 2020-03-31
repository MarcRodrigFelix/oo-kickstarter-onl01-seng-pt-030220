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
