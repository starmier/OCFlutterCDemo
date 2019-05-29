#include "CppFile.h"

CppFile::CppFile(const std::string name)
{
	printf("%s.\n", name.c_str());
}

CppFile::~CppFile()
{
	
}

void CppFile::DoSomething(const std::string& str)
{
	printf("%s.\n", str.c_str());
}
