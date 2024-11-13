contract;

mod random_b512;

use std::b512::B512;

use random_b512::RandomB512;

abi Repro {
    fn repro();
}

impl Repro for Contract {
    fn repro() {
        let plus_100: RandomB512 = B512::from((
            0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff,
            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff,
        ));

        let other = B512::from((
            0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff,
            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff,
        ));

        if plus_100 <= other {
        } 
    }
}