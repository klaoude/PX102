for i in *
do
  ext=$(file $f | cut -d " " -f3)
  if [ $ext = "PNG" ]; then
    mv $f $f.png
  elif [ $ext = "Python" ]; then
    mv $f $f.py
  elif [ $ext = "UTF-8" ] || [ $ext = "ASCII" ]; then
    mv $f $f.txt
  elif [ $ext = "JPEG" ]; then
    mv $f $f.txt
  fi
done
