------------
Présentation
------------

Cette application web associé au prototype Muséoface a été développe pendant 
le Muséomix Nord 2018 par l'équipe "Les perchés".

Son objectif est de faire trouver au visiteur un tableau correspondant à une
silhouette d'un portrait, puis sélectionner une oeuvre dans le musée
comme fond de son auto portrait.

Les oeuvres de fond sont associé à un code à 4 lettres et les portraits à 
un code à 4 chiffres.

-----------
Utilisation
-----------

Le visiteur choisi un pseudo pour s'enregistrer. Ensuite il choisi une souhaitable
qui va devoir retrouver dans une oeuvre d’auto-portrait parmi les tableau du musée.
Quand il pense avoir trouver l'oeuvre correspondant à la souhaite, il tape les
code associé (affiché à coté du tableau), et valide. Si c'est le bon code, il 
peut continuer, sinon il doit recommencer avec un autre code. Enfin,
il choisi un fond en tapant le code correspondant et valide, il peut ainsi venir
dans le studio pour se prendre en photo devant l'oeuvre choisi. Une fois la photo
validée, elle s'affiche sur la galerie.

---------------
Point d'entrées
---------------

Pour rentrer sur l'application, il suffit d'aller sur la page racine, par exemple : 
http://museoface.site/

Pour afficher la galerie : http://museoface.site/index.php/welcome/gallery

Pour l'API
----------

Obtenir le code de fond sélectionné par le visiteur : http://museoface.site/index.php/welcome/get_fond?email=<pseudo>

Ajouter l'image dans la galerie :  http://museoface.site/index.php/welcome/send_image

Envoi des paramètre en POST :

- email=<pseudo>
- result=<données de l'image à envoyer>

Exemple avec cURL : `curl -F email=pseudo -F result=@result.jpg http://museoface.site/index.php/welcome/send_image`

------------
Installation
------------

Copier tous les fichiers dans le répertoire du serveur web. Changer la configuration
en éditant les fichier `application/config/config.php` pour le nom de domaine et le préfixe d'adresse et `database.php`
pour l’accès au serveur base de donnée MySQL.

Si ce n'est pas encore fait, initialiser la base de donnée avec le fichier `museoface.sql`.

-----------
Code source
-----------

Les fichiers code source propre à l'application sont situés dans 
- htdocs/application/models
- htdocs/application/views
- htdocs/application/controllers

-----------
CodeIgniter
-----------

Cette application web est basé sur le framework PHP CodeIgniter.

-  `User Guide <https://codeigniter.com/docs>`_
-  `Language File Translations <https://github.com/bcit-ci/codeigniter3-translations>`_
-  `Community Forums <http://forum.codeigniter.com/>`_
-  `Community Wiki <https://github.com/bcit-ci/CodeIgniter/wiki>`_
-  `Community Slack Channel <https://codeigniterchat.slack.com>`_

Report security issues to our `Security Panel <mailto:security@codeigniter.com>`_
or via our `page on HackerOne <https://hackerone.com/codeigniter>`_, thank you.


