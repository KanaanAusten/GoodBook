//
//  GBKitBagViewController.m
//  GoodBook
//
//  Created by KanaanAusten on 4/21/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import "GBKitBagViewController.h"
#import "GBKitBagDateModel.h"
#import "GBKitBagDateFrameModel.h"
#import "GBKitBagCell.h"

@interface GBKitBagViewController ()

@property (nonatomic,strong) NSArray *kitbagFrames;

@end

@implementation GBKitBagViewController

-(NSArray *)kitbagFrames{
    if (_kitbagFrames == nil) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"KitBagData.plist" ofType:nil];
        NSArray *arrayDict = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *arrayModels = [NSMutableArray array];
        
        for (NSDictionary *dict in arrayDict) {
            // 创建一个数据模型
            GBKitBagDateModel *model = [GBKitBagDateModel kitbagDataWithDict:dict];
            
            // 创建一个frame 模型
            // 创建了一个空得frame模型
            GBKitBagDateFrameModel *modelFrame = [[GBKitBagDateFrameModel alloc] init];
            
            // 把数据模型赋值给了modeFrame模型中的weibo属性
            modelFrame.kitbag = model;
            
            
            [arrayModels addObject:modelFrame];
        }
        _kitbagFrames = arrayModels;
    }
    return _kitbagFrames;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    UIBarButtonItem *rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(shop) image:@"ShoppingBag" highlightImage:@"ShoppingBag"];
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    
}

-(void)shop{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.kitbagFrames.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 1. 获取模型数据
    GBKitBagDateFrameModel *model = self.kitbagFrames[indexPath.row];
    
    
    // 2. 创建单元格
    GBKitBagCell *cell = [GBKitBagCell kitbagCellWithTableView:tableView];
    
    // 3. 设置单元格数据
    cell.kitbagDataFrame = model;
    
    // 4. 返回单元格
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GBKitBagDateFrameModel *kitbagFrame = self.kitbagFrames[indexPath.row];
    return kitbagFrame.rowHeight;
}

@end
