import java.net.URL;
import java.io.*;
import javax.net.ssl.HttpsURLConnection;
import java.net.SocketAddress;
import java.net.Proxy;
import java.net.InetSocketAddress;

public class Demo
{
  public static void main(String[] args)
  throws Exception
  {
    String httpsURL = args[0];
    URL myurl = new URL(httpsURL);
    HttpsURLConnection con = (HttpsURLConnection)myurl.openConnection(Proxy.NO_PROXY);
    //SocketAddress addr = new InetSocketAddress("www-proxy.us.oracle.com", 80);
    //Proxy proxy = new Proxy(Proxy.Type.HTTP, addr);
    //HttpsURLConnection con = (HttpsURLConnection)myurl.openConnection(proxy);
    //    con.setHostnameVerifier(new LooseHostnameVerifier());
    //    con.setHostnameVerifier(new OalCustomHostVerifier());
    try{
    InputStream ins = con.getInputStream();
    InputStreamReader isr=new InputStreamReader(ins);
    BufferedReader in =new BufferedReader(isr);

    String inputLine;
    while ((inputLine = in.readLine()) != null)
        System.out.println(inputLine);

    in.close();
    }
    catch(Exception e){
    e.printStackTrace(System.out);
    InputStream ins = con.getErrorStream();
    InputStreamReader isr=new InputStreamReader(ins);
    BufferedReader in =new BufferedReader(isr);
    String inputLine;
    while ((inputLine = in.readLine()) != null)
        System.out.println(inputLine);
    in.close();
    }
  }
}