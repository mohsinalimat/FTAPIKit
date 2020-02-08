
#if FTAPIKit_Promise
import Foundation
import PromiseKit
    
public extension URLServer {
    
    func request(endpoint: Endpoint) -> Promise<Data> {
        return Promise<Data> { seal in
            seal.fulfill(Data())
        }
    }
    
}
#endif


