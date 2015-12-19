//
//  ToDoItem.h
//  ToDoList
//
//  Created by Chauncey on 8/23/15.
//  Copyright (c) 2015 Chauncey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
