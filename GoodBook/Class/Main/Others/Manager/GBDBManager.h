//
//  GBDBManager.h
//  GoodBook
//
//  Created by KanaanAusten on 4/22/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GBDBManager : NSObject

// 单例模式
+ (instancetype)shareManager;

// 删除数据
- (BOOL)deleteDataWithProductname:(NSString *)productname;

// 插入数据
- (BOOL)insertDataWithGoodModel:(goodsModel *)model;

// 根据appID查询单条数据
- (BOOL)selectOneDataWithAppID:(NSString *)appID;

// 查询所有数据
- (NSArray *)selectAllData;

@end
