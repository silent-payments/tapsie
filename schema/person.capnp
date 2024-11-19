@0xd7b1c5ed7d20be83;

struct PersonId {
  id @0 :UInt64;
}

struct Person {
  id @0 :PersonId;
  name @1 :Text;
  addressId @2 :List(AddressId);
}

struct AddressId {
  id @0 :UInt64;
}

struct Address {
  id @0 :AddressId;
  bolt12 @1 :Text;
  silentPayment @2 :Text;
}
