//
//  UserDetailCompleteTableStore.h
//  Bite
//
//  Created by Tommy DANGerous on 6/10/13.
//  Copyright (c) 2013 Quantum Ventures. All rights reserved.
//

#import "UserDetailTableStore.h"

@interface UserDetailCompleteTableStore : UserDetailTableStore

#pragma mark - Methods

+ (UserDetailCompleteTableStore *) sharedStore;

@end