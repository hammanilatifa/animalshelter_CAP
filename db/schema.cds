namespace my.shelter;

entity Pets {
    key ID : Integer;
        type : String;
        name : String;
        gender : String;
        age : String;
        isVaccinated : Binary;
        isAdopted : Binary;
        adopter : Association to Adopters;
}


entity Adopters{
    key CNI : String;
    firstName : String;
    lastName : String;
    telephone: String;
    pets : Association to Pets on pets.adopter = $self;
}