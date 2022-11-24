public final class TSClassDecl: _TSDecl {
    public init(
        modifiers: [TSDeclModifier] = [],
        name: String,
        genericParams: [String] = [],
        extends: TSNamedType? = nil,
        implements: [TSNamedType] = [],
        block: TSBlockStmt
    ) {
        self.modifiers = modifiers
        self.name = name
        self.genericParams = genericParams
        self.extends = extends
        self.implements = implements
        self.block = block
    }
    
    public private(set) unowned var parent: ASTNode?
    internal func _setParent(_ newValue: (ASTNode)?) {
        parent = newValue
    }

    public var modifiers: [TSDeclModifier]
    public var name: String
    public var genericParams: [String]
    @ASTNodeOptionalStorage public var extends: TSNamedType?
    @ASTNodeArrayStorage public var implements: [TSNamedType]
    @ASTNodeStorage public var block: TSBlockStmt
}
