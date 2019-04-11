//
//  MainTableViewController.m
//  FuckADMS
//
//  Created by liu zhuzhai on 2018/1/24.
//  Copyright © 2018年 liu zhuzhai. All rights reserved.
//

#import "MainTableViewController.h"

@interface MainTableViewController ()
@property (strong, nonatomic) IBOutlet UINavigationItem *navigationItem;
@property (nonatomic) NSInteger rowCount;
@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.rowCount = 10;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        printf("sfdasdf");
    });

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44.0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.rowCount;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier_item" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = @"asdkfj";
    NSAssert(indexPath.row < self.rowCount,@"");
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

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

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark - Add button

- (IBAction)touchUpInsideAddButton:(id)sender {
    //[self.tableView reloadData];
    //self.rowCount = self.rowCount + 1;
    //dispatch_async(dispatch_get_main_queue(), ^{
        self.rowCount = self.rowCount - 2;
        [self.tableView deleteRowsAtIndexPaths:@[ [NSIndexPath indexPathForRow:2 inSection:0],[NSIndexPath indexPathForRow:3 inSection:0]] withRowAnimation:UITableViewRowAnimationLeft];
    //});
    [self.tableView reloadData];
    
    
    //[self.tableView deleteRowsAtIndexPaths:@[ [NSIndexPath indexPathForRow:2 inSection:0]] withRowAnimation:UITableViewRowAnimationLeft];
}
@end
