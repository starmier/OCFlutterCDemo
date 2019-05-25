#pragma once

#include "OCInterfaceCFile.h"

class  InterfaceCC{
public:
	InterfaceCC(void* ocObj, OCInterfaceCFunction interfaceFunction);
	~InterfaceCC();
	
public:
	void doSomthings();
	
private:
	void* mOCObj;
	OCInterfaceCFunction mInterfaceFunction;

};
