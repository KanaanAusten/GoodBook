//
//  GBBooksModel.h
//  GoodBook
//
//  Created by KanaanAusten on 4/22/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GBBooksModel : NSObject

//书名
@property (nonatomic,copy) NSString *bookname;
//页数
@property (nonatomic,copy) NSString *bookpage;
//封面图
@property (nonatomic,copy) NSString *bookimage;
//作者
@property (nonatomic,copy) NSString *bookauthor;
//出版社
@property (nonatomic,copy) NSString *bookpress;
//价格
@property (nonatomic,copy) NSString *bookprice;
//描述
@property (nonatomic,copy) NSString *bookdesc;
//收藏数
@property (nonatomic,copy) NSString *booklikenum;
//折扣
@property (nonatomic,copy) NSString *bookdiscount;

@end
