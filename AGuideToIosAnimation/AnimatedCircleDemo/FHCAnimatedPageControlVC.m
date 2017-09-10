//
//  FHCAnimatedPageControlVC.m
//  AGuideToIosAnimation
//
//  Created by fu on 2017/8/20.
//  Copyright © 2017年 fhc. All rights reserved.
//


#import "FHCAnimatedPageControlVC.h"
#import "CircleView.h"

#define kWidth [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height

@interface FHCAnimatedPageControlVC ()

@property (strong, nonatomic) IBOutlet UILabel *currentValueLabel;
@property (strong, nonatomic) IBOutlet UISlider *mySlider;
@property (nonatomic, retain) CircleView * cv;

@end

@implementation FHCAnimatedPageControlVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    self.currentValueLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, kHeight-70, 200, 20)];
    [self.view addSubview:self.currentValueLabel];
    
    self.mySlider = [[UISlider alloc] initWithFrame:CGRectMake(10, kHeight-40, 200, 20)];
    self.mySlider.value = 0.5;
    [self.view addSubview:self.mySlider];
    [self.mySlider addTarget:self action:@selector(valuechanged:) forControlEvents:UIControlEventValueChanged];
    
    self.cv = [[CircleView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 320/2, self.view.frame.size.height/2 - 320/2, 320, 320)];
    [self.view addSubview:self.cv];
    
    
    self.currentValueLabel.text = [NSString stringWithFormat:@"Current:  %f",_mySlider.value];
    //首次进入
    self.cv.circleLayer.progress = 0.5;
}

- (void)valuechanged:(UISlider *)slider {
    self.currentValueLabel.text = [NSString stringWithFormat:@"Current:  %f",slider.value];
    self.cv.circleLayer.progress = slider.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
