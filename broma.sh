#!/bin/bash
echo "🚀 Iniciando la broma épica..."
mkdir -p ~/broma_inicio
cd ~/broma_inicio

if [ ! -d ".git" ]; then
    git init
    echo "Bienvenido al repo de la broma! 😆" > readme.md
fi