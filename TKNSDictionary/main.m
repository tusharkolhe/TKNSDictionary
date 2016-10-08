//
//  main.m
//  TKNSDictionary
//
//  Created by Felix ITs 04 on 08/10/16.
//  Copyright © 2016 Felix-ITs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        ///DECLEARATION OF DICTIONARY
        ///There are 3 types
        ////Type 1
        NSDictionary *students1=@{@"Tushar":[NSNumber numberWithInt:001],
                                  @"Rahul":[NSNumber numberWithInt:002],
                                  @"Mahesh":[NSNumber numberWithInt:003]};
        
        NSLog(@"Students 1:%@",students1);
        
        ////Type 2
        
        NSDictionary *students2;
        
        students2=[NSDictionary dictionaryWithObjectsAndKeys:@"04",@"Gaurav",
                                                             @"05",@"Gaurish",
                                                             @"06",@"Sachin",
                                                             @"07",@"Manisha",nil];
        NSLog(@"Students 2:%@",students2);
        
        
        ////Type 3: Using 2 arrays as of keys and values
        
        NSArray *arrayForKeys=@[@"08",@"09",@"10"];
        NSArray *arrayForValues=@[@"Rajesh",@"Siddhesh",@"Minal"];
        
        NSDictionary *students3=[NSDictionary dictionaryWithObjects:arrayForValues forKeys:arrayForKeys ];
        NSLog(@"Students :%@",students3);
        
        
        ////Accessing values and keys
        NSLog(@"Get value using key:%@",[students1 objectForKey:@"001"]);
        NSLog(@"Get key using Value:%@",students1[@"Tushar"]);
        
        ////Enumerating Dictionaries
        
        NSLog(@"To get Count of dictionary:%ld",[students2 count]);
        
        
        //- Print whole Dictionary
        for(id key in students2){
            NSLog(@"%@ %@",students2[key],key);
        }
        
        //-Print all keys
        NSLog(@"All keys:%@", [students2 allKeys]);
        
        //-print all values
        NSLog(@"All Values:%@",[students2 allValues]);
        
        
        ////Compairing dictionaries
        
        ///copy of students2
        
        NSDictionary *students22;
        
        students22=[NSDictionary dictionaryWithObjectsAndKeys:@"04",@"Gaurav",
                    @"05",@"Gaurish",
                    @"06",@"Sachin",
                    @"07",@"Manisha",
                    @"07",@"Rahul",nil];
        
        
        if([students2 isEqualToDictionary:students22])
        {
            NSLog(@"Both Dictionaries are same!!! ");
        }
        else{
            NSLog(@"Both Dictionaries ane not Same");
        }
        
        ////MUTABLE DICTIONARY
        
        NSMutableDictionary *mutableDict=[NSMutableDictionary dictionaryWithDictionary:@{
                                                                                         @"01":@"Ganesh",
                                                                                         @"02":@"Ramesh",                            }];
        
        //here 01 is key and Ganesh is the object
        NSLog(@"Mutable Dictionaryis:%@",mutableDict);
        
        //To change th object of existing key
        [mutableDict setObject:@"John" forKey:@"011"];
        NSLog(@"After Adding:%@",mutableDict);
        
        //Remove Object
        [mutableDict removeObjectForKey:@"01"];
        NSLog(@"After Removed obj:%@",mutableDict);
        
        //Add objects
        mutableDict[@"012"]=@"Ritesh";
        NSLog(@"After adding new Key and its object:%@",mutableDict);
        
        
        ////Combining Dictionaries
        
        [mutableDict addEntriesFromDictionary:students1];
        NSLog(@"Combined dictionary:%@",mutableDict);
        
        
    }
    return 0;
}
