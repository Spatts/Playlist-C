//
//  Song.m
//  Playlist-C
//
//  Created by Steven Patterson on 8/24/16.
//  Copyright © 2016 Steven Patterson. All rights reserved.
//

#import "Song.h"

@implementation Song

- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist
{
    self = [super init];
    if (self) {
        _title = [title copy];
        _artist = [artist copy];
    }
    return self;
}


@end
