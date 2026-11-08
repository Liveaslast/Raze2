import java.io.*;import com.jpexs.decompiler.flash.*;
public class AmmoTest{
 static void u(ByteArrayOutputStream o,int n){do{int b=n&127;n>>>=7;o.write(b|(n>0?128:0));}while(n>0);}
 public static void main(String[] ar)throws Exception{SWF s=new SWF(new FileInputStream(ar[0]),false);for(var t:s.getAbcList()){var a=t.getABC();var b=a.findBodyInstanceInitializerByClass("Game");if(b==null)continue;var o=new ByteArrayOutputStream();String[] names={"Stats_Guns","gunOb","Stats_Guns","gunOb",ar[2],"pistol"};int[] ops={0x60,0x66,0x60,0x66,0x66,0x61};for(int i=0;i<6;i++){o.write(ops[i]);u(o,a.constants.getPublicQnameId(names[i],true));}o.write(b.getCodeBytes());b.setCodeBytes(o.toByteArray());b.max_stack+=2;((com.jpexs.decompiler.flash.tags.Tag)t).setModified(true);}s.saveTo(new FileOutputStream(ar[1]));}
}
