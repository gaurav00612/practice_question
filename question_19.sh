#!/bin/bash


if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi


if [ ! -d "$1" ]; then
    echo "Directory does not exist: $1"
    exit 2
fi



organize_files() {

    src_dir="$1"
    moved=0

    # Create required directories
    mkdir -p "$src_dir/documents"
    mkdir -p "$src_dir/images"
    mkdir -p "$src_dir/scripts"
    mkdir -p "$src_dir/others"

    # Process files
    for content in "$src_dir"/*
     do

	     echo "$content"
        # Skip directories
        if [ -d "$content" ]; then
            continue
        fi

        if [[ "$content" == *.txt || "$content" == *.pdf ]]; then
            mv "$content" "$src_dir/documents/"
            ((moved++))

        elif [[ "$content" == *.jpg || "$content" == *.jpeg || "$content" == *.png ]]; then
            mv "$content" "$src_dir/images/"
            ((moved++))

        elif [[ "$content" == *.sh ]]; then
            mv "$content" "$src_dir/scripts/"
            ((moved++))

        else
            mv "$content" "$src_dir/others/"
            ((moved++))
        fi
    done

    echo "Files moved: $moved"

    return 0
}

organize_files "$1"

exit $?
