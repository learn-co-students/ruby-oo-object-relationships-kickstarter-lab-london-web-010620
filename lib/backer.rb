require 'pry'
class Backer
attr_accessor
attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects_backed = ProjectBacker.all.select { |project| project.backer == self }.map { |instance| instance.project }
        # projects_backed.map { |instance| instance.project } 
    end


end