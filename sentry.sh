version_str=$(grep -Eo '\"version\"\:\s\"[0-9]\.[0-9]\.[0-9]+\"' package.json)
version=$(echo $version_str | grep -Eo '[0-9]\.[0-9]\.[0-9]+')
# TO DO: pls change here to use env variable
version="$version-production"
sentry-cli releases new "$version"
sentry-cli releases set-commits --auto "$version"
sentry-cli releases files "$version" upload-sourcemaps docs/
sentry-cli releases new "$version" --finalize

# Remove all .js.map files
for file in $(find ./docs -type f -name '*.js.map');
do
    echo "Removing $file";
    rm $file;
done