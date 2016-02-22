//
//  OneWorldSDK.h
//  Pods
//
//  Created by Andriy Mykhaylyshyn on 1/6/16.
//
//

#import <UIKit/UIKit.h>

@protocol OWSDKDelegate;

@interface OneWorldSDK : NSObject
- (id)initWithAppId:(NSString *)appId
             userId:(NSString *)userId
           delegate:(id <OWSDKDelegate>)delegate;
- (void)fetchPoll;
@end

@protocol OWPoll
@property (nonatomic, readonly) double reward;
- (void)show;
@end

@protocol OWSDKDelegate <NSObject>
@required
- (void)pollFetched:(id <OWPoll>)poll;
@optional
- (void)pollFetchFailed:(NSError *)err;
- (void)pollRewarded:(id <OWPoll>)poll;
- (void)pollDidClose:(id <OWPoll>)poll;
@end
