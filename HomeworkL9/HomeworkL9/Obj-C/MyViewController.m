//
//  MyViewController.m
//  HomeworkL9
//
//  Created by Georgi Teoharov on 21.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

#import "MyViewController.h"
#import "HomeworkL9-Swift.h"

@interface MyViewController ()

@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *hashedPassLabel;


@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.userNameLabel.text = @"Hello";
    // Do any additional setup after loading the view.
    
    [RequestManager readData];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupLabels:(NSString *) username withAge: (NSString *) age withHashedPass: (NSString *) hashedPass {
    self.userNameLabel.text = username;
    self.ageLabel.text = age;
    self.hashedPassLabel.text= hashedPass;
}

- (IBAction)objcButtonTapped:(UIButton *)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}


@end
