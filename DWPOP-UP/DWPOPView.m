//
//  DWPOPView.m
//  DWPOP-UP
//
//  Created by DavidWang on 15/11/10.
//  Copyright © 2015年 DavidWang. All rights reserved.
//

#import "DWPOPView.h"

@implementation DWPOPView{
    UIView *moveview;
    BOOL is_show;
    CGFloat springBounciness;
    CGFloat springSpeed;
}

-(void)setAdapterView:(UIView *)addview{
    springSpeed = 6;
    springBounciness = 12;
    moveview = addview;
    is_show = YES;
    [self addSubview:moveview];
}

-(void)setAdapterView:(UIView *)addview springBounciness:(CGFloat) sb springSpeed:(CGFloat) ss{
    [self setAdapterView:addview];
    springSpeed = ss;
    springBounciness = sb;
}

-(void)showanimation{
    if (is_show) {
        self.alpha = 1.0;
        POPSpringAnimation *anim = [POPSpringAnimation animationWithPropertyNamed:kPOPViewCenter];
        anim.toValue = [NSValue valueWithCGPoint:CGPointMake(self.frame.size.width/2, self.frame.size.height/2)];
        anim.springBounciness = springBounciness;
        anim.springSpeed = springSpeed;
        [moveview pop_addAnimation:anim forKey:@"center"];
        is_show = !is_show;
        [self setHidden:is_show];
    }else{
        POPSpringAnimation *anim = [POPSpringAnimation animationWithPropertyNamed:kPOPViewCenter];
        anim.toValue = [NSValue valueWithCGPoint:CGPointMake(self.frame.size.width/2, -self.frame.size.height/2)];
        anim.springBounciness = springBounciness;
        anim.springSpeed = springSpeed;
        [moveview pop_addAnimation:anim forKey:@"center"];
        is_show = !is_show;
        [UIView animateWithDuration:0.5 animations:^{
            self.alpha = 0.0;
        } completion:^(BOOL finished) {
            [self setHidden:is_show];
        }];
    }
}

-(void)setDWBackgroundColor:(UIColor *)color{
    [self setBackgroundColor:color];
}

@end
