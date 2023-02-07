sentry-cli releases new -p test-sentry-angular "$1"
sentry-cli releases set-commits --auto "$1"
sentry-cli releases files "$1" upload docs/
sentry-cli releases files "$1" upload-sourcemaps /docs
sentry-cli releases new "$1" --finalize

# empty source maps for safety. this is a workaround for a bug in sentry-cli
# for file in $(find ./docs -type f -name '*.js.map');
# do
#     cat ./example.js.map > $file;
# done