#!/bin/bash

file_to_compress="/path/to/file.txt"

# Compress a file using gzip
gzip "$file_to_compress"

if [ $? -eq 0 ]; then
  echo "File compressed: ${file_to_compress}.gz"
else
  echo "Error compressing file."
fi

#To decompress: gunzip "${file_to_compress}.gz"

