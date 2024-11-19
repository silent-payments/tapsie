@0xf0f74e49631fb3de;

struct PaymentId {
  id @0 :UInt64;
}

struct Payment {
  id @0 :PaymentId;
  amount @1 :UInt64;
  description @2 :Text;
  senderPersonId @3 :UInt64;
  receiverPersonId @4 :UInt64;
  created @5 :Date;
  updated @6 :Date;
}

struct Date {
  year @0 :Int16;
  month @1 :UInt8;
  day @2 :UInt8;
}
