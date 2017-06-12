
#import "ViewController.h"
#import "UIDevice-Hardware.h"
#import "NSDate+extend.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //得到当前手机信息
//    [self getCurrentDeviceInfo];
    
    
    NSDate *date = [NSDate date];
    //根据时间得到具体信息
    NSDictionary *dateInfoDict = [NSDate getDateInfoFromDate:date];
    NSLog(@"%@",dateInfoDict);
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)getCurrentDeviceInfo{
    
    UIDevice *device = [UIDevice currentDevice];
    //手机型号
    NSString *platformString = [device platformString];
    NSLog(@"%@",platformString);
    
    //手机总的内存
    NSNumber *totalDiskSpace = [device totalDiskSpace];
     NSLog(@" = %@",totalDiskSpace);
    
    //手机可用的内存
    NSUInteger totalMemory = [device totalMemory];
    NSLog(@" = %lud",totalMemory);
    
    //手机余下的内存
    NSNumber *freeDiskSpace = [device freeDiskSpace];
    NSLog(@" = %@",freeDiskSpace);
    //手机的名称
    NSString *name = [device name];
    NSLog(@"name = %@",name);
    
    //手机类型
    NSString *model = [device model];
    NSLog(@"model = %@",model);
    
    //手机的版本
    NSString *systemVersion = [device systemVersion];
    NSLog(@"systemVersion = %@",systemVersion);
    
    //设备唯一的标识符
    NSUUID *identifierForVendor = [device identifierForVendor];
    NSLog(@"identifierForVendor = %@",identifierForVendor);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
