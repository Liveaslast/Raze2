import java.io.*;
import com.jpexs.decompiler.flash.*;
import com.jpexs.decompiler.flash.tags.*;
import com.jpexs.decompiler.flash.tags.base.*;
import com.jpexs.decompiler.flash.timeline.*;
public class InspectHelper{
 static void walk(Timelined t){for(Tag a:t.getTags()){if(a instanceof PlaceObjectTypeTag p && p.getInstanceName()!=null && p.getInstanceName().contains("login"))System.out.println("place "+p.getInstanceName()+" char="+p.getCharacterId());if(a instanceof DefineSpriteTag s)walk(s);}}
 public static void main(String[] args)throws Exception{SWF swf=new SWF(new FileInputStream(args[0]),false);walk(swf); for(Tag z:swf.getTags()){if(z instanceof CharacterTag cc && cc.getCharacterId()>=646 && cc.getCharacterId()<=648)System.out.println("TEXT "+z);} for(Tag a:swf.getTags()){if(a instanceof DefineSpriteTag s && s.spriteId==1164){int fr=1; for(Tag c:s.getTags()) {if(c instanceof ShowFrameTag)fr++; if(c instanceof FrameLabelTag)System.out.println("FRAME="+fr+" "+c); if(c instanceof PlaceObjectTypeTag pp)System.out.println("child="+pp.getCharacterId());}}}}
}




