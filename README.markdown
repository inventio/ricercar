#Ricercar: Ricercar: 'cause it sounds like "acercar" and it involves multiple voices

Ok, empecé a hacerlo en rails, pero está lleno de magia negra, íbamos a estar todo el resto del año entendiéndole. Una versión avanzada del intento en rails está en la branch `gists`. Ahora está usando el framework [padrino](http://www.padrinorb.com/).

##Prerrequisitos

* Instalar ruby, rubygems, padrino y mongodb ([aquí](http://www.mongodb.org/display/DOCS/Ubuntu+and+Debian+packages) sale cómo instalarlos en un sistema debian como ubuntu).
    sudo apt-get install ruby #debería ser la versión 1.8.7
    sudo apt-get install rubygems #debería estar en la versión 1.3.7
    sudo gem install padrino
    sudo gem install bundler

* Crear la carpeta de directorios de git:
    sudo mkdir /var/git
    sudo chown $USER /var/git

##Instalación de dependencias

Con magia de bundler:
    bundle install


    
