sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'animalshelter/test/integration/FirstJourney',
		'animalshelter/test/integration/pages/PetsList',
		'animalshelter/test/integration/pages/PetsObjectPage'
    ],
    function(JourneyRunner, opaJourney, PetsList, PetsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('animalshelter') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePetsList: PetsList,
					onThePetsObjectPage: PetsObjectPage
                }
            },
            opaJourney.run
        );
    }
);