public extension Bool {
    init?(bit: Int) { // init? makes it failable
        switch bit {
        case 0:
            self = false
        case 1:
            self = true 
        default :
            return nil
        }
    }
}
