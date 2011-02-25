using lwc11;
using lwc11.model0;
using settings;

namespace lwc.javaGenerator
{
    transformation Main()
    {
        Model model = lwc11.model0.m0;
        GenerationSettings set = generationSettings.sets;
        
        foreach(Entity ent in model.Entities)
        {
        	if (set.TargetLanguage == Language.Java) //Conditional generation based in a Settings model
        	{
	            javaPojo.genPojo(ent) > "$ent.Name; format="Pascalcase"$.java";
        	}
	    }		
    }
}
