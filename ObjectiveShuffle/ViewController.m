#import "ViewController.h"
#import "OCCFile.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	//.mm 文件
	OCCFile* occFile = [OCCFile new];
	[occFile doSomethingWithString:@"How do you do!"];
	
	
	//通过全局函数指针作为接口进行 OC 和 C 通信
	[occFile testOCtoCC];
	
}


@end
