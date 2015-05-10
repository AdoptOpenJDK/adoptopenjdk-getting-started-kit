listOfLanguages=$(echo `ls -d */`)

for eachLanguage in $listOfLanguages
do
	eachLanguage=$(echo $eachLanguage | tr "/" " " | tr -d '[[:space:]]') 
	echo "Checking and generating $eachLanguage/whatsChanged.md"
	./whatsChangedFor.sh $eachLanguage
done