#This unzip all the .zip files
for z in *.zip; do unzip $z; done
for i in $( ls | grep [A-Z] ); do mv -i $i `echo $i | tr 'A-Z' 'a-z'`; done

