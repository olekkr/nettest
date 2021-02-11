import hypermedia.net.*;

UDP udp;


void setup () {
  udp = new UDP(this, 6942);
  
  udp.log(false);
}
void draw() {
  delay(300);
  udp.send("test", "192.168.0.20", 4206);
}
