//
// BlinkDefaultAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Combine



open class BlinkDefaultAPI {
    /**

     - parameter networkID: (path)  
     - parameter cameraID: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<InitialCommandResponse, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func disableCamera(networkID: Int, cameraID: Int, apiResponseQueue: DispatchQueue = BlinkOpenAPIAPI.apiResponseQueue) -> AnyPublisher<InitialCommandResponse, Error> {
        return Future<InitialCommandResponse, Error>.init { promisse in
            disableCameraWithRequestBuilder(networkID: networkID, cameraID: cameraID).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promisse(.success(response.body!))
                case let .failure(error):
                    promisse(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - POST /network/{networkID}/camera/{cameraID}/disable
     - parameter networkID: (path)  
     - parameter cameraID: (path)  
     - returns: RequestBuilder<InitialCommandResponse> 
     */
    open class func disableCameraWithRequestBuilder(networkID: Int, cameraID: Int) -> RequestBuilder<InitialCommandResponse> {
        var path = "/network/{networkID}/camera/{cameraID}/disable"
        let networkIDPreEscape = "\(APIHelper.mapValueToPathItem(networkID))"
        let networkIDPostEscape = networkIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{networkID}", with: networkIDPostEscape, options: .literal, range: nil)
        let cameraIDPreEscape = "\(APIHelper.mapValueToPathItem(cameraID))"
        let cameraIDPostEscape = cameraIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cameraID}", with: cameraIDPostEscape, options: .literal, range: nil)
        let URLString = BlinkOpenAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<InitialCommandResponse>.Type = BlinkOpenAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter networkID: (path)  
     - parameter cameraID: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<InitialCommandResponse, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func enableCamera(networkID: Int, cameraID: Int, apiResponseQueue: DispatchQueue = BlinkOpenAPIAPI.apiResponseQueue) -> AnyPublisher<InitialCommandResponse, Error> {
        return Future<InitialCommandResponse, Error>.init { promisse in
            enableCameraWithRequestBuilder(networkID: networkID, cameraID: cameraID).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promisse(.success(response.body!))
                case let .failure(error):
                    promisse(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - POST /network/{networkID}/camera/{cameraID}/enable
     - parameter networkID: (path)  
     - parameter cameraID: (path)  
     - returns: RequestBuilder<InitialCommandResponse> 
     */
    open class func enableCameraWithRequestBuilder(networkID: Int, cameraID: Int) -> RequestBuilder<InitialCommandResponse> {
        var path = "/network/{networkID}/camera/{cameraID}/enable"
        let networkIDPreEscape = "\(APIHelper.mapValueToPathItem(networkID))"
        let networkIDPostEscape = networkIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{networkID}", with: networkIDPostEscape, options: .literal, range: nil)
        let cameraIDPreEscape = "\(APIHelper.mapValueToPathItem(cameraID))"
        let cameraIDPostEscape = cameraIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{cameraID}", with: cameraIDPostEscape, options: .literal, range: nil)
        let URLString = BlinkOpenAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<InitialCommandResponse>.Type = BlinkOpenAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter media: (path) Media URL 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getThumbnail(media: String, apiResponseQueue: DispatchQueue = BlinkOpenAPIAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promisse in
            getThumbnailWithRequestBuilder(media: media).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promisse(.success(response.body!))
                case let .failure(error):
                    promisse(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - GET /{media}.jpg
     - parameter media: (path) Media URL 
     - returns: RequestBuilder<URL> 
     */
    open class func getThumbnailWithRequestBuilder(media: String) -> RequestBuilder<URL> {
        var path = "/{media}.jpg"
        let mediaPreEscape = "\(APIHelper.mapValueToPathItem(media))"
        let mediaPostEscape = mediaPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{media}", with: mediaPostEscape, options: .literal, range: nil)
        let URLString = BlinkOpenAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<URL>.Type = BlinkOpenAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter media: (path) Media URL 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getVideo(media: String, apiResponseQueue: DispatchQueue = BlinkOpenAPIAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promisse in
            getVideoWithRequestBuilder(media: media).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promisse(.success(response.body!))
                case let .failure(error):
                    promisse(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - GET /{media}
     - parameter media: (path) Media URL 
     - returns: RequestBuilder<URL> 
     */
    open class func getVideoWithRequestBuilder(media: String) -> RequestBuilder<URL> {
        var path = "/{media}"
        let mediaPreEscape = "\(APIHelper.mapValueToPathItem(media))"
        let mediaPostEscape = mediaPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{media}", with: mediaPostEscape, options: .literal, range: nil)
        let URLString = BlinkOpenAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<URL>.Type = BlinkOpenAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter accountID: (path) Account ID 
     - parameter since: (query)  
     - parameter page: (query) Page number for multiple pages of results 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VideoEvents, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getVideoEvents(accountID: Int, since: Date, page: Int, apiResponseQueue: DispatchQueue = BlinkOpenAPIAPI.apiResponseQueue) -> AnyPublisher<VideoEvents, Error> {
        return Future<VideoEvents, Error>.init { promisse in
            getVideoEventsWithRequestBuilder(accountID: accountID, since: since, page: page).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promisse(.success(response.body!))
                case let .failure(error):
                    promisse(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - GET /api/v1/accounts/{accountID}/media/changed
     - parameter accountID: (path) Account ID 
     - parameter since: (query)  
     - parameter page: (query) Page number for multiple pages of results 
     - returns: RequestBuilder<VideoEvents> 
     */
    open class func getVideoEventsWithRequestBuilder(accountID: Int, since: Date, page: Int) -> RequestBuilder<VideoEvents> {
        var path = "/api/v1/accounts/{accountID}/media/changed"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let URLString = BlinkOpenAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "since": since.encodeToJSON(), 
            "page": page.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<VideoEvents>.Type = BlinkOpenAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter accountID: (path) Account ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<HomeScreenResponse, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func homescreen(accountID: Int, apiResponseQueue: DispatchQueue = BlinkOpenAPIAPI.apiResponseQueue) -> AnyPublisher<HomeScreenResponse, Error> {
        return Future<HomeScreenResponse, Error>.init { promisse in
            homescreenWithRequestBuilder(accountID: accountID).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promisse(.success(response.body!))
                case let .failure(error):
                    promisse(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - GET /api/v3/accounts/{accountID}/homescreen
     - parameter accountID: (path) Account ID 
     - returns: RequestBuilder<HomeScreenResponse> 
     */
    open class func homescreenWithRequestBuilder(accountID: Int) -> RequestBuilder<HomeScreenResponse> {
        var path = "/api/v3/accounts/{accountID}/homescreen"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let URLString = BlinkOpenAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<HomeScreenResponse>.Type = BlinkOpenAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter loginRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<LoginResponse, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func login(loginRequest: LoginRequest, apiResponseQueue: DispatchQueue = BlinkOpenAPIAPI.apiResponseQueue) -> AnyPublisher<LoginResponse, Error> {
        return Future<LoginResponse, Error>.init { promisse in
            loginWithRequestBuilder(loginRequest: loginRequest).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promisse(.success(response.body!))
                case let .failure(error):
                    promisse(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - POST /api/v4/account/login
     - parameter loginRequest: (body)  
     - returns: RequestBuilder<LoginResponse> 
     */
    open class func loginWithRequestBuilder(loginRequest: LoginRequest) -> RequestBuilder<LoginResponse> {
        let path = "/api/v4/account/login"
        let URLString = BlinkOpenAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: loginRequest)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<LoginResponse>.Type = BlinkOpenAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter accountID: (path) Account ID 
     - parameter clientID: (path) Client ID 
     - parameter verifyPinRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VerifyPinResponse, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func verifyPin(accountID: Int, clientID: Int, verifyPinRequest: VerifyPinRequest, apiResponseQueue: DispatchQueue = BlinkOpenAPIAPI.apiResponseQueue) -> AnyPublisher<VerifyPinResponse, Error> {
        return Future<VerifyPinResponse, Error>.init { promisse in
            verifyPinWithRequestBuilder(accountID: accountID, clientID: clientID, verifyPinRequest: verifyPinRequest).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promisse(.success(response.body!))
                case let .failure(error):
                    promisse(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - POST /api/v4/account/{accountID}/client/{clientID}/pin/verify
     - parameter accountID: (path) Account ID 
     - parameter clientID: (path) Client ID 
     - parameter verifyPinRequest: (body)  
     - returns: RequestBuilder<VerifyPinResponse> 
     */
    open class func verifyPinWithRequestBuilder(accountID: Int, clientID: Int, verifyPinRequest: VerifyPinRequest) -> RequestBuilder<VerifyPinResponse> {
        var path = "/api/v4/account/{accountID}/client/{clientID}/pin/verify"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let clientIDPreEscape = "\(APIHelper.mapValueToPathItem(clientID))"
        let clientIDPostEscape = clientIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{clientID}", with: clientIDPostEscape, options: .literal, range: nil)
        let URLString = BlinkOpenAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: verifyPinRequest)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<VerifyPinResponse>.Type = BlinkOpenAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
