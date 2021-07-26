require 'bundler'
Bundler.require

class Gossip

  attr_accessor  :author,:content

  def initialize (author,content)
    @author=author
    @content=content

  end

    #La méthode va sauvegarder les gossips dans la base de
    # donnees  ./db/save
    def save 
            file=CSV.open("./db/gossip.csv", "a+") do |csv|
              csv << [@author, @content]
            end
                     
    end

      #La methode qui permet de recuperer tous les 
    def self.all
      all_gossips = []
      CSV.read("./db/gossip.csv").each do |csv_l|
        all_gossips << Gossip.new(csv_l[0], csv_l[1])
      end
      return all_gossips
    end

    def self.find(id)
      id = id.to_i
      all_gossips = []
      CSV.read("./db/gossip.csv").each do |csv_line|
          all_gossips << Gossip.new(csv_line[0], csv_line[1])
      end
      return all_gossips[id]
    end

end




#binding.pry


