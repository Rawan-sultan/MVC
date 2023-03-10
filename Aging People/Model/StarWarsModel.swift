//
//  StarWarsModel.swift
//  Aging People
//
//  Created by λΌμ π on 17/05/1444 AH.
//

import Foundation

import UIKit



class StarWarsModel {
    // Note that we are passing in a function to the getAllPeople method (similar to our use of callbacks in JS). This function will allow the ViewController that calls this method to dictate what runs upon completion.
    static func getAllPeople(completionHandler:@escaping (_ data: Data?, _ response: URLResponse?, _ error: Error?) -> Void ) {
        // Specify the url that we will be sending the GET Request to
        
        
        guard let url = URL(string: "https://swapi.dev/api/people/?format=json") else {
            print("invalid Url")
            return
        }
        // Create a URLSession to handle the request tasks
        let session = URLSession.shared
        // Create a "data task" which will request some data from a URL and then run the completion handler that we are passing into the getAllPeople function itself
        let task = session.dataTask(with: url, completionHandler: completionHandler)
        // Actually "execute" the task. This is the line that actually makes therequest that we set up above
        task.resume()
    }
    
    
    
    static func getAllFilms(completionHandler:@escaping (_ data: Data?, _ response: URLResponse?, _ error: Error?) -> Void) {
        // Specify the url that we will be sending the GET Request to
        
        
        guard let url = URL(string: "https://swapi.dev/api/films/?format=json") else {
            print("invalid Url")
            return
        }
        // Create a URLSession to handle the request tasks
        //let session = URLSession.shared
        // Create a "data task" which will request some data from a URL and then run the completion handler that we are passing into the getAllPeople function itself
        let task = URLSession.shared.dataTask(with: url, completionHandler: completionHandler)
        // Actually "execute" the task. This is the line that actually makes the request that we set up above
        task.resume()
    }
    
    
    
}
