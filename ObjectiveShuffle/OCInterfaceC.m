#import "OCInterfaceC.h"
#include "OCInterfaceCFile.h"

void MyObjectDoSomethingWith(void* obj, void* param)
{
	[(__bridge id)obj dosomthing:param];
}


@implementation OCInterfaceC

- (id)init
{
	self = [super init];
	
	if (self)
	{
		_call = MyObjectDoSomethingWith;
	}
	
	return self;
}


- (int)dosomthing:(void *)param
{
	printf("hei, there is OC .....\n");
	
	return 0;
}


@end
