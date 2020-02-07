import Foundation

public protocol Encoding {
    func encode<T: Encodable>(_ object: T) throws -> Data
    func configure(request: inout URLRequest) throws
}

public protocol Decoding {
    func decode<T: Decodable>(data: Data) throws -> T
}
