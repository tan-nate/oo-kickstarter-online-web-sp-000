class Project
  attr_reader :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    if backer.backed_projects !include?(self)
      project.add_backer(self)
    end
  end
end