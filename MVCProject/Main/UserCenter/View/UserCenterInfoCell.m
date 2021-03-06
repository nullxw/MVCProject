//
//  UserCenterInfoCell.m
//  MVCProject
//
//  Created by GJW on 16/7/28.
//  Copyright © 2016年 JW. All rights reserved.
//

#import "UserCenterInfoCell.h"

@implementation UserCenterInfoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
+ (instancetype)cellWithTableView:(UITableView *)tableView{
    // 1. 可重用标示符
    static NSString *ID = @"UserCenterInfoCell";
    // 2. tableView查询可重用Cell
    UserCenterInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    // 3. 如果没有可重用cell
    if (cell == nil) {
        //4. 从XIB加载自定义视图
        cell = [[[NSBundle mainBundle] loadNibNamed:@"UserCenterInfoCell" owner:nil options:nil] objectAtIndex:0];
    }
    cell.contentView.alpha = 0.8;
    return cell;
}
@end
