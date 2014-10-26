import 'dart:svg';






class Ball extends DisplayObject {
 double _v=0.0;
 double _timeOfFall = 0.0;
 double radius = 5.0;
  Ball(double v){
   this._v = v;
 }
  double get timeOfFall => _timeOfFall;
  double get v => _v;
  void set timeOfFall(double timeOfFall){
    this._timeOfFall = timeOfFall;
  }
  void set v(double v){
    this._v=v;
  }
}

class Spring extends DisplayObject {
 double _width = 10.0;
 double _height = 10.0;
 double get width => _width;
 void set width(double width){
   this._width = width;
 }
 double get height => _height;
 void set height(double height){
   this._height=height;
 }
}

 class DisplayObject {
  Point _point;
  ImageElement _image;
  Point get point => _point;
  void set point(Point point) {
    this._point = point;
  }
  ImageElement get image => _image;
  void set image(ImageElement image) {
    this._image = image;
  }
}
