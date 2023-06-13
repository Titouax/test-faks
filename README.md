# Top 5 Chess Player

## Enoncé :

Tu as une liste de joueurs d'échecs avec leurs ages et scores (elo).
Tu dois extraire de la liste les "champions"
Un joueur est dit "champion" si et seulement si il n'y a personne d'autre dans la liste qui "l'élimine", c'est à dire:
 - personne d'autre n'est a la fois strictement plus fort et plus jeune ou même age
et
 - personne d'autre n'est à la fois strictement plus jeune et plus fort ou même score

Ta mission: dans le language de ton choix, coder la fonction permettant de trouver les champions de la liste

On attachera une importance particulière aux points suivants:
- L'exactitude des resultats: Le(a) candidat(e) a t-il(elle) pensé(e) à la logique d'ensemble et aux cas particuliers ?
- La performance: Comment se comporte l'algorithme à mesure que le nombre de joueurs grandit ?
- La clarté et la lisibilité du code

Pour le rendu, tu peux créer un repository github et m'inviter dessus (f-g-p) 

## Installation : 

Ce repo utilise est un Rails 7 basic qui inclut Tailwind CSS pour le style. Il comporte un seed avec une génération aléatoire de 500 joueurs. 

Pour installer le repo, suivez les commandes suivantes : 

```bash 
bundle install 
rails db:create db:migrate db:seed 
```

Pour lancer l'app utiliser : 
```bash 
./bin/dev 
```

La liste des champions des joueurs se trouve sur l'index des joueurs avec la liste des elo max par age : 

http://localhost:3000/players 
