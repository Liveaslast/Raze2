import java.io.*;
import com.jpexs.decompiler.flash.*;
import com.jpexs.decompiler.flash.abc.*;
public class CampaignFix {
 static void u(ByteArrayOutputStream o,int n){do{int b=n&127;n>>>=7;o.write(b|(n>0?128:0));}while(n>0);}
 static ABC a;
 static void op(ByteArrayOutputStream o,int code,String name){o.write(code);u(o,a.constants.getPublicQnameId(name,true));}
 static void mc(ByteArrayOutputStream o){o.write(0xd0);op(o,0x66,"menfr");}
 public static void main(String[] ar)throws Exception{
 SWF swf=new SWF(new FileInputStream(ar[0]),false);
 for(var t:swf.getAbcList()){
 a=t.getABC();var b=a.findBodyByClassAndName("Menu","EnterFrame");if(b==null)continue;
 var check=new ByteArrayOutputStream();mc(check);op(check,0x66,"currentLabel");mc(check);op(check,0x66,"__offlineInitializedLabel");
 var run=new ByteArrayOutputStream();run.write(0xd0);op(run,0x4f,"init");run.write(0);mc(run);mc(run);op(run,0x66,"currentLabel");op(run,0x61,"__offlineInitializedLabel");
 check.write(0x13);int n=run.size();check.write(n&255);check.write((n>>8)&255);check.write((n>>16)&255);check.write(run.toByteArray());
 check.write(b.getCodeBytes());b.setCodeBytes(check.toByteArray());b.max_stack=Math.max(b.max_stack,4);((com.jpexs.decompiler.flash.tags.Tag)t).setModified(true);System.out.println("Added menu initialization on label change");
 }
 swf.saveTo(new FileOutputStream(ar[1]));
 }
}

