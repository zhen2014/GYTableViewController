//
//  RefreshBannerViewCell.m
//  GYTableViewController
//
//  Created by 高扬 on 2018/3/23.
//  Copyright © 2018年 高扬. All rights reserved.
//

#import "RefreshBannerViewCell.h"
#import "SDCycleScrollView.h"

@interface RefreshBannerViewCell()<SDCycleScrollViewDelegate>

@property(nonatomic,retain)SDCycleScrollView *cycleScrollView;

@end

@implementation RefreshBannerViewCell

-(SDCycleScrollView *)cycleScrollView{
    if (!_cycleScrollView) {
        _cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectZero delegate:self placeholderImage:nil];
        _cycleScrollView.autoScrollTimeInterval = 5.0;//间隔5秒轮播
        _cycleScrollView.bannerImageViewContentMode = UIViewContentModeScaleAspectFill;
//        _cycleScrollView.currentPageDotImage = [UIImage imageNamed:@"banner_line_selected"];
//        _cycleScrollView.pageDotImage = [UIImage imageNamed:@"banner_line"];
//        _cycleScrollView.pageControlDotSize = CGSizeMake(20, 20);
        _cycleScrollView.pageControlStyle = SDCycleScrollViewPageContolStyleAnimated;
        [self.contentView addSubview:_cycleScrollView];
    }
    return _cycleScrollView;
}

-(void)showSubviews{
    self.cycleScrollView.frame = self.contentView.bounds;
    self.cycleScrollView.imageURLStringsGroup = GET_CELL_ARRAY_DATA([NSString class]); //self.data;
}


@end
