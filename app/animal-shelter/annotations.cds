using CatalogPets as service from '../../srv/catalog-service';

annotate service.Pets with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>PetType}',
            Value : type,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Name}',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Gender}',
            Value : gender,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Age}',
            Value : age,
        },
    ]
);
annotate service.Pets with {
    adopter @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Adopters',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : adopter_CNI,
                ValueListProperty : 'CNI',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'firstName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'lastName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'telephone',
            },
        ],
    }
};
annotate service.Pets with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'type',
                Value : type,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'gender',
                Value : gender,
            },
            {
                $Type : 'UI.DataField',
                Label : 'age',
                Value : age,
            },
            {
                $Type : 'UI.DataField',
                Label : 'isVaccinated',
                Value : isVaccinated,
            },
            {
                $Type : 'UI.DataField',
                Label : 'isAdopted',
                Value : isAdopted,
            },
            {
                $Type : 'UI.DataField',
                Label : 'adopter_CNI',
                Value : adopter_CNI,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
