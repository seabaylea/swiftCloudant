import CouchDB

public class AdapterFactory {
    let config: ApplicationConfiguration

    init(config: ApplicationConfiguration) {
        self.config = config
    }

    
    public func getTodoAdapter() -> TodoAdapter {
        switch self.config.adapterConfig {
        case .memory: return TodoMemoryAdapter()
        case .cloudant(let properties): return TodoCloudantAdapter(properties)
        }
    }
    
}

