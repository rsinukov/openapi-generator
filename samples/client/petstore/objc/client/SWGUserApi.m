#import "SWGUserApi.h"
#import "SWGFile.h"
#import "SWGApiClient.h"
#import "SWGUser.h"



@implementation SWGUserApi
static NSString * basePath = @"";

+(SWGUserApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGUserApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGUserApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(void) setBasePath:(NSString*)path {
    basePath = path;
}

+(NSString*) getBasePath {
    return basePath;
}

-(SWGApiClient*) apiClient {
    return [SWGApiClient sharedClientFromPool:basePath];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [[self apiClient] setHeaderValue:value forKey:key];
}

-(id) init {
    self = [super init];
    [self apiClient];
    return self;
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [[self apiClient] setHeaderValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}


-(NSNumber*) createUserWithCompletionBlock:(SWGUser*) body        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/user", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    
    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    
    

}

-(NSNumber*) createUsersWithArrayInputWithCompletionBlock:(NSArray*) body        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/user/createWithArray", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    
    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    
    

}

-(NSNumber*) createUsersWithListInputWithCompletionBlock:(NSArray*) body        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/user/createWithList", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    
    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    
    

}

-(NSNumber*) loginUserWithCompletionBlock:(NSString*) username        
            password:(NSString*) password        
        completionHandler: (void (^)(NSString* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/user/login", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(username != nil)
        queryParams[@"username"] = username;if(password != nil)
        queryParams[@"password"] = password;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client stringWithCompletionBlock: requestUrl 
                                      method: @"GET" 
                                 queryParams: queryParams 
                                        body: bodyDictionary 
                                headerParams: headerParams
                          requestContentType: requestContentType
                         responseContentType: responseContentType
                             completionBlock: ^(NSString *data, NSError *error) {
                 if (error) {
                     completionBlock(nil, error);
                     return;
                 }
                NSString *result = data ? [[NSString  alloc]initWithString: data] : nil;
                completionBlock(result, nil);
             }];
    
    

}

-(NSNumber*) logoutUserWithCompletionBlock: 
        
        (void (^)(NSError* error))completionBlock {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/user/logout", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    
    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"GET" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    
    

}

-(NSNumber*) getUserByNameWithCompletionBlock:(NSString*) username        
        completionHandler: (void (^)(SWGUser* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/user/{username}", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"username", @"}"]] withString: [SWGApiClient escape:username]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);
                            
                            return;
                        }
                        
                        SWGUser *result = nil;
                        if (data) {
                            result = [[SWGUser    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}

-(NSNumber*) updateUserWithCompletionBlock:(NSString*) username        
            body:(SWGUser*) body        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/user/{username}", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"username", @"}"]] withString: [SWGApiClient escape:username]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    
    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"PUT" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    
    

}

-(NSNumber*) deleteUserWithCompletionBlock:(NSString*) username        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/user/{username}", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"username", @"}"]] withString: [SWGApiClient escape:username]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    
    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"DELETE" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    
    

}



@end