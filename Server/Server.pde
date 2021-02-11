import hypermedia.net.*;

UDP udp;

boolean start = true;



void setup () {
  udp = new UDP(this, 4206);
  udp.log(true);
  udp.listen(true);
  
  
  while (true) {
    serve();
  }
}

void serve(){
  println(111);
}
