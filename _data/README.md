To compile md files into html :

    recipe-grid-site recipes ../recipes
    cd ../recipes
    find . -type f -name "*.html" | xargs sed -i "s/[^[:alnum:]]for /\1pour /g"
