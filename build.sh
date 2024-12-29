ls
if [ -d hello-world-war ]
then
rm -rf *
fi
cd hello-world-war
mvn clean package
ls
