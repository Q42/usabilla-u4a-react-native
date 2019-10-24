//
//  ReactNativeUsabilla.h
//  ReactNativeUsabilla
//
//  Created by Adil Bougamza on 01/02/2018.
//  Copyright © 2018 Usabilla. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>
#import <React/RCTConvert.h>
//#import "ReactNativeUsabilla-Swift.h"
#import "Kramp-Swift.h"

@interface ReactNativeUsabilla : RCTEventEmitter <RCTBridgeModule, UsabillaInterfaceDelegate>

@property UsabillaInterface* usabillaInterface;

@end
