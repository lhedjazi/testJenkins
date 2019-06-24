function testmain() 
% Test private projects
% Create a runner that runs completely silently but still produces a valid TestResult 

% runner = matlab.unittest.TestRunner.withNoPlugins; 

% OR 

% Create a runner that produces familiar text output. 

runner = matlab.unittest.TestRunner.withTextOutput; 

result = runner.run(testsuite('solverTest.m'))

rt = table(result); 
sortrows(rt, 'Duration'); 
writetable(rt, 'TestResults.csv', 'QuoteStrings', true); 

exit

end 
