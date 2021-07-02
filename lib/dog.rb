class Dog
    @@all = []

    def self.all
        @@all
    end

    attr_reader :name
    
    def initialize name
        @name = name
        save
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        @@all.map{|dog| puts dog.name} 
    end

    def save
        @@all << self
    end
end