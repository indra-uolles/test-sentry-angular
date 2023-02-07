sentry-cli releases new -p test-sentry-angular "$1"
sentry-cli releases set-commits --auto "$1"
sentry-cli releases files "$1" upload docs/
sentry-cli releases files "$1" upload-sourcemaps /docs
sentry-cli releases new "$1" --finalize