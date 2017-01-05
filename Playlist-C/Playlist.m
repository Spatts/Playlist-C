//
//  Playlist.m
//  Playlist-C
//
//  Created by Steven Patterson on 8/24/16.
//  Copyright © 2016 Steven Patterson. All rights reserved.
//

#import "Playlist.h"

@implementation Playlist

- (instancetype)initWithName:(NSString *)name songs:(NSArray *)songs
{
    self = [super init];
    if (self != nil) {
        _name = [name copy];
        _songs = [songs mutableCopy];
    }
    return self;

}

@end
