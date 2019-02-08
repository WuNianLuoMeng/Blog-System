package USER;
public class other {
	static public int ID=-1;
	static public String username=null;
	static public String date=null;
	static public String msg=null;
	static public String comment_userclass=null;
	static public String auther=null;
	public String change(String x) {
		return x;
	}
	public String solve(Comment_msg res[],String name) {
		int len=res.length;
		String text="";
		for(int i=0;i<len;i++) {
			if(res[i].getStaus()==0) {
				if(other.username.equals(name))
				{					
					text+=
				"<div>"+
				  "<ul>"+
						"<div>"+
							res[i].getComment_name()+":"+res[i].getContent()+
							"<span>"+
								"<button id="+"\""+"asd"+"\""+"style="+"\""+" margin-left:20px;border:none;background-color:transparent;"+"\""+"onclick="+"f("+"\""+res[i].getComment_name()+"\""+")"+">"+"回复"+"</button>"+							
							"</span>"+							
						"</div>"+
						"<textarea"+" id="+"\""+res[i].getComment_name()+"\""+"style="+"\""+" display:none;width: 500px; height: 100px; background-color: #efefef;resize:none;"+"\""+">"+
						"</textarea>"+										
				  "</ul>"+				
				  "<button style="+"\""+" display:none;margin-left:480px;"+"\""+"id="+"\""+res[i].getComment_name()+"\""+"onclick="+"solve("+"\""+res[i].getComment_name()+"\""+")"+">"+"确认回复"+
					"</button>"+		
				"</div>";
				}
				else {
					text+=
							"<div>"+
							  "<ul>"+
									"<div>"+
										res[i].getComment_name()+":"+res[i].getContent()+																																			
							  "</ul>"+					
							"</div>";
				}
			} else if(res[i].getStaus()==1) {
				
				if(other.username.equals(name))
				{					
					text+=
				"<div>"+
				  "<ul>"+
				  "<div>"+res[i].getComment_name()+"  回复  "+
					res[i].getUser_name()+":"+res[i].getContent()+																									
				  "</ul>"+				
				  "<button style="+"\""+" display:none;margin-left:480px;"+"\""+"id="+"\""+res[i].getComment_name()+"\""+"onclick="+"solve("+"\""+res[i].getComment_name()+"\""+")"+">"+"确认回复"+
					"</button>"+		
				"</div>";
				}
				else {
					text+=
							"<div>"+
							  "<ul>"+
							  "<div>"+res[i].getComment_name()+"  回复  "+
										res[i].getUser_name()+":"+res[i].getContent()+																																			
							  "</ul>"+					
							"</div>";
				}
				
				
			}
		}
		return text;
	}
}
