// Test file to run without GitHub Actions environment
// This covers the non-GitHub Actions code paths

// Unset GitHub Actions before requiring dotest
delete process.env.GITHUB_ACTIONS;

const doTest = require( './index.js' );

// Test with noConsole to cover that branch
doTest.config( 'noConsole', true );

// Simple test to trigger the output function
doTest.add( 'Non-GitHub Actions test', test => {
  test()
    .isExactly( 'fail', 'test value', 1, 1 )
    .done()
  ;
} );

doTest.run();
