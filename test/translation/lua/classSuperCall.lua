ClassB = ClassB or ClassA.new()
ClassB.__index = ClassB
ClassB.__base = ClassA
function ClassB.new(construct, ...)
    local instance = setmetatable({}, ClassB)
    if construct and ClassB.constructor then ClassB.constructor(instance, ...) end
    return instance
end
function ClassB.constructor(self)
    self.__base.constructor(self)
end
