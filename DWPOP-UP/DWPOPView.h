//
//  DWPOPView.h
//  DWPOP-UP
//
//  Created by DavidWang on 15/11/10.
//  Copyright © 2015年 DavidWang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pop.h"

@interface DWPOPView : UIView

-(void)setAdapterView:(UIView *)addview;
-(void)setAdapterView:(UIView *)addview springBounciness:(CGFloat) springBounciness springSpeed:(CGFloat) springSpeed;
-(void)showanimation;
@end
