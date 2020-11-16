# Compte rendu DevOps
*Enzo BATISTA*

## TP01

    
1. Why should we run the container with a flag -e to give the environment variables ?

    Pour sécuriser les identifiants en évitant de les rentrer en clair dans un fichier.

2. Why do we need a volume to be attached to our postgres container ?

    Pour éviter que les données ne soient effacées lorsque nous redémarrons la base de données.

3. Why do we need a multistage build ?

    Pour optimiser la taille des images.
    On utilise le jre pour run le jdk (car l'image du jdk est trop lourde) après avoir build le jdk.

4. Why do we need a reverse proxy ?
    
    Son utilisation est due à la sécurité, à la haute disponibilité, à l'équilibrage de la charge et à l'authentification/autorisation centralisée. En effet, il permet de canaliser toutes les requêtes du réseau interne pour les transmettre sur le serveur et est donc la seule source de tout le contenu pour le client.

5. Why is docker-compose so important ?

    Permet de centraliser toutes les actions des Dockerfile et tout lancer avec une seule commande : `docker-compose up` au lieu de build chaque Dockerfile manuellement.

6. Why do we put our images into an online repository ?

    Pour les sauvegarder et permettre qu'elles soient utilisables par d'autres équipes ou machines.

---

## TP02


1. Ok, what is it supposed to do (`mvn clean verify`)?

    Cette commande va effacer les constructions précédentes dans le cache (sinon il peut y avoir un comportement inattendu car Maven n'a pas recréé chaque partie de l'application), puis elle va recréer chaque module dans l'application et enfin elle va exécuter les tests unitaires et les tests d'intégration (parfois appelés aussi tests de composants).


2. Unit tests ? Component test ?

    Tests pour vérifier le bon fonctionnement de l'application. Ils permettent ainsi de détecter et corriger des bugs plus facilement. Les tests unitaires vont tester chaque module individuellement alors que les tests de composants testeront la communication/interaction entre eux.

3. What are testcontainers?

    Il s'agit de bibliothèques java qui permettent d'exécuter un tas de conteneurs de docker pendant les tests.

4. Why do we need this branch (*develop*) ?
    
    Pour différencier les branches de production (master) et de développement (develop).

5. Secured variables, why ?

    Pour empêcher l'utilisation illégale de nos variables et ne pas les exposer publiquement.

6. For what purpose (*Travis*) ?
    
    Pour vérifier le bon fonctionnement de l'application à chaque push sur Github.

---

## TP03

1. Ask yourself: what is $basearch?

    Variable qui indique l'architecture du système (32bit, 64bit etc...).
