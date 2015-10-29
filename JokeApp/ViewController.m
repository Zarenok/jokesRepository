//
//  ViewController.m
//  JokeApp
//
//  Created by Admin on 29.10.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"
#import "JokeCollection.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *jokeLabel;
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;

@end

@implementation ViewController {
    JokeCollection *jokes;
}
- (IBAction)onBackListener:(id)sender {
    [_jokeLabel setText:[jokes previous]];
}
- (IBAction)onNextListener:(id)sender {
    [_jokeLabel setText:[jokes next]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [_jokeLabel setText:@"Click to get joke"];
    jokes = [[JokeCollection alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
