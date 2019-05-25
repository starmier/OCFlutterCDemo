#pragma once

#include <string>

//using std::string;


class CppFile {
public:
	CppFile(const std::string name);
	~CppFile();
	
	
public:
	void* mOCObj;
	
public:
	void DoSomething(const std::string& str);
};
