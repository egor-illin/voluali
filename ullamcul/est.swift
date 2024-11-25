import Foundation

@MainActor
@preconcurrency
public func fetchItemsAsync() async -> [Item] {
    // Simulating async fetching with Task.sleep
    await Task.sleep(1_000_000_000) // Sleep for 1 second
    
    // Create some example items
    let item1 = Item(name: "Item 1")
    let item2 = Item(name: "Item 2")
    let items = [item1, item2]
    
    // Return the array of items
    return items
}

// Usage example
Task {
    let items = await fetchItemsAsync()
    print(items)
}
