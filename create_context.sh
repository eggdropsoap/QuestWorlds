echo Creating ConTeXt...
pandoc markdown/QuestWorlds.md -s -t context --toc --top-level-division=chapter --template=context.template -o docs/context/QuestWorlds.tex -V mainfont:'ebgaramond' -V fontsize:'11pt' --lua-filter filters/stripHeaderNumbers.lua
#--columns=10000

