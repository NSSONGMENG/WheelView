//
//  FXWheellV.h
//  FXApp
//
//  Created by Seven on 2017/7/17.
//  Copyright © 2017年 wsz. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 轮播图 */
@interface FXWheellV : UIView

/** 切换每一页的时间间隔 */
@property (nonatomic, assign) CGFloat   timeSpace;
/** 图片url／name */
@property (nonatomic, strong) NSArray   * items;


@end

@interface FXWheellCell : UICollectionViewCell

/** image url / image name */
@property (nonatomic, copy) NSString    * imgPath;

@end
