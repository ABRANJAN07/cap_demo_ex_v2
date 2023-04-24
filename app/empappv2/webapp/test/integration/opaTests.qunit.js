sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'empappv2/test/integration/FirstJourney',
		'empappv2/test/integration/pages/EmployeeList',
		'empappv2/test/integration/pages/EmployeeObjectPage',
		'empappv2/test/integration/pages/WorkAssignmentsObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeeList, EmployeeObjectPage, WorkAssignmentsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('empappv2') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeeList: EmployeeList,
					onTheEmployeeObjectPage: EmployeeObjectPage,
					onTheWorkAssignmentsObjectPage: WorkAssignmentsObjectPage
                }
            },
            opaJourney.run
        );
    }
);