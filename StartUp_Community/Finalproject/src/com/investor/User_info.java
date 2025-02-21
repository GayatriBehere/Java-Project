package com.investor;



public class User_info {
	static int number;
	 static String name;
	 static String city;
	 static String address;
	 static String email;
	 static String password;
	 static String status;
	static void get(String a,int b,String c,String d,String e,String f, String s){
		 name=a;
		 number=b;
		 city=c;
		 address=d;
		 email=e;
		 password=f;
		 status=s;
		 
	}
	static String setname(){
		return(name);
	}
	static int setnum(){
		return(number);
	}

	static String setcity(){
		return(name);
	}
	static String setaddress(){
		return(address);
		
	}
	static String setemail(){
			return(email);
		}
	static String setpass(){
		return(password);
	}
	static String setstatus(){
		return(status);
	}
}
