  PImage board;
  void setup(){
    size(1100,1000);
    background(255);
    board = loadImage("Board.jpg");
    board.resize(800,800);

  }
  void draw(){
    image(board,0,0);

  }
