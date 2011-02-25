using lwc11;
using lwc11.model0;

namespace lwc.javaGenerator
{
    transformation Main()
    {
        Model model = lwc11.model0.m0;
        foreach(Entity ent in model.Entities)
        {
            javaPojo.genPojo(ent) > "src/java/$ent.Name; format="Pascalcase"$.java";
            
            //C# code generation		
            csharpPoco.genPoco(ent) > "src/cs/$ent.Name; format="Pascalcase"$.cs";
	    }		
    }
}
