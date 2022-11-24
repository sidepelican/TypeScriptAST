public final class TSNamespaceDecl: _TSDecl {
    public init(
        modifiers: [TSDeclModifier] = [],
        name: String,
        block: TSBlockStmt
    ) {
        self.modifiers = modifiers
        self.name = name
        self.block = block
    }

    public private(set) unowned var parent: ASTNode?
    internal func _setParent(_ newValue: (ASTNode)?) {
        parent = newValue
    }

    public var modifiers: [TSDeclModifier]
    public var name: String
    @ASTNodeStorage public var block: TSBlockStmt
}
