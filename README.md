# About the app

A temporary app to play with sentry,angular and production deploy. Will be deleted soon!
You can see it deployed here:
https://effervescent-alfajores-e7d3ad.netlify.app
Deploy is done by pushing to main branch

NB! Last commit hash when this repo was uploading sourcemaps to Sentry is 79abbbd48f574e2f0a518478c10c4a261af8247f (before review fixes)

About app version in Angular
https://stackoverflow.com/questions/34907682/how-to-display-the-app-version-in-angular

# Test procedure

- change app.component.ts (add a new timestamp to btn messages)
- change version in package.json
- ng build
- sh sentry.sh
- push to the main branch
