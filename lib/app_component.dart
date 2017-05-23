import 'package:angular2/angular2.dart';

class Hero {
  final int id;
  String name;

  Hero(this.id, this.name);
}

@Component(
  selector: 'my-app',
  template: '''
    <h1>{{title}}</h1>
    <h2>{{hero.name}} details!</h2>
    <div><label>id: </label>{{hero.id}}</div>
    <div>
      <label>name: </label>
      <input [(ngModel)]="hero.name" placeholder="name">
    </div>''',
  directives: const [COMMON_DIRECTIVES],
)
class AppComponent {
  String title = 'Tour of Heroes';
  Hero hero = new Hero(1, 'Windstorm');
}