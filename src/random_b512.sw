library;

use std::b512::B512;
use std::core::ops::{Eq, Ord};

pub type RandomB512 = B512;

impl Ord for RandomB512 {
    fn lt(self, other: Self) -> bool {
        self.bits()[0] < other.bits()[0] || ((self.bits()[0] == other.bits()[0]) && (self.bits()[1] < other.bits()[1]))
    }

    fn gt(self, other: Self) -> bool {
        self.bits()[0] > other.bits()[0] || ((self.bits()[0] == other.bits()[0]) && (self.bits()[1] > other.bits()[1]))
    }
}

trait OrdEq: Ord + Eq {
} {
    fn ge(self, other: Self) -> bool {
        self.gt(other) || self.eq(other)
    }

    fn le(self, other: Self) -> bool {
        self.lt(other) || self.eq(other)
    }
}

impl OrdEq for RandomB512 {}
