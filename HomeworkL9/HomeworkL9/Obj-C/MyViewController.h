//
//  MyViewController.h
//  HomeworkL9
//
//  Created by Georgi Teoharov on 21.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController

@property NSString * myString;

- (void)setupLabels:(NSString *) username
            withAge: (NSString *) age
     withHashedPass: (NSString *) hashedPass;

@end
