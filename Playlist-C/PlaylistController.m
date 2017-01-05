//
//  PlaylistController.m
//  Playlist-C
//
//  Created by Steven Patterson on 8/24/16.
//  Copyright © 2016 Steven Patterson. All rights reserved.
//

#import "PlaylistController.h"
#import "Playlist.h"
#import "Song.h"

@implementation PlaylistController

+ (instancetype)sharedController
{
    static PlaylistController *sharedController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedController = [[PlaylistController alloc] init];
    });
    return sharedController;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _playlists = [[NSMutableArray alloc] init];
    }
    return self;
}


- (void)createPlaylistWithTitle:(NSString *)title;
{
    Playlist *playlist = [[Playlist alloc] initWithName:title songs:@[]];
    [self.playlists addObject:playlist];
}


- (void)addSongWithTitle:(NSString *)title artist:(NSString *)artist toPlaylist:(Playlist *)playlist;
{
    Song *song = [[Song alloc] initWithTitle:title artist:artist];
    [playlist.songs addObject:song];
}


- (void)deleteSong:(Song *)song fromPlaylist:(Playlist *)playlist;
{
    [playlist.songs removeObject:song];
}


- (void)deletPlaylist:(Playlist *)playlist;
{
    [self.playlists removeObject:playlist];
}

@end










