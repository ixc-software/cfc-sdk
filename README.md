For integration u can follow those instructions:

In your Pods file you have to add this line:
```
pod 'OneWorldSDK-iOS', :git => 'https://github.com/ixc-software/cfc-sdk.git'
```

In a class file where you like to using SDK:
```
#import <OneWorldSDK-iOS/OneWorldSDK.h>
```
and
```
@property OneWorldSDK *oneSDK;
@property id<OWPoll> pollForShow;
```
One time initialisation:

```
_oneSDK = [[OneWorldSDK alloc] initWithAppId:@"You_app_ID" userId:@"Unique_user_ID" delegate:self];
[_oneSDK fetchPoll];
```
When initialisation done delegate will call:

OneWorld delegate
```
- (void)pollFetched:(id<OWPoll>)poll
{
    _pollForShow = poll;
}
```
and whatever u want:
```
[_pollForShow show];
```

