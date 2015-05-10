#!/bin/sh

set -eu
language=$1
showUsageIfScriptCannotBeRun() 
{
	if [ "$language" == "" ]; then	
		echo "Usage:"
		echo ""
		echo "   $0 [language]"
		echo "   [language] - two letter language code i.e. en, pt, pl"
		echo ""
		echo "For e.g."
		echo "   $0 en"
		echo "or"
		echo "   $0 en/"
		echo ""
		echo "This creates a markdown files in the English language folder i.e. the en/ folder called 'whatsChanged.md'"
		echo "Containing the names of all changed markdown files."
		exit 0
	fi
}

createWhatsChangedMarkdownFileFor()
{
	listOfChangedMarkdownFiles=$(echo `git log --name-only  -p  --exit-code $language | grep '.md' | grep -v ' '| sort | uniq`)

	rm -f $language/whatsChanged.md
	rm -f $language/listOfMarkdownFiles.tmp

	echo "###What's changed" >> $language/whatsChanged.md
	echo ""               >> $language/whatsChanged.md
	echo ""               >> $language/whatsChanged.md

	for eachChangedFile in $listOfChangedMarkdownFiles
	do
		strippedFilename=$(echo $eachChangedFile | cut -c 4-)
		changedDateTime=$(echo `git log --format="%cd" -1 --date=short $language/$strippedFilename `)
		titleOfMarkdownFile=$(head -n 1 $language/$strippedFilename)
		titleOfMarkdownFile=$(echo $titleOfMarkdownFile | cut -c 3-)
		echo "* $changedDateTime [$titleOfMarkdownFile]($strippedFilename)" >> $language/listOfMarkdownFiles.tmp 
	done

	cat $language/listOfMarkdownFiles.tmp | sort -r >> $language/whatsChanged.md

	rm -f $language/listOfMarkdownFiles.tmp
}

## The execution of the script starts here
echo $1
showUsageIfScriptCannotBeRun $language
createWhatsChangedMarkdownFileFor $language