require 'pry'
class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end 

    def back_project(project)
        # binding.pry 
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
        projects = []
        ProjectBacker.all.each do |pb|
          if pb.backer == self
            projects << pb.project
        end
    end
    projects
    # binding.pry 
  end
end 