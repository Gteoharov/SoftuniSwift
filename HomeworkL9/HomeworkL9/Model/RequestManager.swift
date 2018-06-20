//
//  RequestManager.swift
//  HomeworkL9
//
//  Created by Georgi Teoharov on 20.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import Foundation

@objc class RequestManager: NSObject {
    
    static var requestNumber = 0
    
    class func sendRequest() {

        let sessionConfig = URLSessionConfiguration.default
        
        /* Create session, and optionally set a URLSessionDelegate. */
        let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        
        guard let URL = URL(string: "https://softuniresttest-1f4cd.firebaseio.com/Users/malkokote1.json") else {return}
        var request = URLRequest(url: URL)
        request.httpMethod = "PUT"
        
        // Headers
        
        request.addValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        // JSON Body
        
        let bodyObject: [String : Any] = [
            "Name": "Malko Kote",
            "Age": "19",
            "Password": ("VeryStrongPassword1".hash).description
        ]
        requestNumber += 1
        request.httpBody = try! JSONSerialization.data(withJSONObject: bodyObject, options: [])
        
        /* Start a new Task */
        let task = session.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            if (error == nil) {
                // Success
//                let statusCode = (response as! HTTPURLResponse).statusCode
//                print("URL Session Task Succeeded: HTTP \(statusCode)")
            }
            else {
                // Failure
                print("URL Session Task Failed: %@", error!.localizedDescription);
            }
        })
        task.resume()
        session.finishTasksAndInvalidate()
    }
    
    class func registerUser(user userName: String, userAge: String, userPassword: String, completion: @escaping (_ message: String)->()) {
        let sessionCongig = URLSessionConfiguration.default
        
        let session = URLSession(configuration: sessionCongig, delegate: nil, delegateQueue: nil)
        
        guard let URL = URL(string: "https://softuniresttest-1f4cd.firebaseio.com/Users/student1.json") else { return }
        var request = URLRequest(url: URL)
        request.httpMethod = "PUT"
        
        // Headers
        
        request.addValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        // JSON Body
        
        let bodyObject: [String : Any] = [
            "Name" : userName,
            "Age" : userAge,
            "Password" : userPassword.hash.description
        ]
        request.httpBody = try! JSONSerialization.data(withJSONObject: bodyObject, options: [])
        
        /* Start a new Task */
        let task = session.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            if (error == nil) {
                completion("Success")
            }
            else {
               completion(error!.localizedDescription)
            }
        })
        task.resume()
        session.finishTasksAndInvalidate()
    }
    
@objc   class func readData() {
    
        let sessionConfig = URLSessionConfiguration.default
        
        /* Create session, and optionally set a URLSessionDelegate. */
        let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        
        guard let URL = URL(string: "https://softuniresttest-1f4cd.firebaseio.com/Users.json") else {return}
        var request = URLRequest(url: URL)
        request.httpMethod = "GET"
        
        /* Start a new Task */
        let task = session.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            if (error == nil) {
                // Success
                let statusCode = (response as! HTTPURLResponse).statusCode
                print("URL Session Task Succeeded: HTTP \(statusCode)")
                
                do {
                    let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! [String:Any?]
                } catch {
                    
                }
            }
            else {
                // Failure
                print("URL Session Task Failed: %@", error!.localizedDescription);
            }
        })
        task.resume()
        session.finishTasksAndInvalidate()
    }
}
