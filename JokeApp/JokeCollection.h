//
//  JokeCollection.h
//  JokeApp
//
//  Created by Admin on 29.10.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JokeCollection : NSObject
- (id) init;
- (NSString *) next;
- (NSString *) previous;
@end
