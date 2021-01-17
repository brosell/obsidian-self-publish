rm -rf ./.cache  ./content
mkdir ./content

rm -rf ./export
mkdir ./export

# cp /mnt/c/Users/brl1/Google\ Drive/ObsidianNotes/Work/70_Maturing/* ./export
# cp /mnt/c/Users/brl1/Google\ Drive/ObsidianNotes/Work/80_Mature/* ./export
# cp /mnt/c/Users/brl1/Google\ Drive/ObsidianNotes/Work/90_MOC/* ./export
# cp /mnt/c/Users/brl1/Google\ Drive/ObsidianNotes/Work/99_Start/* ./export
# cp /mnt/c/Users/brl1/Google\ Drive/ObsidianNotes/Work/60_Draft/* ./export


cp /mnt/c/Users/brl1/Google\ Drive/ObsidianNotes/Work/*/* ./export
cp /mnt/c/Users/brl1/Google\ Drive/ObsidianNotes/Work/* ./export

# cp ./export/* ./content
/mnt/c/tools/obsidian-export_Linux-x86_64 ./export ./content

pushd content
sed -i 's/.md)/)/g' *.md
popd



yarn develop