//
//  PlaylistTableViewController.m
//  Playlist-C
//
//  Created by Steven Patterson on 8/24/16.
//  Copyright © 2016 Steven Patterson. All rights reserved.
//

#import "PlaylistTableViewController.h"
#import "PlaylistController.h"
#import "Playlist.h"
#import "PlaylistDetailViewController.h"

@interface PlaylistTableViewController ()

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;

@end


@implementation PlaylistTableViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];

}


- (IBAction)addButtonTapped:(id)sender {
    NSString *title = self.nameTextField.text;
    [[PlaylistController sharedController] createPlaylistWithTitle:title];
    [self.tableView reloadData];
}


#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[PlaylistController sharedController] playlists] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlaylistCell" forIndexPath:indexPath];
    
    PlaylistController *controller = [PlaylistController sharedController];
    Playlist *playlist = controller.playlists[indexPath.row];
    
    cell.textLabel.text = playlist.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@", @([playlist.songs count])];
    
    return cell;
}



/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/



#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"playlistDetailView"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Playlist *playlist = [[PlaylistController sharedController] playlists] [indexPath.row];
        PlaylistDetailViewController *vc = segue.destinationViewController;
        vc.playlist = playlist;
    }
    
}


@end
