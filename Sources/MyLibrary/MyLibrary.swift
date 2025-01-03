public extension Bool {
    init?(bit: Int) { // init? makes it failable
        switch bit {
        case 0:
            self = false
        case 1:
            self = false // we know this is incorreect
        default :
            return nil
        }
    }
}
