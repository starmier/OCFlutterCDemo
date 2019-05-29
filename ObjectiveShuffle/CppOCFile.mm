#include "CppOCFile.h"
#include "OCCFile.h"

CppOCFile::CppOCFile(const std::string name)
{
	printf("%s.\n", name.c_str());
}

CppOCFile::~CppOCFile()
{
	OCCFile* ocobj = (__bridge id)mOCObj;
	mOCObj = NULL;
	ocobj = nil;
}

void CppOCFile::DoSomething(const std::string& str)
{
	printf("%s.\n", str.c_str());
	
	[(__bridge OCCFile*)mOCObj doSomethingWithString:@"c++ fangwen oc ....\n"];
	
	[(__bridge OCCFile*)mOCObj doSomethingWithCPPobj:(__bridge id)this];
}

void CppOCFile::DoSomething1()
{
	printf("---------cpp to oc to cpp....\n", );
}
