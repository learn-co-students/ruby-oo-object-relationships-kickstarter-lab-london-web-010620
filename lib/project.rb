class Project
    attr_accessor
    attr_reader     :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
        projects_backed = ProjectBacker.all.select { |project| project.project == self }.map { |instance| instance.backer }
        # projects_backed.map { |instance| instance.project } 
    end

end
