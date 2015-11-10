//
//  ViewController.m
//  DWPOP-UP
//
//  Created by DavidWang on 15/11/10.
//  Copyright © 2015年 DavidWang. All rights reserved.
//

#import "ViewController.h"
#import "MenuView.h"
#import "MenuCell.h"

@interface ViewController (){
    MenuView *meneview;
    NSMutableArray *data;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    data = [NSMutableArray new];
    for (int i = 0; i < 5; i++) {
        [data addObject:[NSString stringWithFormat:@"测试%d",i]];
    }
    // Do any additional setup after loading the view, typically from a nib.
    [self initView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapOnclick)];
    [_popview addGestureRecognizer:tap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initView{
    meneview = [[[NSBundle mainBundle] loadNibNamed:@"MenuView" owner:self options:nil] firstObject];
    meneview.frame = CGRectMake(0, -_popview.frame.size.height, _popview.frame.size.width, _popview.frame.size.height);
    meneview.tableView.dataSource = self;
    meneview.tableView.delegate = self;
    [_popview setAdapterView:meneview];
}

- (IBAction)Onclick:(id)sender {
    [_popview showanimation];
}

-(void)tapOnclick{
    [_popview showanimation];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return data.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"MenuCell";
    MenuCell *cell = (MenuCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
       cell = [[[NSBundle mainBundle] loadNibNamed:identifier owner:nil options:nil] firstObject];
    }
    cell.showLab.text = [data objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


@end
