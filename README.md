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








   
   
