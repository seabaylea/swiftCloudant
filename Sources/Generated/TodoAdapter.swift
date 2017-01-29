public protocol TodoAdapter {
    func findAll(onCompletion: @escaping ([Todo], Error?) -> Void)
    func create(_ model: Todo, onCompletion: @escaping (Todo?, Error?) -> Void)
    func deleteAll(onCompletion: @escaping (Error?) -> Void)

    func findOne(_ maybeID: String?, onCompletion: @escaping (Todo?, Error?) -> Void)
    func update(_ maybeID: String?, with model: Todo, onCompletion: @escaping (Todo?, Error?) -> Void)
    func delete(_ maybeID: String?, onCompletion: @escaping (Todo?, Error?) -> Void)
}
