public final class TSDictionaryType: _TSType {
    public init(_ value: any TSType) {
        self.value = value
    }

    public private(set) unowned var parent: (any ASTNode)?
    internal func _setParent(_ newValue: (any ASTNode)?) {
        parent = newValue
    }

    @AnyTSTypeStorage public var value: any TSType
}
