//
//  ViewController.h
//  DWPOP-UP
//
//  Created by DavidWang on 15/11/10.
//  Copyright © 2015年 DavidWang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DWPOPView.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

- (IBAction)Onclick:(id)sender;

@property (weak, nonatomic) IBOutlet DWPOPView *popview;

@end

