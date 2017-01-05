//
//  PlaylistController.h
//  Playlist-C
//
//  Created by Steven Patterson on 8/24/16.
//  Copyright © 2016 Steven Patterson. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Playlist;
@class Song;

@interface PlaylistController : NSObject


+ (instancetype)sharedController;



@property (nonatomic, strong) NSMutableArray *playlists;



- (void)createPlaylistWithTitle:(NSString *)title;
- (void)addSongWithTitle:(NSString *)title artist:(NSString *)artist toPlaylist:(Playlist *)playlist;
- (void)deleteSong:(Song *)song fromPlaylist:(Playlist *)playlist;
- (void)deletPlaylist:(Playlist *)playlist;


@end
