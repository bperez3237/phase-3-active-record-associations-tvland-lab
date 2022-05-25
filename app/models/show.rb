class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network


    def network 
        self.last.network
    end

    def actors_list
        list = []
        self.actors.each {|x| list<<x.full_name}
        list
    end
end