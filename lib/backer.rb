class Backer 

require 'pry'

    attr_reader :name

@@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all 
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
       arr_1 = []
        ProjectBacker.all.select do |pr|
            if pr.backer == self
                arr_1 << pr.project 
            end 
        end
        arr_1
    end


end 

