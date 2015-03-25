#!/bin/bash

# add_chapter.sh - add a chapter to notes.txt

notes="notes.txt"

chapter=$1
title="$(echo $chapter |sed 's/_/ /g')"
underline=""
for i in $(seq ${#chapter}); do
    underline="${underline}-"
done

last_chapter=$(grep include notes.txt |tail -1)
last_chapter=${last_chapter##*:}
last_chapter=${last_chapter%[*}

# add a new line to previous chapter
echo "" >>${last_chapter}
# include new chapter
echo "include::${chapter}.txt[]" >>${notes}

echo "${title}" >>${chapter}.txt
echo ${underline} >>${chapter}.txt
echo "" >>${chapter}.txt
echo "Nothing here yet." >>${chapter}.txt
echo "" >>${chapter}.txt
./compile.sh


