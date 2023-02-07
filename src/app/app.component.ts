import { Component } from '@angular/core';
import * as Sentry from '@sentry/angular';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
})
export class AppComponent {
  title = 'myApp';

  onClickMeClick() {
    alert('You clicked me, hey!!!');
  }

  onClickMeClick2() {
    alert('You clicked me, heyho you!!!');
  }

  onClickMeClick3() {
    alert('You clicked me, Sentry tester');
    Sentry.captureException(new Error('You clicked me, Sentry tester'));
  }
}
