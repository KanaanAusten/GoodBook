//
//  GBKitBagDateModel.m
//  GoodBook
//
//  Created by KanaanAusten on 4/21/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import "GBKitBagDateModel.h"

@interface GBKitBagDateModel ()

@end

@implementation GBKitBagDateModel

-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype)kitbagDataWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}

@end
