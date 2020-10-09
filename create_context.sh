#!/bin/bash
echo -n "Creating ConTeXt SRD... "
pandoc markdown/QuestWorlds.md -s -t context --toc --top-level-division=chapter --template=context.template -o docs/context/QuestWorlds.tex -V mainfont:'ebgaramond' -V fontsize:'11pt' --lua-filter filters/stripHeaderNumbers.lua
echo done.
echo -n "Creating ConTeXt book... "
pandoc markdown/QuestWorlds.md -s -t context --toc --top-level-division=chapter --template=context.book.template -o docs/context/QuestWorlds.book.tex --lua-filter filters/stripHeaderNumbers.lua
echo done.
