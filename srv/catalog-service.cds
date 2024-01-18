using my.shelter as my from '../db/schema';

service CatalogPets {
    entity Pets as projection on my.Pets actions { 
        action addPet( type : String, name : String, gender : String,  age : String, isVaccinated : Binary, isAdopted : Binary, adopter_CIN : String) returns Pets; 
        };
    entity Adopters as projection on my.Adopters actions { 
        action addAdopter( CNI: String, firstName: String, lastName: String, telephone: String, pets_ID: String ) returns Adopters; 
        };

}

