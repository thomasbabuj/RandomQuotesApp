//
//  ViewController.m
//  QuoteGen
//
//  Created by Publicis on 14/7/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //Setup the textview with rounded corners
    self.quoteText.layer.cornerRadius = 10.0f;
    
    // 1- Add array of personal quotes
    self.myQuotes = @[
                      @"Live and let live",
                      @"Dont't cry over split milk",
                      @"Always look on the bright side of life",
                      @"Nobody's Perfect",
                      @"Can't see the woods fro the trees",
                      @"Better to have loved and lost then not loved at all",
                      @"The early bird catches the worm",
                      @"As slow as a wet week"
                      ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Adding action after the button Tapped
-(IBAction)quoteButtonTapped:(id)sender {

    // 1 - Get nos of rows in a array
    int array_tot = [self.myQuotes count];
    
    // 2 - Get random index
    int index = (arc4random() % array_tot);
    
    // 3 - Get the quote string for the index
    NSString *my_quote = self.myQuotes[index];
    
    //4 - Dispaly the quote in the textview
    self.quoteText.text = [NSString stringWithFormat:@"Quote: \n\n%@", my_quote];
}

@end
