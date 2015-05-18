//
//  AliasMessageBuilder.swift
//  Analytics
//
//  Created by Prateek Srivastava on 2015-05-18.
//  Copyright (c) 2015 Segment. All rights reserved.
//

import Foundation

public class AliasMessageBuilder: MessageBuilder {
  private var dictionary: Dictionary<String, AnyObject>
  
  public init(previousId: String) {
    dictionary = Dictionary()
    
    dictionary["type"] = "alias"
    dictionary["previousId"] = previousId
  }
  
  // Common
  public func userId(userId: String) -> AliasMessageBuilder {
    dictionary["userId"] = userId
    return self
  }
  
  public func anonymousId(anonymousId: String) -> AliasMessageBuilder {
    dictionary["anonymousId"] = anonymousId
    return self
  }
  
  public func context(context: Dictionary<String, AnyObject>) -> AliasMessageBuilder {
    dictionary["context"] = context
    return self
  }
  
  public func build() -> Dictionary<String, AnyObject> {
    return dictionary
  }
}