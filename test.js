var doTest = require ('./');

var testsDone = 0;


// Tests
  var test = doTest.test ();
doTest.add ('Module interface', () => {

  test
    .isObject ('fail', 'exports', doTest)
    .isObject ('fail', '.package', doTest.package)
    .isString ('warn', '.githubRepo', doTest.githubRepo)
    .isFunction ('fail', '.config', doTest.config)
    .isFunction ('fail', '.add', doTest.add)
    .isFunction ('fail', '.run', doTest.run)
    .isFunction ('fail', '.log', doTest.log)
    .isFunction ('fail', '.exit', doTest.exit)
    .isFunction ('fail', '.onExit', doTest.onExit)
    .isFunction ('fail', '.colorStr', doTest.colorStr)
    .isFunction ('fail', '.getType', doTest.getType)
    .isFunction ('fail', '.test', doTest.test)
    .isFunction ('fail', '.test.done', test.done)
    .isFunction ('fail', '.test.good', test.good)
    .isFunction ('fail', '.test.warn', test.warn)
    .isFunction ('fail', '.test.fail', test.fail)
    .isFunction ('fail', '.test.error', test.error)
    .isFunction ('fail', '.test.info', test.info)
    .isFunction ('fail', '.test.exit', test.exit)
    .done ();

  testsDone++;
});


  var arg = doTest.config ('first', true);
  var obj;
doTest.add ('.config()', (test) => {

  test ()
    .isObject ('fail', 'argument return', arg)
    .isExactly ('fail', 'argument first', arg && arg.first, true);

  obj = doTest.config ({
    second: true
  });

  test ()
    .isObject ('fail', 'object return', obj)
    .isExactly ('fail', 'object first', obj && obj.first, true)
    .isExactly ('fail', 'object second', obj && obj.second, true)
    .done ();

  testsDone++;
});


doTest.add ('test() shortcut', (test) => {
  doTest.test ()
    .isFunction ('fail', 'test', test)
    .isObject ('fail', 'test() return', test ())
    .done ();

  testsDone++;
});


doTest.add ('test() .info()', (test) => {
  doTest.test ()
    .info ('-- Short object:')
    .info ({ hello: 'world' })
    .info ('-- Long object:')
    .info (test ())

    .info ('-- Short array:')
    .info (['one', 'two'])
    .info ('-- Long array:')
    .info (process.mainModule.paths)

    .done ();

  testsDone++;
});


  var colorTest = doTest.colorStr ('magenta', 'magenta');
  var colorMatch = '\u001b[35mmagenta\u001b[0m';
doTest.add ('Methods', (test, fake) => {

  doTest.log ('.log() This is a plain (default) message');
  doTest.log ('.log() This is a plain (preset) message');

  /* eslint-disable no-undefined */

  doTest.test ()
    .info ('.length: ' + doTest.length)
    .isError ('fail', 'test() .isError', new Error ())
    .isObject ('fail', 'test() .isObject', {})
    .isArray ('fail', 'test() .isArray', [])
    .isString ('fail', 'test() .isString', 'hello')
    .isNumber ('fail', 'test() .isNumber', 1)
    .isUndefined ('fail', 'test() .isUndefined', fake)
    .isNull ('fail', 'test() .isNull', null)
    .isNaN ('fail', 'test() .isNaN', NaN)
    .isBoolean ('fail', 'test() .isBoolean', true)
    .isFunction ('fail', 'test() .isFunction', () => {})
    .isDate ('fail', 'test() .isDate', new Date ())
    .isExactly ('fail', 'test() .isExactly', ':)', ':)')
    .isNot ('fail', 'test() .isNot', 'a', 'b')
    .isRegexp ('fail', 'test() .isRegexp', /^\w$/)
    .isRegexpMatch ('fail', 'test() .isRegexpMatch', 'a', /^\w$/)
    .isCondition ('fail', 'test() .isCondition <', 1, '<', 2)
    .isCondition ('fail', 'test() .isCondition >', 2, '>', 1)
    .isCondition ('fail', 'test() .isCondition <=', 1, '<=', 2)
    .isCondition ('fail', 'test() .isCondition >=', 2, '>=', 2)
    .isEmpty ('fail', 'test() .isEmpty undefined', undefined)
    .isEmpty ('fail', 'test() .isEmpty null', null)
    .isEmpty ('fail', 'test() .isEmpty string', '')
    .isEmpty ('fail', 'test() .isEmpty object', {})
    .isEmpty ('fail', 'test() .isEmpty array', [])
    .isEmpty ('fail', 'test() .isEmpty error', new Error ())
    .isNotEmpty ('fail', 'test() .isNotEmpty undefined', 1)
    .isNotEmpty ('fail', 'test() .isNotEmpty null', 1)
    .isNotEmpty ('fail', 'test() .isNotEmpty string', '1')
    .isNotEmpty ('fail', 'test() .isNotEmpty object', { hi: 'you' })
    .isNotEmpty ('fail', 'test() .isNotEmpty array', ['yay'])
    .isNotEmpty ('fail', 'test() .isNotEmpty error', new Error ('test error'))
    .info ('Warnings for coverage:')
    .isCondition ('warn', 'test() .isCondition invalid', 1, '', 2)
    .isNotEmpty ('warn', 'test() .isNotEmpty undefined', undefined)
    .isNotEmpty ('warn', 'test() .isNotEmpty null', null)
    .isNotEmpty ('warn', 'test() .isNotEmpty string', '')
    .isNotEmpty ('warn', 'test() .isNotEmpty object', {})
    .isNotEmpty ('warn', 'test() .isNotEmpty array', [])
    .isNotEmpty ('warn', 'test() .isNotEmpty error', new Error ())
    .isExactly ('fail', '.getType', doTest.getType ([]), 'array')
    .isExactly ('fail', '.colorStr', colorTest, colorMatch)
    .isEmpty ('warn', 'output() warn', 'test warning')
    .warn ('This is a warn message')
    .good ('This is a good message')
    .done (() => {
      doTest.log ('info', 'test() .done() callback');
    });

  /* eslint-enable no-undefined */

  testsDone++;
});


doTest.add ('All tests done', (test) => {
  testsDone++;

  test ()
    .isExactly ('fail', 'testsDone', testsDone, doTest.length)
    .done ();
});


doTest.run (1);
