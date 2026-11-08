import java.io.*;
import java.util.*;
import com.jpexs.decompiler.flash.*;
import com.jpexs.decompiler.flash.tags.*;
import com.jpexs.decompiler.flash.tags.base.*;
import com.jpexs.decompiler.flash.types.*;
public class StableLabel{
 public static void main(String[] args)throws Exception{
  SWF swf=new SWF(new FileInputStream(args[0]),false);
  for(Tag a:swf.getTags().toArrayList()){
   if(a instanceof TextTag old && old.getCharacterId()==646){
    DefineEditTextTag t=new DefineEditTextTag(swf); t.characterID=646; t.bounds=old.getBounds();
    t.hasText=true; t.initialText="本地存档\n进度保存在本机";t.multiline=true;t.readOnly=true;t.noSelect=true;
    t.hasTextColor=true;t.textColor=new RGBA(255,255,255,255);t.fontHeight=280;t.hasFontClass=true;t.fontClass="Microsoft YaHei";
    t.hasLayout=true;t.align=0;t.variableName="";t.setModified(true);swf.replaceTag(a,t);
   }
   if(a instanceof DefineSpriteTag s && s.spriteId==649){
    boolean first=false;for(Tag c:s.getTags().toArrayList()){if(first)s.removeTag(c);else if(c instanceof ShowFrameTag)first=true;}
    s.frameCount=1;s.setModified(true);System.out.println("Made save label static: sprite 649, one frame");
   }
  }
  swf.saveTo(new FileOutputStream(args[1]));
 }
}
