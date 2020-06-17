//
//  GapView.m
//  hxxdj
//
//  Created by lyh on 2019/9/10.
//  Copyright © 2019 aisino. All rights reserved.
//

#import "GapView.h"

@implementation GapView

- (id)initWithFrame:(CGRect)frame {
    if ([super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context =UIGraphicsGetCurrentContext();
    // 设置线条的样式
    CGContextSetLineCap(context, kCGLineCapRound);
    // 填充颜色
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    double width = rect.size.width;
    double height = rect.size.height;
    double rad = 8.0;
    double Rad = 16.0;
    // 开始绘制
    CGContextBeginPath(context);
    // 设置绘制起点
    CGContextMoveToPoint(context,rad,0);
    CGContextAddLineToPoint(context,width - rad,0);
    /// 右上边角
    CGContextAddArc(context, width - rad, rad, rad, -M_PI_2, 0, 0);
    /// 右中半圆
    CGContextAddArc(context, width, height/2, Rad, -M_PI_2, M_PI_2, -1);
    CGContextAddLineToPoint(context,width,height -rad);
    /// 右下边角
    CGContextAddArc(context, width - rad, height - rad, rad, 0,M_PI_2,0);
    CGContextAddLineToPoint(context,rad,height);
    /// 左下边角
    CGContextAddArc(context, rad, height - rad, rad, M_PI_2, M_PI, 0);
    /// 左中半圆
    CGContextAddArc(context, 0, height/2, Rad, M_PI_2, -M_PI_2, -1);
    CGContextAddLineToPoint(context,0,rad);
    /// 左上边角
    CGContextAddArc(context, rad, rad, rad, M_PI, -M_PI_2, 0);
    // 关闭图像
    CGContextClosePath(context);
    // 绘制
    CGContextFillPath(context);
}

@end
