import 'dart:html';
import 'Tape.dart';

class Controller {
  Tape _tape;
  
  Controller(Tape tape) {
    _tape = tape;
    tape.canvas.onKeyPress.listen((event) {
      switch (event.which) {
        case 37:                      //left arrow
          tape.ball.point.x-=5; 
          break;
        case 39:  
          tape.ball.point.x+=5;       //right arrow
          break;
      }
    });
  }
  
  void springsDestroyer(){
    _tape.springs.forEach((spring){
      if(spring.point.y<0)_tape.removeSpring(spring);
    });
  }
  void motionGenerator(double time){
    _tape.ball.timeOfFall = time;
    _tape.ball.v-=_tape.ball.timeOfFall*9.8;
    _tape.springs.forEach((spring){
      if((_tape.ball.point.y+_tape.ball.radius==spring.point.y+spring.height/2)
          &&(_tape.ball.point.x>=spring.point.x-spring.width/2)
          &&(_tape.ball.point.x<=spring.point.x+spring.width/2)){
                      double _impactVelocity = _tape.ball.v;
                      _tape.ball.v=0.0;
                      
      }
    });
    _tape.ball.point.y=_tape.ball.point.y+_tape.ball.timeOfFall*_tape.ball.v
        - 9.8*_tape.ball.timeOfFall*_tape.ball.timeOfFall;
  }
}
