rm -rf ./.cache  ./content ./public
mkdir ./content


rm -rf ./export
mkdir ./export

NOTES_ROOT="/mnt/c/Users/bert/Google Drive/ObsidianNotes/Work"

#NOTES_ROOT="./vault"

cp "$NOTES_ROOT"/70_Maturing/* ./export
cp "$NOTES_ROOT"/80_Mature/* ./export
# cp "$NOTES_ROOT"/90_MOC/* ./export
cp "$NOTES_ROOT"/99_Start/* ./export
# cp "$NOTES_ROOT"/60_Draft/* ./export
# cp "$NOTES_ROOT"/* ./export

# cp "$NOTES_ROOT"/*/* ./export
# cp "$NOTES_ROOT"/* ./export

# cp ./export/* ./content
# ../obsidian-export/target/debug/obsidian-export ./export ./content

./obsidian-export ./export ./content

pushd content
sed -i 's/\\\[\[/\[\[/g' *.md
popd

yarn develop