//
//  GBKitBagDateModel.h
//  GoodBook
//
//  Created by KanaanAusten on 4/21/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GBKitBagDateModel : NSObject

@property (nonatomic,copy) NSString *goodname;
@property (nonatomic,copy) NSString *introduce;
@property (nonatomic,copy) NSString *picture;
@property (nonatomic,assign,getter=isPrivate) BOOL private;

-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)kitbagDataWithDict:(NSDictionary *)dict;

@end
