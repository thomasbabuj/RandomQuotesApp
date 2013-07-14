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

@property (nonatomic, strong) NSArrat *myQuotes;

nonatomic - increases performance at the cost of thread-safety
strong    - indicates that a pointer to the specified variable will stay in memory as long as the object that holds the pointer exists.






   
   
