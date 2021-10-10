
class Project

    attr_reader :title
    @@all = []

    def initialize(title)
        @title = title
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projects_backers = ProjectBacker.all.select {|backers| backers.project == self}
        projects_backers.collect {|backers| backers.backer}
    end

end