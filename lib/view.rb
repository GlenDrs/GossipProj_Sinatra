require ''

class View


    def initialize
        @nom_author=nom
        @content_titre=content
    end
    
    #methode pour demander a donner le nom et le content d'un author
    # Ainsi si on veux on peut les afficher le nom donnee
def create_gossip
    puts "Donner le nom d'un autheur"
    @nom_author=gets.chomp.to_s
    p "<"
    puts " L'uathor que vous avez donnez s'appelle: #{nom_author}"
    p "<"
    puts "Donner le titre ou le content"
    @content_titre=gets.shomp.to_s
    p "<"
    puts " Le titre ou le content que vous avez donne est: #{nom_author}"

end

end