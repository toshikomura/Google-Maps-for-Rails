#!/bin/bash

echo "Salva vendor/ ..."
cp -r vendor/ ../

echo "Salva .gemspec ..."
cp gmaps4rails.gemspec ../

echo "Salva version ..."
cp lib/gmaps4rails/version.rb ../

echo "Volta um commit anterior ..."
git reset --hard HEAD^

echo "Devolve vendor/ ..."
cp -r ../vendor .

echo "Retorna .gemspec ..."
cp ../gmaps4rails.gemspec .

echo "Devolve version ..."
cp ../version.rb lib/gmaps4rails/

echo "Adiciona arquivos ..."
git add .

echo "Gera commit ..."
git commit -s

echo "Força atualização do repositório ..."
git push -f

echo "Gera instalação da gema ..."
gem build gmaps4rails.gemspec

echo "Instala gema ..."
sudo gem install gmaps4rails-2.1.3.gem
