


#import "BTChNetWorkToolHelper.h"

@implementation BTChNetWorkToolHelper


+ (instancetype)sharedNetworkToolWithScene:(NSInteger *)scene {
    
    static BTChNetWorkToolHelper *instance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
 
        NSString * headStr =[NSString stringWithFormat:@"http://open3.bantangapp.com/topic/list?app_id=com.jzyd.BanTang&app_installtime=1459047351&app_versions=5.6&channel_name=appStore&client_id=bt_app_ios&client_secret=9c1e6634ce1c5098e056628cd66a17a5&device_token=1e72d61711cbf7acd0ec9cff763a0f1f8f4978ee397803b0360fcc75911dce6e&oauth_token=80c9a548a9cf1855d3187d9508a2023c&os_versions=9.2.1&page=0&pagesize=20&scene=%zd",scene];
        NSString *footStr = @"&screensize=640&track_device_info=iPhone6%2C2&track_deviceid=A3FE54F9-6914-491A-A825-67D2FBF63297&track_user_id=2011578&v=11";
 
        
        NSString *url = [headStr stringByAppendingString:footStr];
        NSURL *baseURL = [NSURL URLWithString:url];
//        NSLog(@"%@",url);
        instance = [[self alloc] initWithBaseURL:baseURL];
        
        // 修改响应解析器能够解析的数据类型
        instance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html",nil];
    });
    
    return instance;
}

@end
