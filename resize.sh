#sh resize.sh 90
#resize all images in current directory 
echo "Starting resize";
mkdir -p "resized";
for i in *.JPG ; do convert "$i" -resize 1920x1080 -quality $1 "resized/${i%.*}.jpg" ; done
echo "Finished";
