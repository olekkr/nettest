import hypermedia.net.*;

UDP udp;

boolean start = true;

int port = 4206;

void setup () {
  udp = new UDP(this, port, "192.168.0.27");
  udp.log(true);
  udp.listen(true);
  println("listening to port ", port, "...");
  
}
void draw(){}

void receive(byte[] data){
  println("received byte");
  for(int i = 0; i < data.length; i++){
    print(char(data[i]));
  }
  println();
}
