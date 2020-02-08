FROM httpd:latest

WORKDIR /usr/local/apache2/hugosite

RUN apt-get update && apt-get -y install wget
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.64.0/hugo_extended_0.64.0_Linux-64bit.tar.gz -O hugo.tar.gz

COPY ptechdej /usr/local/apache2/hugosite/

# La mécanique d'Hugo oblige à modifier les chemins vers les fichiers statiques pour rester compatible avec Marp.
RUN find /usr/local/apache2/hugosite/content \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/..\/..\/static//'

RUN tar -zxvf hugo.tar.gz

RUN ./hugo -D

RUN cp -R public/* /usr/local/apache2/htdocs/