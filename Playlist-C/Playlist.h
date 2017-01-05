//
//  Playlist.h
//  Playlist-C
//
//  Created by Steven Patterson on 8/24/16.
//  Copyright © 2016 Steven Patterson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Playlist : NSObject

- (instancetype)initWithName: (NSString *)name songs: (NSArray *)songs;

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSMutableArray *songs;


@end
