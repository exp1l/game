import 'Model.dart';
import 'dart:html';

class Tape extends DisplayObject {
  List<Spring> _springs;
  Ball _ball;
  CanvasElement _canvas;
  CanvasRenderingContext2D _context;

  Ball get ball => _ball;
  CanvasElement get canvas => _canvas;
  CanvasRenderingContext2D get context => _context;
  List<Spring> get springs => _springs;
  
  Tape(int ballPower, CanvasElement canvas) {
    _ball = new Ball(ballPower);
    _canvas = canvas;
    _context = canvas.getContext('2d');
  }
  void addSpring(Spring spring) {
    _springs.add(spring);
  }
  void removeSpring(Spring spring) {
    _springs.remove(spring);
  }
  void removeSpringAt(int num) {
    _springs.removeAt(num);
  }
  void drawToCanvas() {
    _context.clearRect(0, 0, _canvas.width, _canvas.height);
    _springs.forEach((spring) {
      _context.drawImageScaled(spring.image, spring.point.x, spring.point.y, spring.point.y + spring.image.width, spring.point.x + spring.image.height);
    });
    _context.drawImageScaled(_ball.image, _ball.point.x, _ball.point.y, _ball.point.x + _ball.image.width, _ball.point.y + _ball.image.height);//TODO
  
  }

}
