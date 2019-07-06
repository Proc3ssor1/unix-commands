# Commande permettant d'extraire le PPN d'un fichier Unimarc. L'opton "-o" de grep permet de n'extraire que la partie de la ligne correspondante.
# L'opton "-F" de awk spécifie le délimiteur dans le fichier et la partie '{print $4}' permet d'extraire le 4ème élément.
# Le tout est redrgé dans le ficher ppn-extract.txt
  cat ppn1.txt | grep -o 'http://sudoc.fr/.........' | awk -F "/" '{print $4}' > ppn-extract.txt
  
# Commande permettant de supprmer tous les fichiers commencant par une chaine de caractères spécifiques.
# La premère partie de commande "find ." permet de rechercher une chaine de caratère dans le répertoire courant.
# La seconde partie de commande "-name "name"" spécifie le nom de fichier à rechercher.
# Le "-exec rm {} \;" permet d'exécuter la commande rm sur tout les fichiers sélectionnés précédemment.
  find . -name "name*" -exec rm {} \;
  
# Commande permettant de créer un fichier zip à partir de fichiers sélectionnés.
# La premère partie de commande "find ." permet de rechercher une chaine de caratère dans le répertoire courant.
# La seconde partie de commande "-name "name"" spécifie le nom de fichier à rechercher.
# Le "-exec zip file.zip {} \;" permet de créer un fichier zip à partir des fichiers précédemment sélectionnés.
  find . -name "name*" -exec zip file.zip {} \;
  
# Reset cache DNS
  systemd-resolve --flush-caches
  
  find /etc/apache2/ -type d -exec chmod 777 {} \;
  
  grep -v -E '^#' /etc/passwd | awk -F: '$3 == 0{print $1}'

find ${1} -type f | xargs stat --format '%Y :%y %n' 2>/dev/null | sort -nr | cut -d: -f2-
