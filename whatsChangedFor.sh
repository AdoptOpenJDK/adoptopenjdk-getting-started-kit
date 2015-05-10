#!/bin/sh
whatsChangeTitleText="###What's changed"

showUsageIfScriptCannotBeRun() 
{
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
	echo "This creates a markdown files in the English language folder i.e. the en/ folder called whatsChanged.md"
	echo "Containing the names of all the files that have been changed, it only contains markdown files."
	exit 0
}

createWhatsChangedMarkdownFileFor()
{
	listOfChangedMarkdownFiles=$(echo `git log --name-only  -p  --exit-code $language | grep '.md' | grep -v ' ' | grep -v 'SUMMARY.md\|whatsChanged.md'| sort | uniq`)

	rm -f $language/whatsChanged.md
	rm -f $language/listOfMarkdownFiles.tmp

	echo "$whatsChangeTitleText" >> $language/whatsChanged.md
	echo ""               >> $language/whatsChanged.md
	echo ""               >> $language/whatsChanged.md

	for eachChangedFile in $listOfChangedMarkdownFiles
	do
		strippedFilename=$(echo $eachChangedFile | cut -c 4-)
		if [ -f $strippedFilename ]; then
		   echo "* Deleted '$strippedFilename'" >> $language/listOfMarkdownFiles.tmp
		else
			changedDateTime=$(echo `git log --format="%cd" -1 --date=short $language/$strippedFilename `)
			titleOfMarkdownFile=$(head -n 1 $language/$strippedFilename)
			titleOfMarkdownFile=$(echo $titleOfMarkdownFile | cut -c 3-)

			if [ -z "$titleOfMarkdownFile" ] || [ `echo $titleOfMarkdownFile | grep 'https'` ]; then
			   titleOfMarkdownFile=$strippedFilename
			fi 

			echo "* $changedDateTime [$titleOfMarkdownFile]($strippedFilename)" >> $language/listOfMarkdownFiles.tmp 
		fi
	done

	cat $language/listOfMarkdownFiles.tmp | sort -r >> $language/whatsChanged.md

	rm -f $language/listOfMarkdownFiles.tmp
}

## The execution of the script starts here
language=$1 
if [ -z "$language" ]; then
	showUsageIfScriptCannotBeRun
fi

set -eu
createWhatsChangedMarkdownFileFor $language