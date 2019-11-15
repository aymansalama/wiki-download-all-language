# this is a shell script you can run on any shee on linux
# codes is the file name that contains all languages for wiki
for i in `cat codes`
do
    # send the date to the log file
    date >> log
    # send the code name to the log file
    echo $i >> log
    # create three strings that will be combined to create the complete URL for wiki download
    str1='https://dumps.wikimedia.org/'
    # you can change the date to the most update one, check README file
    str2='wiki/20171220/'
    str3='wiki-20171220-pages-articles.xml.bz2'
    # combine all strings with $i that contains the language code
    wiki="$str1$i$str2$i$str3"
    # copy the wiki url to log
    echo $wiki >> log
    # download the URL and send the output to log
    wget $wiki >> log
    echo '#####################################' >> log
    echo '#####################################' >> log
    echo ' ' >> log
done
