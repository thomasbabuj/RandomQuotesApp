RandomQuotesApp
===============

This is a Simple app which shows Random Quotes from a stored list.  This app is created while learning Objective-C

The first part tutorial covers following Objective-C aspects :

   Variables 
   Arrays
   Property List
   Strings
   Predicates
   Random selection
   Simple interface objects and events

AppDelegage contains the code that initiates the app.

.m is an implementation file and .h contains the class declaration

Creating Variables:

Adding property for an array of quotes

so to create a variable,

you need 

1)  @property keyword 
2)  property attributes
3)  type of the property
4)  property name

@property (nonatomic, strong) NSArray *myQuotes;

nonatomic - increases performance at the cost of thread-safety
strong    - indicates that a pointer to the specified variable will stay in memory as long as the object that holds the pointer exists.

Atomic reference counting will take care of the memory management. so now we dont need to @synthesize the property, and in the really old days you had to manually declare your instance variables as well.

NSArray and NSMutableArray Difference 
  -  Can't add or remove items to an NSArray after you create it, but you can add or remove items from NSMutableArray whenever you want.

ViewDidLoad is the method that executes when the view(screen) is frist created.

Array Syntax @[item1, item2, item3].

To create strings in Objective-C you need to prefix them with the @ symbol.

To display random quotes to the screen, you need two things. 

  - A reference to the Textview so you can set the text appropriately and 

  - Notification when the button is tapped.

  Using IBOutlet and IBAction keywords we will connect what goes on in the interface with your code.

  @property (nonatomic, strong) IBOutlet UITextView *quoteText;

     - IBOutlet means that quoteText is an object that can be linked to an interface elementn on the XIB file, so that tht view controller can access ( or change ) properties of the interface element.

  -(IBAction)quoteButtonTapped:(id)sender;

  	- (dash) indicates you are defining an instance method.
  	IBAction has a special property - it makes the method as something to you can connect to an action on a UI element.
  	Id is a special type that means "any object that derives from NSObject". 

  Syntax to calling a method in Objective-C

  [ <name of the object you're calling the methoed on>  <name of the method you're calling>];

  [ self.myQuotes count];

  arc4Random() - generate random numbers

  
Property List

	Is a special XML format defined to store basic data types like strings, numbers, arrays and dictionaries.  








   
   
