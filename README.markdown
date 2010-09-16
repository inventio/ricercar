#Ricercar: 'cause it sounds like "acercar" and it involves multiple voices
Los repositorios de git se guardan en una carpeta en la raíz del sistema, por que lo que se debe ejecutar
    sudo mkdir /ricercar
    sudo mkdir /ricercar/repositories
    chown $USER /ricercar/repositories

Luego de clonar el repo, correr la app debería ser tan fácil como correr
    sudo bundle install
    rake db:migrate
    rake db:seed
    rails server
    
