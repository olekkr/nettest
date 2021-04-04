import hypermedia.net.*;

UDP udp;
int len = 65507;
char[] payload = new char[len];

void setup () {
  udp = new UDP(this, 6942); 
  udp.loopback(false);
  udp.log(false);
  for(int i = 0; i < len; i++){
    payload[i] = 'A';
  }
  udp.send(new String(payload), "192.168.0.20", 4206);
}
void draw() {
  
}

void stop() {
  udp.close();
} 
