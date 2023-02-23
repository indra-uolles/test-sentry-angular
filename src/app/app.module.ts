import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

// this is not how you should do it, it's just for simplicity.
import { environment } from '../environments/environment.prod';
import * as Sentry from '@sentry/angular';

console.log('environment version', environment.version);

Sentry.init({
  dsn: environment.dsn,
  release: environment.version,
});

@NgModule({
  declarations: [AppComponent],
  imports: [BrowserModule, AppRoutingModule],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
