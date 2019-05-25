#include "InterfaceCC.h"
#include <stdio.h>


InterfaceCC::InterfaceCC(void* ocObj, OCInterfaceCFunction interfaceFunction)
{
	mOCObj = ocObj;
	mInterfaceFunction = interfaceFunction;
}

InterfaceCC::~InterfaceCC()
{
	
}

void InterfaceCC::doSomthings()
{
	printf("there is c++.\n");
	
	mInterfaceFunction(mOCObj,NULL);
}
