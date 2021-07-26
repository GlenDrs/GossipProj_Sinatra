# GossipProj_withSinatra
Ruby Proj, interaction avec le server via gem 'sinatra'

Architecture et rangement

Dans ce chapitre, nous allons voir comment avoir un dossier Sinatra bien organisé. On insiste dessus mais il n'est jamais inutile de vous rafraîchir la mémoire : vous allez commencer à faire programmes complexes et longs, basés sur plusieurs gems et framework. Sans un rangement propre, une personne extérieur à votre cerveau ne pourra pas la comprendre rapidement et simplement. Même vous dans 3 mois vous vous y perdrez en revenant sur le projet. Donc on va investir sur l'avenir et appliquer les bonnes pratiques d'un développeur professionnel qui veut pouvoir travailler en équipe et produire du code maintenable à long terme.

On va donc partir sur un dossier bien rangé en architecture MVC, avec chaque fichier qui a un but unique, et des dossiers qui suivent la convention. C'est parti !
2.1.1. Création des premiers fichiers

Évidemment, pour commencer, nous allons créer un dossier the_gossip_project_sinatra qui contiendra notre application. Comme pour l'application précédente, nous allons créer un fichier Gemfile, ainsi qu'un fichier controller.rb. Gemfile devra appeler la gem sinatra ainsi que notre version habituelle de Ruby. Le fichier controller.rb va nous permettre de finir la classe du controller sous le nom ApplicationController. Il doit contenir les lignes suivantes :

Nous allons expliquer ces lignes de code, mais d'abord exécute l'application controller.rb après avoir fait l'installation du serveur. Si tu vas sur http://localhost:4567/, cela devrait afficher un site avec le code source correspondant.

!!! ATENTION:
ajouter gem 'sinatra' gem 'csv' gem 'shoutgun' sur le Gemfile

pour initialiser le server utiliser la comande: shotgun 4567

Construire l'architecture MVC
a) Les views (et shotgun)

Allez, on poursuit la clarification de notre architecture. La prochaine étape, quand on regarde le code de controller.rb, c'est de se dire "purée, c'est dégueu d'avoir du HTML sur une seule ligne et au milieu de mon code. Ça va être affreux le jour où j'ai des 10 pages différentes qui font 1000 lignes de HTML chacune."

On va donc utiliser la fonctionnalité des views de Sinatra, et mettre notre HTML dans un fichier à part. Crée donc un dossier views avec dedans un premier fichier index.erb. Ce fichier va contenir le code HTML de la view index : c'est la view qui liste tous les gossip présents en BDD. Au passage, sache qu'un fichier .erb est un fichier HTML dans lequel tu peux y rajouter du Ruby. En mélangeant les deux langages, tu vas pouvoir afficher en HTML des trucs du genre user.first_name, ce qui est plutôt pratique pour dire "Bienvenue Félix" ou "Bienvenue José" selon qui se connecte 😘

Bref, voici ce que le fichier index.erb doit contenir : 

Forme définitive de l'arbre des fichiers et des dossiers:

the_gossip_project_sinatra
├── Gemfile
├── Gemfile.lock
├── config.ru
├── db
│   └── gossip.csv
└── lib
    ├── controller.rb
    ├── gossip.rb
    └── views
        ├── index.erb
        └── new_gossip.erb
