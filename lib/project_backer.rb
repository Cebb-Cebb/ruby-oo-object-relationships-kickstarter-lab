class ProjectBacker

    attr_reader :title, :project, :backer

    @@all = []

    def initialize(project, backer)
        @title = title
        @project = project
        @backer = backer
        @@all << self 
    end 

    def self.all
        @@all
    end 

end 