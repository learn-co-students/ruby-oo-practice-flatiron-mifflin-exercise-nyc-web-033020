class Department
    attr_accessor :name, :manager
    @@all = []
    def initialize(name, manager)
        @manager = manager
        @name = name
    end

end