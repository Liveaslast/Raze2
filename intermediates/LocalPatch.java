import java.io.*;
import com.jpexs.decompiler.flash.SWF;
import com.jpexs.decompiler.flash.abc.*;
import com.jpexs.decompiler.flash.abc.types.*;
public class LocalPatch {
 static void u(ByteArrayOutputStream o,int n){ do { int b=n&127; n>>>=7; o.write(b|(n>0?128:0)); }while(n>0); }
 public static void main(String[] args) throws Exception {
  SWF swf=new SWF(new FileInputStream(args[0]),false);
  for(var tag:swf.getAbcList()) {
   ABC abc=tag.getABC();
   for(String name:new String[]{"Init","displayLoginInfo","showLogin","setLoginForMenu"}) {
    MethodBody b=abc.findBodyByClassAndName("AGI",name);
    if(b!=null){b.setCodeBytes(new byte[]{0x47}); b.exceptions=new ABCException[0]; System.out.println("Disabled AGI."+name); ((com.jpexs.decompiler.flash.tags.Tag)tag).setModified(true);}
   }
   MethodBody load=abc.findBodyByClassAndName("SD","loadGame");
   if(load!=null){
    var out=new ByteArrayOutputStream();
    out.write(0x60); u(out,abc.constants.getPublicQnameId("SD",true));
    out.write(0x46); u(out,abc.constants.getPublicQnameId("getNew",true)); out.write(0);
    out.write(new byte[]{0x11,1,0,0,0x47});
    out.write(load.getCodeBytes()); load.setCodeBytes(out.toByteArray());
    ((com.jpexs.decompiler.flash.tags.Tag)tag).setModified(true);
    System.out.println("Guarded SD.loadGame for first run");
   }
  }
  swf.saveTo(new FileOutputStream(args[1]));
 }
}


