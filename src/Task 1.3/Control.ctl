using lwc11;
using lwc11.model0;
using db;
using deriveDatabase;

namespace control
{
	transformation Main()
	{
		Model model = m0;
	
		model > "sourceModel.ess";
		Schema s0 = DeriveDB(model);
		s0 > "schemaModel.ess";	
	}
}