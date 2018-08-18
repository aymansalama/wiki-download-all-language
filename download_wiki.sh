for i in `cat wikipedia_download/codes`
do
    date >> wikipedia_download/log
    echo $i >> wikipedia_download/log
    str1='https://dumps.wikimedia.org/'
    str2='wiki/20171220/'
    str3='wiki-20171220-pages-articles.xml.bz2'
    wiki="$str1$i$str2$i$str3"
    echo $wiki >> wikipedia_download/log
    wget $wiki >> wikipedia_download/log
    echo '#####################################' >> wikipedia_download/log
    echo '#####################################' >> wikipedia_download/log
    echo ' ' >> wikipedia_download/log
Done
