#import "OCCFile.h"
#include "CppFile.h"

#include "OCInterfaceC.h"
#include "InterfaceCC.h"

#include "CppOCFile.h"

@interface OCCFile ()
{
	CppFile* mCppFile;//换成void*方式
}

@end

@implementation OCCFile

- (id)init
{
	if (self == [super init])
	{
		printf("=======My name is OCCFile.\n ");
	}
	return self;
}

- (void)doSomethingWithCPPobj:(id)cppobj
{
	CppOCFile* cppOb = (__bridge CppOCFile*)cppobj;
	cppOb->DoSomething1();
}
//内部定义cpp对象
- (void)doSomethingWithString:(NSString*)str
{
	const char* charStr = [str UTF8String];
	std::string _str = std::string(charStr);
	mCppFile = new CppFile(std::string("My name is starimer"));
	mCppFile->DoSomething(_str);
}

- (void)testOCtoCC
{
	OCInterfaceC* OCtoC = [[OCInterfaceC alloc] init];
	void* CCPointer = (__bridge void*)OCtoC;
	InterfaceCC* cc = new InterfaceCC(CCPointer, OCtoC.call);
	cc->doSomthings();
}

-(void)dealloc
{
	delete mCppFile;
	
	[super dealloc];
}

@end
