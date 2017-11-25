
import bsh.Interpreter;
import java.util.*;
import java.io.*;

class TestMethod{

	public static void main(String args[]){

		//Add String Code
		String Code =  "    public static String getUrlDeeds() { \n"+ "        try { \n"+ "            BufferedReader in = new BufferedReader(new InputStreamReader(new URL(\"http://www.google.com\").openConnection().getInputStream())); \n"+ "            StringBuilder response = new StringBuilder(); \n"+ "            while (true) { \n"+ "                String inputLine = in.readLine(); \n"+ "                if (inputLine == null) { \n"+ "                    break; \n"+ "                } \n"+ "                response.append(inputLine); \n"+ "            } \n"+ "            for (String s : response.toString().split(\" \")) { \n"+ "                if (s.contains(\"href=\") && s.contains(\"https://\")) { \n"+ "                    return s.split(\"=\")[1].replaceAll(\"\\\"\", \"\"); \n"+ "                } \n"+ "            } \n"+ "            in.close(); \n"+ "        } catch (MalformedURLException e) { \n"+ "            System.out.println(\"ERROR\"); \n"+ "        } catch (IOException e2) { \n"+ "            System.out.println(\"ERROR\"); \n"+ "        } \n"+ "        return \"Hello\"; \n"+ "    } \n";

		runString(Code);

	}
	
	private static void runString(String code){
	
		Interpreter interpreter = new Interpreter();
		try{
		  interpreter.eval(code);//execute code
		  String test = (String)interpreter.eval("(String) getUrlDeeds();");
		  System.out.println("SUCCESS");

		}catch(Exception e){
		  System.out.println("BEANSHELL ERROR");
		}
	}

}
