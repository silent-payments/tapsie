@0xc3f75ea14d250771;

using Person = import "person.capnp";

interface Contact {
  getPerson @0 (id :Person.PersonId) -> (person :Person);
  getPeople @1 () -> (people :List(Person));
  addPerson @2 (person :Person) -> (success :Bool);
  updatePerson @3 (person :Person) -> (success :Bool);
  deletePerson @4 (id :Person.PersonId) -> (success :Bool);
  
  getAddress @5 (id :Person.AddressId) -> (address :Person.Address);
  getAddresses @6 () -> (addresses :List(Person.Address));
  addAddress @7 (address :Person.Address) -> (success :Bool);
  updateAddress @8 (address :Person.Address) -> (success :Bool);
  deleteAddress @9 (id :Person.AddressId) -> (success :Bool);
}
