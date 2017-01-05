//
//  Song.h
//  Playlist-C
//
//  Created by Steven Patterson on 8/24/16.
//  Copyright © 2016 Steven Patterson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist;


@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *artist;


@end
