#import "AudioUtil.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioServices.h>
#import <AVFoundation/AVFoundation.h>

#import "Debug.h"


@implementation AudioUtil

@synthesize audioPlayer;
- (void) pause
{
    [self.audioPlayer pause];
}

- (void) play
{
    [self.audioPlayer play];
}

- (void)playSound:(NSString *)fName :(NSString *)ext
{
    NSString *path  = [[NSBundle mainBundle] pathForResource : fName ofType :ext];
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
        NSURL *pathURL = [NSURL fileURLWithPath:path];

        NSError *errPlayer = [[NSError alloc] init];

        NSData* data = [NSData dataWithContentsOfURL:pathURL] ;
        self.audioPlayer = [[AVAudioPlayer alloc] initWithData:data  error:&errPlayer];;
        
        if (self.audioPlayer == nil) {
            DLog(@"ERROR : %@", [errPlayer description]);
        }

        [self.audioPlayer prepareToPlay];
        self.audioPlayer.volume = self.volume;
        self.audioPlayer.numberOfLoops = self.numberOfLoops;

        //[newPlayer setDelegate:self];
        [self.audioPlayer play];
        DLog(@"Play : %@",pathURL);

        

    } else {
        DLog(@"Error, file not found: %@",path);
    }
}


@end
