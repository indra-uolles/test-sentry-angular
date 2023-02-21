import packageJson from '../../package.json';

export const environment = {
  production: true,
  env: 'production',
  version: `${packageJson.version}-production`,
  dsn: 'https://b8ea79951b8848f091d39db49f4c4289@o265672.ingest.sentry.io/4504633431359488',
};
