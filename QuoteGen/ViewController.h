//
//  ViewController.h
//  QuoteGen
//
//  Created by Publicis on 14/7/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController

//Adding a new array variable
@property (nonatomic,strong) NSArray *myQuotes;

//To store quotes from movies
@property (nonatomic, strong) NSMutableArray *movieQuotes;

// Adding the TextView reference
@property (nonatomic, strong) IBOutlet UITextView *quoteText;

// this method will be called whenever the button is tapped
-(IBAction)quoteButtonTapped:(id)sender;

// Adding the reference to the segmentedControll
@property (nonatomic, strong) IBOutlet UISegmentedControl *quoteOpt;


@end
