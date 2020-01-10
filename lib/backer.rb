class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(backer)
        ProjectBacker.new()
    end

    def backed_projects

end

