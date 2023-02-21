version_str=$(grep -Eo '\"version\"\:\s\"[0-9]\.[0-9]\.[0-9]+\"' package.json)
version=$(echo $version_str | grep -Eo '[0-9]\.[0-9]\.[0-9]+')
echo $version
sentry-cli releases new -p test-sentry-angular "$version"
sentry-cli releases set-commits --auto "$version"
sentry-cli releases files "$version" upload docs/ --ext js 
sentry-cli releases files "$version" upload-sourcemaps docs/ --ext map
sentry-cli releases new "$version" --finalize

# Remove all .js.map files
for file in $(find ./docs -type f -name '*.js.map');
do
    echo "Removing $file";
    rm $file;
done