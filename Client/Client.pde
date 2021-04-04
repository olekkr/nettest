import hypermedia.net.*;
import java.math.BigInteger;
UDP udp;
int len = 65507;//65507
byte[] payload = new byte[len];

void setup () {
  udp = new UDP(this, 6942, "192.168.0.27"); 
  udp.loopback(false);
  udp.log(false);
  for(int i = 0; i < len; i+=1){
    payload[i] = 'A';
  }
  udp.send(new String(payload), "192.168.0.20", 4206);
}
void draw() {
  
}

void stop() {
  udp.close();
} 
