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
    
    // 2- Load movie quotes from plist file
    NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:@"quotes" ofType:@"plist" ];
    self.movieQuotes = [NSMutableArray arrayWithContentsOfFile:plistCatPath];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Adding action after the button Tapped
-(IBAction)quoteButtonTapped:(id)sender {

    // Loads values from myQuotes array if user selects "Mine" in SegmentControl
    if ( self.quoteOpt.selectedSegmentIndex == 2 ) {
        
         // 1 - Get nos of rows in a array
         int array_tot = [self.myQuotes count];
         
        /*
         // 2 - Get random index
         int index = (arc4random() % array_tot);
         
         // 3 - Get the quote string for the index
         NSString *my_quote = self.myQuotes[index];
         
         //4 - Dispaly the quote in the textview
         self.quoteText.text = [NSString stringWithFormat:@"Quote: \n\n%@", my_quote];
         */
        
        // Concatenate all your quotes together
        
        // 1.2 -Initialize string for concatenated quotes
        NSString *all_my_quotes = @"";
        NSString *my_quote = nil;
        
        //1.3 - Iterate through array
        for(int x=0; x < array_tot; x++) {
            my_quote = self.myQuotes[x];
            all_my_quotes = [NSString stringWithFormat:@"%@ \n %@\n", all_my_quotes, my_quote];
        }
        
        self.quoteText.text = [NSString stringWithFormat:@"%@", all_my_quotes];
        
        
        
    } else {
    
        // 2.1 determine category
        NSString *selectedCategory = @"classic";
        if ( self.quoteOpt.selectedSegmentIndex == 1 ) {
            selectedCategory = @"modern";
        }
        
        
        // 2.2 filter array by category using predicate
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"category == %@", selectedCategory];
        NSArray *filteredArray = [self.movieQuotes filteredArrayUsingPredicate:predicate];
        
        // 2.3 get total nos in filtered array
        int filteredArrayCount = [filteredArray count];
        
        if (filteredArrayCount > 0) {
        
            // 2.4 get random index
            int index = (arc4random() % filteredArrayCount);
        
            // 2.5 Get the quote string for the index
            NSString *quote = filteredArray[index][@"quote"];
            
            // 2.6 adding source value if there is any
            NSString *source = [[filteredArray objectAtIndex:index] valueForKey:@"source"];
            if  ( ![source length] == 0) {
                quote = [NSString stringWithFormat:@"%@ \n\n (%@)", quote, source];
            }
        
            // 2.7 adding category specific text
            if ( [selectedCategory isEqualToString:@"classic"] ) {
                quote = [NSString stringWithFormat:@"From Classic Movie \n\n %@", quote];
            } else {
                quote = [NSString stringWithFormat:@"Movie Quote \n\n %@", quote];
            }
            
            
            // 2.8 added some extra text if the quote is from Harry Potter
            if ( [source hasPrefix:@"Harry"] ) {
                quote = [NSString stringWithFormat:@"Harry Rocks!! \n\n %@", quote];
            }
            //2.7  Dispaly the quote in the textview
            self.quoteText.text = quote;
            
        } else {
            self.quoteText.text = [NSString stringWithFormat:@"Sorry, No Quotes to display."];
        }
    }
    

}

@end
