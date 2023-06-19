echo "files in this directory"
dir 

echo "files in that ~ directory"
dir ~

echo "count files in ~"
find ~ -type d,f | wc -l

echo "names of files in application"
find ~/lab_1/application -type f -printf "%f\n"

echo "names of catalogs in application"
find ~/lab_1/application -type d -printf "%f\n"
