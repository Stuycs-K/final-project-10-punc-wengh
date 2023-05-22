  PImage board;
  void setup(){
    size(1500,1000);
    board = loadImage("Board.jpg");
    board.resize(800,800);
    fill(0);
  }
  void draw(){
    image(board,0,0);
  }
  
