//
//  RangeReplaceableCollectionTestSuite.swift
//  RADTests
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

import XCTest
@testable import RAD

class RangeReplaceableCollectionTestSuite: XCTestCase {
    func testCaseFor_appendOperator_oneElement() {
        let value: String = "value"
        let collection = ["other element"]
        let new = collection + value
        XCTOptionalAssertEqual(
            new.last,
            value,
            "Append operator '+' does not perform changed correcltly.")
    }

    func testCaseFor_appendOperator_aCollection() {
        let value: String = "value"
        let collection = ["other element"]
        let new = collection + [value]
        XCTOptionalAssertEqual(
            new.last,
            value,
            "Append operator '+' does not perform changed correcltly.")
    }

    func testCaseFor_mutatingAppendOperator_oneElement() {
        let value: String = "value"
        var collection = ["other element"]
        collection += value
        XCTOptionalAssertEqual(
            collection.last,
            value,
            "Mutating append operator '+=' does not perform changed correcltly."
        )
    }

    func testCaseFor_mutatingAppendOperator_aCollection() {
        let value: String = "value"
        var collection = ["other element"]
        collection += [value]
        XCTOptionalAssertEqual(
            collection.last,
            value,
            "Mutating append operator '+=' does not perform changed correcltly."
        )
    }
}
