//
//  ModelsTests.swift
//  web
//
//  Created by Azmi SAHIN on 28/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// MARK: - Requared
import XCTest

@testable import web

// MARK: - web Tests
/// web Models Tests
///
/// `Models Tests`
///
class ModelsTests: XCTestCase {
    
    // MARK: - Global Define
    var expected: Bool!
    var result: Bool!
    var actual: Bool!
    var mock : MockBase!
    
    
    /// Test Setup
    override func setUp() {
        
        // Base
        super.setUp()
        
        // Define
        expected = true
        result = true
        actual = true
        mock = MockBase()
    }
    
    /// Test Tear Down
    override func tearDown() {
        
        // Base
        super.tearDown()
        
        // Tear
    }
    
    /// Test Application Initalize
    func testApplicationInitalize() {
        
        // Define
        actual = false
        
        // Proc
        actual = result
        
        // Test Process
        let test = DB.Models()
        print(test)
        
        // Assert
        XCTAssertEqual(actual, expected,"Initalize Problem");
    }
    
    /// Page Model Tests
    func testPageModel() {
        
        // Define
        actual = false
        
        // Proc
        actual = result
        
        // Test Process
        let test = DB.Models.Page()
        print(test)
        
        // Test Process
        let tests = [DB.Models.Page()]
        print(tests)
        
        // Assert
        XCTAssertEqual(actual, expected,"Initalize Problem");
    }
    
    // Test Application Performance
    func testApplicationPerformance() {
        
        if( mock.testPerformance)
        {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.timeStyle = .full
            
            let date = NSDate()
            
            // Measure
            self.measure {
                
                //
                _ = dateFormatter.string(from: date as Date)
            }
        }
    }
}
