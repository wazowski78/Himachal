//
//  HMDiscoveryHeaderView.m
//  Himachal
//
//  Created by Siraj Ravel on 8/8/15.
//  Copyright (c) 2015 Ellipse. All rights reserved.
//

#import "HMDiscoveryHeaderView.h"

@implementation HMDiscoveryHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
    }
    return self;
}

- (void)layoutSubviews {
    
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(20, 20, 250, 50)];
    //button.backgroundColor = [UIColor blackColor];
    
    UIButton *userButton = [[UIButton alloc] initWithFrame:CGRectMake(20,70,125,50)];
    userButton.backgroundColor = [UIColor greenColor];
    userButton.titleLabel.text = @"usernames";
    userButton.titleLabel.textColor = [UIColor blackColor];
    [userButton addTarget:self action:@selector(showUsers) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *videoButton = [[UIButton alloc] initWithFrame:CGRectMake(145,70,125,50)];
    videoButton.backgroundColor = [UIColor blackColor];
    videoButton.titleLabel.text = @"videos";
    videoButton.titleLabel.textColor = [UIColor greenColor];
    [videoButton addTarget:self action:@selector(showVideos) forControlEvents:UIControlEventTouchUpInside];


    
    searchBar.text = @"LOL";
    [self addSubview:searchBar];
    [self addSubview:userButton];
    [self addSubview:videoButton];
}

-(void) showUsers {
    NSLog(@"show users");
}

-(void) showVideos {
    NSLog(@"show videos");
}

@end