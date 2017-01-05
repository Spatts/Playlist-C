//
//  PlaylistDetailViewController.m
//  Playlist-C
//
//  Created by Steven Patterson on 8/24/16.
//  Copyright © 2016 Steven Patterson. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "PlaylistController.h"
#import "Playlist.h"
#import "Song.h"


@interface PlaylistDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;

@property (weak, nonatomic) IBOutlet UITextField *artistTextField;

@property (weak, nonatomic) IBOutlet UITableView *tableViewController;


@end

@implementation PlaylistDetailViewController

- (IBAction)addButtonTapped:(id)sender {
    
    PlaylistController *controller = [PlaylistController sharedController];
    [controller addSongWithTitle:self.titleTextField.text
                          artist:self.artistTextField.text
                      toPlaylist:self.playlist];
    
    [self.tableViewController reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.playlist.songs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SongCell" forIndexPath: indexPath];
    
    Song *song = self.playlist.songs[indexPath.row];
    
    cell.textLabel.text = song.title;
    cell.detailTextLabel.text = song.artist;
    
    return cell;
}

//var playlist: Playlist {
//    didSet {
//        tableView.reloadData()
//    }
//}

- (void)setPlaylist:(Playlist *)playlist
{
    _playlist = playlist;
    
    [self.tableViewController reloadData];
    
}





@end
