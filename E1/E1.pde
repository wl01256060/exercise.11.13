
// Number of columns and rows in the grid
int col = 10;
int row = 10;
int space = 20;
boolean DARK =true;


boolean[][] grid = new boolean[col][row];


void setup() {
  size(200,200);
  for(row=0; row<10; row++){
    for(col=0; col<10; col++){
     grid[col][row] =DARK;
    }
  }

}

void draw() {
  background(0);
 
  for(row=0; row<10; row++){
    for(col=0; col<10; col++){
      rect(col*space,row*space,space,space);
     if(grid[col][row] == DARK){
       fill(0);
       rect(col*space,row*space,space,space);
     }else{
       fill(255);
       rect(col*space,row*space,space,space);
    }
  }
  
}
}


void mouseReleased (){
  int colIndex = mouseX/space;
  int rowIndex = mouseY/space;
  
  grid[colIndex][rowIndex]=!grid[colIndex][rowIndex];
  if(colIndex+1<10){
    grid[colIndex+1][rowIndex] = !grid[colIndex+1][rowIndex];
  }
  if(rowIndex+1<10){
    grid[colIndex][rowIndex+1] = !grid[colIndex][rowIndex+1];
  }
  if(colIndex-1>=0){
    grid[colIndex-1][rowIndex] = !grid[colIndex-1][rowIndex];
  }
  if(rowIndex-1>=0){
    grid[colIndex][rowIndex-1] = !grid[colIndex][rowIndex-1];
  }
}
