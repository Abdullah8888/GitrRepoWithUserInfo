//
//  MockURL.swift
//  GitRepoWithUserInfoTests
//
//  Created by Abdullah on 26/01/2023.
//

import Foundation
class MockURLProtocol: URLProtocol {

    // A dictionary of mock data, where keys are URL path eg. "/weather?country=SG"
    static var mockData = [String: Data]()

    override class func canInit(with task: URLSessionTask) -> Bool {
        return true
    }

    override class func canInit(with request: URLRequest) -> Bool {
        return true
    }

    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }

    override func startLoading() {
        if let url = request.url {
            let path: String
            if let queryString = url.query {
                path = url.relativePath + "?" + queryString
            } else {
                path = url.relativePath
            }
            let data = MockURLProtocol.mockData[path]!
            client?.urlProtocol(self, didLoad: data)
            client?.urlProtocol(self, didReceive: HTTPURLResponse(), cacheStoragePolicy: .allowed)
        }
        client?.urlProtocolDidFinishLoading(self)
    }

    override func stopLoading() {}

}


//How to use the mock
//To use, there are 2 important steps.
//
//// Step 1: Register our class can handle
//URLProtocol.registerClass(MockURLProtocol.self)
//// Step 2: Use a custom URLSessionConfiguration
//let configurationWithMock = URLSessionConfiguration.default
//configurationWithMock.protocolClasses?.insert(MockURLProtocol.self, at: 0)
//
//// To use for Alamofire
//SessionManager(configuration: configurationWithMock)
//
//// To use for URLSession
//URLSession(configuration: configurationWithMock)
