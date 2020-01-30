class Project 

attr_reader :title

@@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def self.all 
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        arr_2 = []
        ProjectBacker.all.select do |pr|
            if pr.project == self
                arr_2 << pr.backer 
            end 
        end
        arr_2
    end

end