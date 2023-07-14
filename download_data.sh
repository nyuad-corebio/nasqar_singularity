export fileid=1dUE8CquO56CX8RgDnrCpU1D24nLV3UYJ
export filename=data.zip

## WGET ##
wget --save-cookies cookies.txt 'https://docs.google.com/uc?export=download&id='$fileid -O- \
     | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1/p' > confirm.txt

wget --load-cookies cookies.txt -O $filename \
     'https://docs.google.com/uc?export=download&id='$fileid'&confirm='$(<confirm.txt)

rm cookies.txt confirm.txt > /dev/null

unzip data.zip


cp -r data/deseq2shiny/www  deseq2shiny/
cp -r data/ClusterProfShinyORA/www  ClusterProfShinyORA/
cp -r data/ClusterProfShinyGSEA/www  ClusterProfShinyGSEA/
cp -r data/DEApp/www  DEApp/
cp -r data/GeneCountMerger/www GeneCountMerger/
cp -r  data/NASQAR/tsar_nasqar/www      NASQAR/tsar_nasqar
cp -r  data/NASQAR/mergeFPKMs/www      NASQAR/mergeFPKMs
cp -r  data/ATACseqQCShniy/www      ATACseqQCShniy/
