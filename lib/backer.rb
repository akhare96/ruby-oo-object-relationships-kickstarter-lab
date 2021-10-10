
class Backer

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects_backers = ProjectBacker.all.select {|projects| projects.backer == self}
        projects_backers.collect {|projects| projects.project}
    end
    
end

