//
//  NetworkObserver.swift
//  RAD
//
//  Copyright 2018 NPR
//
//  Licensed under the Apache License, Version 2.0 (the "License"); you may not use
//  this file except in compliance with the License. You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software distributed under the
//  License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
//  either express or implied. See the License for the specific language governing permissions
//  and limitations under the License.
//

import Foundation

/// A protocol which may be implemented to observe the network requests
/// executed by framework.
public protocol NetworkObserver: AnyObject {
    /// Callback for each performed network request.
    ///
    /// - Parameter request: The request.
    func didBeginExecutionOfUrlRequest(_ request: URLRequest)
}
