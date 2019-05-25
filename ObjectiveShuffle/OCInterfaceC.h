#pragma once

#import <Foundation/Foundation.h>
#include "OCInterfaceCFile.h"


@interface OCInterfaceC : NSObject

@property OCInterfaceCFunction call;

- (int)dosomthing:(void *)param;//这里必须定义，否则在MyObjectDoSomethingWith会报错 unknown method

@end
