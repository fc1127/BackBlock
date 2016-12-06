//
//  backViewController.m
//  addself
//
//  Created by 方超 on 16/11/11.
//  Copyright © 2016年 FC. All rights reserved.
//

#import "backViewController.h"

@implementation backViewController
//自己的想法
-(backViewController *(^)(NSString *, NSDictionary *))load{

    return ^(NSString * url,NSDictionary * parmers){
    
        self.responsdObject=[NSString stringWithFormat:@"%@++++++%@",url,[parmers objectForKey:@"name"]];
        return self;
        
    };
}
- (instancetype)initWithUrl:(NSString *)urlstr dic:(NSDictionary *)dic
{
    self = [super init];
    if (self) {
        self.load(urlstr,dic);
    }
    return self;
}
//单例
+(backViewController*)requestData{

    static backViewController * back;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!back){
            back=[[backViewController alloc]init];
        }
    });
    return back;
}
-(void)request:(NSString *)url parmars:(NSDictionary *)dic SBlock:(void (^)(id))Sblock FBlock:(void (^)(NSError *))Fblock{
    Sblock(@"请求的数据放在此处返回controller，此处接受任意类型");
    NSError * error=nil;
    Fblock(error);
}


@end




