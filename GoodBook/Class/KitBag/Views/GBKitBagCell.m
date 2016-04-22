//
//  GBKitBagCell.m
//  GoodBook
//
//  Created by KanaanAusten on 4/21/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import "GBKitBagCell.h"

@interface GBKitBagCell ()
@property (nonatomic,weak) UIImageView *pictureImageView;
@property (nonatomic,weak) UILabel *titleLbl;
@property (nonatomic,weak) UILabel *textLbl;
@end

@implementation GBKitBagCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+(instancetype)kitbagCellWithTableView:(UITableView *)tableView{
    static NSString *ID = @"kitbag_cell";
    GBKitBagCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[GBKitBagCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}

-(void)setKitbagDataFrame:(GBKitBagDateFrameModel *)kitbagDataFrame{
    _kitbagDataFrame = kitbagDataFrame;
    [self settingData];
    [self settingFrame];
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //1. 图片
        UIImageView *pictureImageView = [[UIImageView alloc]init];
        [self.contentView addSubview:pictureImageView];
        _pictureImageView = pictureImageView;
        
        //2. title
        UILabel *titleLbl = [[UILabel alloc]init];
        titleLbl.font = nameFont;
        titleLbl.numberOfLines = 0;
        [self.contentView addSubview:titleLbl];
        _titleLbl = titleLbl;
        
        //3.text
        UILabel *textLbl = [[UILabel alloc]init];
        textLbl.font = textFont;
        textLbl.numberOfLines = 0;
        [self.contentView addSubview:textLbl];
        _textLbl = textLbl;
    }
    return self;
}

-(void)settingData{
    GBKitBagDateModel *model = self.kitbagDataFrame.kitbag;
    self.pictureImageView.image = [UIImage imageNamed:model.picture];
    self.titleLbl.text = model.goodname;
    self.textLbl.text = model.introduce;
}

-(void)settingFrame{
    self.pictureImageView.frame = self.kitbagDataFrame.pictureFrame;
    self.titleLbl.frame = self.kitbagDataFrame.goodnameFrame;
    self.textLbl.frame = self.kitbagDataFrame.introduceFrame;
}

@end
