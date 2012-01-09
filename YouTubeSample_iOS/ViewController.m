//
//  ViewController.m
//  YouTubeSample_iOS
//
//  Created by Manuel Carrasco Molina on 08.01.12.
//  Copyright (c) 2012 Pomcast. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize youTubeUploader = _youTubeUploader;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (IBAction)upload:(id)sender {
    self.youTubeUploader = [[YouTubeUploader alloc] init];
    self.youTubeUploader.delegate = self;
    self.youTubeUploader.uploadProgressView = uploadProgressView;
    [self.youTubeUploader uploadVideoFile:@"/Users/mc/Movies/Temp/export.MOV"];
}

- (IBAction)logout:(id)sender {
    [self.youTubeUploader logout];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [uploadProgressView release];
    uploadProgressView = nil;
    [_youTubeUploader release];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)dealloc {
    [uploadProgressView release];
    [_youTubeUploader release];
    [super dealloc];
}
@end
