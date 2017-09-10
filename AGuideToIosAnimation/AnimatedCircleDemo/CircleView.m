//
//  CircleView.m
//  AGuideToIosAnimation
//
//  Created by fu on 2017/8/21.
//  Copyright © 2017年 fhc. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView

+ (Class)layerClass {
    return [CircleLayer class];
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.circleLayer = [CircleLayer layer];
        self.circleLayer.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
        self.circleLayer.contentsScale = [UIScreen mainScreen].scale;
        [self.layer addSublayer:self.circleLayer];
    }
    return self;
}

@end
