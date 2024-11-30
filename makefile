# Nom du fichier à générer
TARGET=README.md

# Script source
SCRIPT=guessinggame.sh

# Règle principale
all: $(TARGET)

$(TARGET): $(SCRIPT)
	echo "# Projet : Guessing Game" > $(TARGET)
	echo "\nCe projet consiste à deviner le nombre de fichiers dans un répertoire." >> $(TARGET)
	echo "\nDate et heure d'exécution : $$(date)" >> $(TARGET)
	echo "\nNombre de lignes de code dans $(SCRIPT) : $$(wc -l < $(SCRIPT))" >> $(TARGET)

# Règle pour nettoyer les fichiers générés
clean:
	rm -f $(TARGET)

