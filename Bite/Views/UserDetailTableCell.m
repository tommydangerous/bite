//
//  UserDetailTableCell.m
//  Bite
//
//  Created by Tommy DANGerous on 6/11/13.
//  Copyright (c) 2013 Quantum Ventures. All rights reserved.
//

#import "UserDetailTableCell.h"

@implementation UserDetailTableCell

@synthesize imageView;
@synthesize table;
@synthesize timestamp;

#pragma mark - Initializer

- (id) initWithStyle: (UITableViewCellStyle) style
reuseIdentifier: (NSString *) reuseIdentifier
{
  self = [super initWithStyle: style reuseIdentifier: reuseIdentifier];
  if (self) {
    // UITableViewCell properties
    self.selectedBackgroundView = [[UIView alloc] init];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    // Screen
    CGRect screen = [[UIScreen mainScreen] bounds];
    self.contentView.frame = CGRectMake(0, 0, screen.size.width, 50);
    // Font
    UIFont *font = [UIFont fontWithName: @"HelveticaNeue" size: 13];
    // Image
    self.imageView = [[UIImageView alloc] init];
    self.imageView.clipsToBounds = YES;
    self.imageView.contentMode = UIViewContentModeTopLeft;
    self.imageView.frame = CGRectMake(10, 10, 40, 40);
    [self.contentView addSubview: self.imageView];
    // Content label
    self.contentLabel = [[UILabel alloc] init];
    self.contentLabel.backgroundColor = [UIColor clearColor];
    self.contentLabel.font = font;
    self.contentLabel.frame = CGRectMake((10 + 40 + 10), 10, 
      (screen.size.width - (10 + 40 + 10 + 10)), 20);
    self.contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    self.contentLabel.textColor = [UIColor colorWithRed: (40/255.0) 
      green: (40/255.0) blue: (40/255.0) alpha: 1];
    [self.contentView addSubview: self.contentLabel];
    // Timestamp
    self.timestamp = [[UILabel alloc] init];
    self.timestamp.backgroundColor = [UIColor clearColor];
    self.timestamp.font = font;
    self.timestamp.frame = CGRectMake((10 + 40 + 10), (10 + 20),
      (screen.size.width - (10 + 40 + 10 + 10)), 20);
    self.timestamp.lineBreakMode = NSLineBreakByTruncatingTail;
    self.timestamp.textColor = [UIColor colorWithRed: (160/255.0)
      green: (160/255.0) blue: (160/255.0) alpha: 1];
    [self.contentView addSubview: self.timestamp];
  }
  return self;
}

#pragma mark - Methods

- (void) loadTableData: (Table *) tableObject
{
  self.table = tableObject;
}

@end