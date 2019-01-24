PImage photo, sourceImage, maskImage;

IntList palette;

void setup(){
  fullScreen();
  smooth();
  
  palette = new IntList();
  palette.append(color(0, 10, 20));
  
  photo = loadImage("Macaw-Feathers.jpg");
  image(photo, 0, 0, width, height);
  saveFrame("data/source.png");
  background(0);
  generateMaskShapes(50);
  saveFrame("data/mask.png");
  maskImage = loadImage("mask.png");
  sourceImage = loadImage("source.png");
  sourceImage.mask(maskImage);
  background(random(0,255), random(0,255), random(0,255));
  image(sourceImage, 0, 0);
  //generateOverlayShapes(20);
  saveFrame("data/output" + year() + month() + day() + hour() + minute() + second() +  ".png");
  println(width);
  println(height);
}

void draw(){
  exit();
}