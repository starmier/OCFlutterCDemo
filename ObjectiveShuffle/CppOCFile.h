#pragma once

#include <string>

//using std::string;


class CppOCFile {
public:
	CppOCFile(const std::string name);
	~CppOCFile();
	
	
public:
	void* mOCObj;
	
public:
	void DoSomething(const std::string& str);
	void DoSomething1();
};
