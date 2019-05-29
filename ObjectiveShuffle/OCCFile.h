#pragma once

#import <Foundation/Foundation.h>
//#include "CppFile.h"


@interface OCCFile : NSObject
{
//	CppFile* mCppFile;//编译不过
//	id mCppFile;//也可以修改成这样子，😄
//	void* mCppFile;
}

- (void)doSomethingWithString:(NSString*)str;

- (void)doSomethingWithCPPobj:(id)cppobj;//	CppFile* mCppFile;//编译不过

- (void)testOCtoCC;

@end
 
