for i in `cat codes`
do
    date >> log
    echo $i >> log
    str1='https://dumps.wikimedia.org/'
    str2='wiki/20171220/'
    str3='wiki-20171220-pages-articles.xml.bz2'
    wiki="$str1$i$str2$i$str3"
    echo $wiki >> log
    wget $wiki >> log
    echo '#####################################' >> log
    echo '#####################################' >> log
    echo ' ' >> log
Done
