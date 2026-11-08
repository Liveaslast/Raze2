import java.io.*;
import com.jpexs.decompiler.flash.*;
import com.jpexs.decompiler.flash.abc.avm2.instructions.*;
public class SaveFix{
 public static void main(String[] ar)throws Exception{
 SWF s=new SWF(new FileInputStream(ar[0]),false);int count=0;
 for(var t:s.getAbcList()){var a=t.getABC();var b=a.findBodyByClassAndName("Game","destroy");if(b==null)continue;var c=b.getCode();
 for(int i=c.code.size()-1;i>=0;i--){var x=c.code.get(i);if(x.definition.instructionName.equals("setproperty") && a.constants.getString(a.constants.getMultiname(x.operands[0]).name_index).equals("campStage")){
 int sd=a.constants.getPublicQnameId("SD",true), save=a.constants.getPublicQnameId("saveGame",true);
 c.insertInstruction(i+1,new AVM2Instruction(0,0x60,new int[]{sd}),b);
 c.insertInstruction(i+2,new AVM2Instruction(0,0x4f,new int[]{save,0}),b);count++;
 }}b.setCode(c);b.max_stack+=1;((com.jpexs.decompiler.flash.tags.Tag)t).setModified(true);
 }if(count!=2)throw new RuntimeException("Expected 2 progress writes, got "+count);s.saveTo(new FileOutputStream(ar[1]));System.out.println("Patched progress saves: "+count);
 }
}
