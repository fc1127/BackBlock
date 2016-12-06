//
//  backViewController.h
//  addself
//
//  Created by 方超 on 16/11/11.
//  Copyright © 2016年 FC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface backViewController : NSObject

@property(nonatomic,assign)int he;
@property id responsdObject;

-(backViewController*(^)(NSString * parmas,NSDictionary * parmers))load;

-(instancetype)initWithUrl:(NSString * )urlstr dic:(NSDictionary * )dic;
//单例
+(backViewController*)requestData;
-(void)request:(NSString * )url parmars:(NSDictionary *)dic SBlock:(void(^)(id respondObject))Sblock FBlock:(void(^)(NSError * errorMessage))Fblock;

@end
