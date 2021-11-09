### 2.12.0 (2021-11-09)

##### Documentation Changes

*  Minor tweaks ([a60bfe6e](https://github.com/fvdm/nodejs-dotest/commit/a60bfe6eef4445f07525d4e4bddb20f850fd37c9))

##### New Features

* **runner:**  Env vars to override coverage ([d4989372](https://github.com/fvdm/nodejs-dotest/commit/d4989372284142e3e4c66babc644cc9478543b6c))

##### Refactors

* **runner:**
  *  Exclude node_modules ([99403292](https://github.com/fvdm/nodejs-dotest/commit/99403292a6d5cf4558dab823c77868749998e605))
  *  Removed obsolete vars ([16341c50](https://github.com/fvdm/nodejs-dotest/commit/16341c5010419a46ca977718dd33dbd7ae29dcb8))

##### Tests

*  Removed obsolete var check ([bb848cde](https://github.com/fvdm/nodejs-dotest/commit/bb848cde7af36211702a1d39e92fa697f781d7f8))

#### 2.11.1 (2021-10-24)

##### Documentation Changes

*  Minor text edit ([1ecc359b](https://github.com/fvdm/nodejs-dotest/commit/1ecc359bd53bdb118e37282fb740703514e6467c))
* **badges:**  Link npm badge to released versions ([ad9991b7](https://github.com/fvdm/nodejs-dotest/commit/ad9991b7b76df251c041b556b3486fe78f70287f))

##### Tests

* **ci:**
  *  Added DOTEST_WAIT env var ([21f4da83](https://github.com/fvdm/nodejs-dotest/commit/21f4da83f4a08a3a762c1fe950560849cf878330))
  *  Removed obsolete git fetch ([7471f25e](https://github.com/fvdm/nodejs-dotest/commit/7471f25e99e4dcbea4cbd810f4ffa52aa869f7a6))
  *  Renamed Finish to Upload coverage ([e31d0345](https://github.com/fvdm/nodejs-dotest/commit/e31d03455767ca6856d5f557f84a5b056838013a))

### 2.11.0 (2021-10-24)

##### Chores

* **package:**  Add @actions/core dependency ([496d1107](https://github.com/fvdm/nodejs-dotest/commit/496d1107cd71ac3e9ee08e8d55d68806e8a77415))
* **deps:**  Bump eslint from 7.32.0 to 8.0.0 ([820c725e](https://github.com/fvdm/nodejs-dotest/commit/820c725ea4712bf8c702f325f98d89ebcf32a8ca))

##### New Features

*  Style log lines for Github actions ([de5ea77d](https://github.com/fvdm/nodejs-dotest/commit/de5ea77d7520f28892828fc1f03598469dc03325))

##### Bug Fixes

* **output:**  Conditional styling for Github action ([2e367c13](https://github.com/fvdm/nodejs-dotest/commit/2e367c1313d5a17e1f255ee9706dd5f7ea0f614f))

##### Refactors

* **test:**  Allow `dontCount` for errors ([c82cddd7](https://github.com/fvdm/nodejs-dotest/commit/c82cddd7a9c1b734b415450d1dec938db1904f86))
*  Removed Github urls from output ([e5a7b73f](https://github.com/fvdm/nodejs-dotest/commit/e5a7b73fe9b5b503471bdebb0eb87b62ac929462))
*  More column spacing for readability ([78c52b42](https://github.com/fvdm/nodejs-dotest/commit/78c52b42079ff984b00485dde8ab95203fdc84b2))
*  Style fail/warn checks for Github action ([c6a9c85c](https://github.com/fvdm/nodejs-dotest/commit/c6a9c85cfcf2133a18c42db78e2f0499b5214209))
*  Added blank link after error dump ([31972009](https://github.com/fvdm/nodejs-dotest/commit/31972009439b9995bef24f33f7adc42b8da010e0))
*  Align output columns whitespace ([712f4c90](https://github.com/fvdm/nodejs-dotest/commit/712f4c905119d7a5982e1a6b6369e9c1db2d4d8f))
*  Cleaner fail/warn/error lines for action ([d9bd8917](https://github.com/fvdm/nodejs-dotest/commit/d9bd8917faadb447beba3b613f811b3ea8636eaf))
*  Don't style info/notice on Github action ([36499861](https://github.com/fvdm/nodejs-dotest/commit/364998618bb709ddb83d0b3530bde036a24f61b4))
* **log:**  Increase column spacing on error ([dac64ddb](https://github.com/fvdm/nodejs-dotest/commit/dac64ddb854ceed452f0c5d4f0b0ceb3739e5142))
* **output:**  Too much spacing for warn/fail ([c62dd243](https://github.com/fvdm/nodejs-dotest/commit/c62dd243b7a44f7535595c78ca283bedf3db88bc))

##### Code Style Changes

*  Removed obsolete default cases ([5b6bc213](https://github.com/fvdm/nodejs-dotest/commit/5b6bc21350fe73e35d41da3b690143d9803080b2))
* **ci:**  Ignore Github action conditions ([1f66005b](https://github.com/fvdm/nodejs-dotest/commit/1f66005b1ebe24079b7deb1b240e47d996d92214))

##### Tests

*  Indicate `test().done()` callback as good ([bba421d4](https://github.com/fvdm/nodejs-dotest/commit/bba421d4e2a787d28b87ad15b460d5b8b9f8235e))
*  Minor reordering ([eb79be5f](https://github.com/fvdm/nodejs-dotest/commit/eb79be5f4398528a2d076dd9e629d64e3fff5ec3))
*  More warnings for coverage ([5562f83b](https://github.com/fvdm/nodejs-dotest/commit/5562f83bef89d9429b215f19c5298753529f6e3f))
*  More accurate `testsDone` counting ([12fa7be9](https://github.com/fvdm/nodejs-dotest/commit/12fa7be908e2dc22fe5402a4c80a45a970ee7e06))
*  Minor clean up ([017469ce](https://github.com/fvdm/nodejs-dotest/commit/017469ce61fca5846e5747000474b21f0930f9b2))
*  Added onExit() callback ([a8833562](https://github.com/fvdm/nodejs-dotest/commit/a8833562866d48c55c6ad2d5c9f33a6505790f35))
* **ci:**
  *  Default case is not required in ESLint ([78535c3c](https://github.com/fvdm/nodejs-dotest/commit/78535c3c65b9b4f3e56030bf5c92a96db12b5189))
  *  Modern ESLint config ([4b59d0c1](https://github.com/fvdm/nodejs-dotest/commit/4b59d0c14d9481214a741212c3b6e586e8606647))
  *  Ignore Coveralls error ([0e1f121a](https://github.com/fvdm/nodejs-dotest/commit/0e1f121a4ce6708b232c4a5aa392834e0f642f7c))
* **isCondition:**  Fixed missing operator ([ad1d044e](https://github.com/fvdm/nodejs-dotest/commit/ad1d044edd7d90044172bd8d14810077ae5020a6))
* **action:**
  *  Always submit coverage report ([dda34e56](https://github.com/fvdm/nodejs-dotest/commit/dda34e562ef6d9048cc3ae74a0524902aff479b1))
  *  Add dotest env vars ([a93bbfd5](https://github.com/fvdm/nodejs-dotest/commit/a93bbfd5f326e01467a2af639d5129cf1393a19a))
  *  Fix indentation ([58445c36](https://github.com/fvdm/nodejs-dotest/commit/58445c36545c41161fc8314782f4ca3a615b4c87))
  *  Add good-build hook ([e48fc545](https://github.com/fvdm/nodejs-dotest/commit/e48fc5457220fcf271574d28f675b88b99747dc4))
  *  Run on a weekly schedule ([ed4d9f28](https://github.com/fvdm/nodejs-dotest/commit/ed4d9f287ad4d4a8d8e0be3d3cd19bf77b8d291c))
  *  Ignore PRs on master branch ([c760d098](https://github.com/fvdm/nodejs-dotest/commit/c760d0984c112f24a3f2ca179b02b66805200f43))
  *  Use both LTS and current versions ([75b56021](https://github.com/fvdm/nodejs-dotest/commit/75b5602173b0c7c8425be0fbc3ded8ded8679307))

### 2.10.0 (2021-08-31)

##### Documentation Changes

*  Added DOTEST_MINCOV env var ([e46cf394](https://github.com/fvdm/nodejs-dotest/commit/e46cf394bcb583775e18137b53086092d18598da))

##### New Features

* **runner:**  Add minimal coverage env var ([a11df33f](https://github.com/fvdm/nodejs-dotest/commit/a11df33fad984427e8e2b1d0685ccd268b87be1e))

##### Refactors

*  Removed commits listing ([690be2c6](https://github.com/fvdm/nodejs-dotest/commit/690be2c66dd7d65efb965c801490f84e254de807))

##### Code Style Changes

* **runner:**  Removed obsolete repourl var ([54887707](https://github.com/fvdm/nodejs-dotest/commit/54887707d5e5e7ac82fd7304173ed9847cf74fbd))
*  Minor clean up ([0321b57a](https://github.com/fvdm/nodejs-dotest/commit/0321b57a55b8884d7bf80461711b1e5199c6eb28))

### 2.9.0 (2021-07-16)

##### Refactors

* **runner:**  Exclude test.js in coverage ([e8f84592](https://github.com/fvdm/nodejs-dotest/commit/e8f845929c3d2a6c3d270a83be8744a140dbd5f4))

#### 2.8.2 (2021-07-04)

##### Bug Fixes

* **runner:**  Skip coverage broke the test ([b5ada970](https://github.com/fvdm/nodejs-dotest/commit/b5ada970580c49fdefa2ade54d3a57104ddcde8c))

#### 2.8.1 (2021-07-04)

##### Bug Fixes

* **runner:**  Skip coverage broke the test ([ba8b8aa4](https://github.com/fvdm/nodejs-dotest/commit/ba8b8aa453267f0e00aa414d32eb4e7f9aa4a6e3))

### 2.8.0 (2021-07-03)

##### Chores

* **package:**  Update dependencies ([d996a310](https://github.com/fvdm/nodejs-dotest/commit/d996a310a3c0691d725021a5cf8a0a0a412ac155))
*  Minor clean up ([9eef68ac](https://github.com/fvdm/nodejs-dotest/commit/9eef68ac8875d9e3b5d8713112169732b7c20170))

##### Documentation Changes

*  Minor clarifications (retry) ([7fef4319](https://github.com/fvdm/nodejs-dotest/commit/7fef4319d4ab37b6b4951433a0d318488fed7d3e))
*  Minor clarification ([4f1d9d49](https://github.com/fvdm/nodejs-dotest/commit/4f1d9d49c7db2a75a8d32eae8e64e224df576c46))
*  Clean up markdown ([c6b6a3ea](https://github.com/fvdm/nodejs-dotest/commit/c6b6a3ea38a4f10cad0c364f7f513b588142af3b))
* **badges:**  Renamed build status ([27e3126f](https://github.com/fvdm/nodejs-dotest/commit/27e3126f928b498dd52c48f7e6c00e33053271df))

##### New Features

*  Added DOTEST_NOCOV flag ([f3917754](https://github.com/fvdm/nodejs-dotest/commit/f3917754b57438e81fc298dc31de019b42e9cca5))

##### Bug Fixes

*  Documentation somehow became binary ([8d3d5d3b](https://github.com/fvdm/nodejs-dotest/commit/8d3d5d3b7dabd757904b1816615668564c20e2a9))
*  Replace all linebreaks ([392a10a9](https://github.com/fvdm/nodejs-dotest/commit/392a10a922d7c9559a310699f098035ad5973423))

##### Refactors

*  Better skip coverage handling ([fc23a7f7](https://github.com/fvdm/nodejs-dotest/commit/fc23a7f701c3d802e4efc4e75f1a81192e7e54d9))
*  Minor readability edits ([eaf28ddd](https://github.com/fvdm/nodejs-dotest/commit/eaf28ddd706da3b9576b6ad63e7e6ca30798b7a6))
* **runner:**  Check for generic CI env ([df53d17a](https://github.com/fvdm/nodejs-dotest/commit/df53d17afea78bc78254547fd75edfdbd80a0817))

##### Code Style Changes

*  More syntax clean up ([4ac28ffb](https://github.com/fvdm/nodejs-dotest/commit/4ac28ffbc792762f52b8867c08223fd9d18901ea))
*  Minor lint and syntax changes ([8aadfde9](https://github.com/fvdm/nodejs-dotest/commit/8aadfde90038732a29570387fef9a7ea3a3649e5))

##### Tests

* **config:**
  *  CodeQL checkout version ([b1d42468](https://github.com/fvdm/nodejs-dotest/commit/b1d424684f5ba0160cf40421e1d864da904c7baf))
  *  Fixed syntax typo ([89493cb9](https://github.com/fvdm/nodejs-dotest/commit/89493cb971c89ac978f0aa3e21bf1289b3cd057b))
  *  CodeQL permission error ([7d8c65ec](https://github.com/fvdm/nodejs-dotest/commit/7d8c65ec0320dc93987d2e288149a8d04c6b6ef4))
  *  Replaced Travis with Github actions ([2ae07d12](https://github.com/fvdm/nodejs-dotest/commit/2ae07d122ea4ba98d75e11e1ecfa0b24f6fd9ce9))
  *  Modernized ESlint config ([323d2d26](https://github.com/fvdm/nodejs-dotest/commit/323d2d26129e89f54c2ae73303462ddf0e72080c))
* **github:**
  *  Removed actions ([e06a8cd9](https://github.com/fvdm/nodejs-dotest/commit/e06a8cd9c9e011290b2a6ac3d4d0960cf79c178f))
  *  Lowercase action name build.yml ([bae2db54](https://github.com/fvdm/nodejs-dotest/commit/bae2db54cbc6778a79cae6606c1b2f6a63201605))
  *  Renamed node.js.yml to build.yml ([8e61792b](https://github.com/fvdm/nodejs-dotest/commit/8e61792b9ae0d1467b8a363426d4672b8d1927a2))
  *  Renamed CI action to Build ([4e723788](https://github.com/fvdm/nodejs-dotest/commit/4e72378810a32d6b7a05a58f978d7ed59dd4a1af))
* **runner:**  Undo generic CI check ([c463ac8a](https://github.com/fvdm/nodejs-dotest/commit/c463ac8ab8c6a863619d9bb203db7372ba4390bd))
*  Replaced Travis CI with Github actions ([fbcd7f47](https://github.com/fvdm/nodejs-dotest/commit/fbcd7f475981290eb232a4bd4a1afd40fefe4bc2))

#### 2.7.1 (2020-05-16)

##### Bug Fixes

* **runner:**
  *  Don't fail eslint on empty subdirs ([fe4957a1](https://github.com/fvdm/nodejs-dotest/commit/fe4957a120b5a46864e9ae4dcda30a5d3756a076))
  *  Only run ESlint on test/ for js files ([4f83d3dd](https://github.com/fvdm/nodejs-dotest/commit/4f83d3dd83ac1cc7d50b1dfb792e94c121a6b557))

### 2.7.0 (2020-05-16)

##### Breaking Changes

*  Removed Codacy support ([06ccbcca](https://github.com/fvdm/nodejs-dotest/commit/06ccbccabefe63eb95fea1e2134aa3040bf8a852))

##### Chores

* **package:**
  *  Minimum node version 10 ([39008707](https://github.com/fvdm/nodejs-dotest/commit/390087076399a5791b15d85cf1e28fd52292213c))
  *  Update dependencies ([d1f58db7](https://github.com/fvdm/nodejs-dotest/commit/d1f58db7ab80e27771d165a379596ca6112d3905))
* **dev:**  Update editorconfig ([70025803](https://github.com/fvdm/nodejs-dotest/commit/70025803b4b8f4090e3a83ccfe9f2a606a676632))

##### Tests

* **config:**
  *  Add OS to Travis config ([f2e1fe4c](https://github.com/fvdm/nodejs-dotest/commit/f2e1fe4cb81238f42c060e29bb7ab2d75e057136))
  *  Update Travis node versions ([a49d3918](https://github.com/fvdm/nodejs-dotest/commit/a49d39183944c7648ae86109e694cc19c68b922a))
  *  Modernized Travis config ([2209dab0](https://github.com/fvdm/nodejs-dotest/commit/2209dab01029eb6ab787d82406dc04c7807abc35))

#### 2.6.2 (2019-12-26)

##### Chores

* **package:**
  *  Update nyc to version 15.0.0 ([#36](https://github.com/fvdm/nodejs-dotest/pull/36)) ([2d70392d](https://github.com/fvdm/nodejs-dotest/commit/2d70392ddb25b5ef8d31ad4e6df88c5f00c8ea7c))
  *  Update author url ([#35](https://github.com/fvdm/nodejs-dotest/pull/35)) ([8a1c8945](https://github.com/fvdm/nodejs-dotest/commit/8a1c89453e50a9519771470cdb15eb560da26830))
  *  Update eslint to version 6.0.1 ([#32](https://github.com/fvdm/nodejs-dotest/pull/32)) ([9de46116](https://github.com/fvdm/nodejs-dotest/commit/9de461162949870371f35edfd215db2b92685735))
* **deps:**  Update coveralls to v3.0.6 ([#34](https://github.com/fvdm/nodejs-dotest/pull/34)) ([ac3e4a66](https://github.com/fvdm/nodejs-dotest/commit/ac3e4a663af99cd8aa4e3a8790e603ef5d7f3cc0))
* **security:**  Update ESLint to v6.2.2 ([#33](https://github.com/fvdm/nodejs-dotest/pull/33)) ([8305e249](https://github.com/fvdm/nodejs-dotest/commit/8305e249f58211928c7dc83048c90fc36adea494))

##### Documentation Changes

* **readme:**  Added Promise example ([adb9f92a](https://github.com/fvdm/nodejs-dotest/commit/adb9f92a66b583accdf9bddac235bd28c5b58dc0))

##### Tests

* **config:**  Update Node versions on Travis CI ([55f30c17](https://github.com/fvdm/nodejs-dotest/commit/55f30c17c65b5b75565f84e3d8d3b41439694978))

#### 2.6.1 (2019-06-10)

##### Bug Fixes

*  Coverage didn’t run in the pkg context ([682dc728](https://github.com/fvdm/nodejs-dotest/commit/682dc728dff680e6db75354c070bd098b30efd9c))

### 2.6.0 (2019-06-10)

##### Chores

* **package:**
  *  Update dependencies ([0bcf0730](https://github.com/fvdm/nodejs-dotest/commit/0bcf07301ee0edfe0264f4f5dabe1833fd9bb4d2))
  *  Update minimum node version ([f138e11b](https://github.com/fvdm/nodejs-dotest/commit/f138e11bc363f523ab35a5570908197aa283e326))
  *  update eslint to version 5.15.2 ([#30](https://github.com/fvdm/nodejs-dotest/pull/30)) ([9a4401d1](https://github.com/fvdm/nodejs-dotest/commit/9a4401d14178fac7d4cd74a97e4301641ebd1dc7))

##### Documentation Changes

*  Minor clean up ([d48e381c](https://github.com/fvdm/nodejs-dotest/commit/d48e381cee2dbbd8cfddfe0d99cba0a51f9be7ed))

##### New Features

*  Add log() dontCount argument ([786d1ca9](https://github.com/fvdm/nodejs-dotest/commit/786d1ca9a17dfc98c07031831cbec8619284cc69))

##### Bug Fixes

* **runner:**  Incorrect Codacy env check ([667f55d3](https://github.com/fvdm/nodejs-dotest/commit/667f55d32d81aeb2562284a0d407d647b3c82df1))

##### Refactors

*  Replaced istanbul with nyc ([330083e4](https://github.com/fvdm/nodejs-dotest/commit/330083e47599ae3314c8c4126ecd394a2375ff88))

##### Tests

*  Improve coverage for error() and fail() ([2892933a](https://github.com/fvdm/nodejs-dotest/commit/2892933a6776b9209a33caf546fa1183f8111d33))
* **config:**
  *  Update Travis node versions ([0fb58f79](https://github.com/fvdm/nodejs-dotest/commit/0fb58f793411ddd8d6f130d1c0085ff79f9ae098))
  *  Update ESLint ES version to 2017 ([57bfb71f](https://github.com/fvdm/nodejs-dotest/commit/57bfb71f62fe4ee1b363efaf6d0f3e1b52e83404))

### 2.5.0 (2018-07-25)

##### New Features

* **runner:**  Send coverage report to Codacy ([dcc12307](https://github.com/fvdm/nodejs-dotest/commit/dcc12307b7d8173b0f7ca413c79f227f9736fa08))

#### 2.4.1 (2018-07-25)

##### Chores

* **package:**  Update ESLint to 5.2 ([7169bf12](https://github.com/fvdm/nodejs-dotest/commit/7169bf12940fd349cb1a3c324f6372caa6039cfa))

### 2.4.0 (2018-07-25)

##### New Features

* **main:**
  *  Added .isClass check ([f1f9c87c](https://github.com/fvdm/nodejs-dotest/commit/f1f9c87c1d80c1612c2250b26ca7dd345e210fbd))
  *  Added .isInstanceOf check ([897b2712](https://github.com/fvdm/nodejs-dotest/commit/897b27124bbc5fc899c3c351e5c584e074bffddc))

### 2.3.0 (2017-12-16)

##### Chores

* **package:** Add nsp dependency ([4b8440a8](https://github.com/fvdm/nodejs-dotest/commit/4b8440a84491e614ffdd41e07f97391e878bf0ca))

##### New Features

* **runner:** Add NSP check ([4f945d21](https://github.com/fvdm/nodejs-dotest/commit/4f945d21aa5c515380c7eb7abf219594fa154d72))

##### Code Style Changes

* **runner:** Clean up ([a6772a78](https://github.com/fvdm/nodejs-dotest/commit/a6772a782bd6e7236b04e84ad9413eb703160546))

### 2.2.0 (2017-12-16)

##### Chores

* **develop:**
  * Add package-lock.json to gitignore ([c4478f92](https://github.com/fvdm/nodejs-dotest/commit/c4478f92ffd7ebcd467eeeff3333ab6e5e13b37d))
  * Clean up .gitignore ([9a61a5e8](https://github.com/fvdm/nodejs-dotest/commit/9a61a5e8bdc84fa27a039f07451104206d136070))

##### Documentation Changes

* **readme:**
  * Minor tweaks and text edits ([d039a044](https://github.com/fvdm/nodejs-dotest/commit/d039a04418d6f863f0ed8393daee4cc34479edf8))
  * Code examples in ES6 style ([5396e1ff](https://github.com/fvdm/nodejs-dotest/commit/5396e1ff62f89f83ad1ce3b8bd547ac46b7c6520))
* **badges:** Limit to master branch ([8405dd59](https://github.com/fvdm/nodejs-dotest/commit/8405dd59ca51d4f2cef03dddfa4c4bdfea1d37a5))

##### Bug Fixes

* **done:**
  * Value was converted to seconds ([0a62b49d](https://github.com/fvdm/nodejs-dotest/commit/0a62b49d116c18a9315dd4fb6ab3b8f66ee0332c))
  * Fixed syntax typo ([4465468f](https://github.com/fvdm/nodejs-dotest/commit/4465468f8b95165015005f63826f0b726b29831a))

##### Refactors

* **testFunc:** Rewrite to add test details ([6fc83fb0](https://github.com/fvdm/nodejs-dotest/commit/6fc83fb0c788db4b9a4732baa80717aee3a5d304))
* **log:** Removed pre node v6 conditional ([36480a24](https://github.com/fvdm/nodejs-dotest/commit/36480a24a641a359b23395cad412b54b747715c3))

##### Code Style Changes

* **syntax:**
  * Clean up ([4803a6cd](https://github.com/fvdm/nodejs-dotest/commit/4803a6cd4a62c8b912f962caebadc2b28832e6f3))
  * Short inline functions ([f7e15688](https://github.com/fvdm/nodejs-dotest/commit/f7e15688a76149beb59210bfdb09bfb22d0504e1))
  * Change inline functions to ES6 ([640124c8](https://github.com/fvdm/nodejs-dotest/commit/640124c8dc580c99152ac8e2271967edcfd4c535))
  * ES6 named object props ([69ae83fa](https://github.com/fvdm/nodejs-dotest/commit/69ae83fa1f343f41be346a3260d09c2c17a1b12b))
  * Changed var to ES6 const and let ([402c6a47](https://github.com/fvdm/nodejs-dotest/commit/402c6a4782c4a70c66236c4e844fdb6d6344614d))
* **example:** Changed var to ES6 const and let ([8baf36ff](https://github.com/fvdm/nodejs-dotest/commit/8baf36ffb737ca832965937bedc3a77aecf4250b))
* **test:**
  * Changed var to ES6 const and let ([d21f11f4](https://github.com/fvdm/nodejs-dotest/commit/d21f11f459d9f4cf28934d083de8cf02781c293c))
  * Change inline functions to ES6 ([513f8e4f](https://github.com/fvdm/nodejs-dotest/commit/513f8e4facd9dc2a041230d2040044af5e77f1b5))
* **comment:** Clean up JSDoc ([21c6ff1b](https://github.com/fvdm/nodejs-dotest/commit/21c6ff1b1c2f51d4952170e8601ff11312459dd0))

##### Tests

* **config:** Removed obsolete ecmaVersion ([3104d88c](https://github.com/fvdm/nodejs-dotest/commit/3104d88cdf205218cd62ec3daf29a24903fb0f0d))

### 2.1.0 (2017-12-12)

##### Chores

* **package:** Update dependencies to enable Greenkeeper ([#23](https://github.com/fvdm/nodejs-dotest/pull/23)) ([d7267d8c](https://github.com/fvdm/nodejs-dotest/commit/d7267d8c6e9e37917a9f7fe7d060f3f881d00bb6))

##### Documentation Changes

* **readme:** Replaced coffee link with a button ([b6489bb6](https://github.com/fvdm/nodejs-dotest/commit/b6489bb627d5acc8214ca2ef4457e0a1885ea251))

##### Refactors

* Revert devdeps to dotest ([0dceea5b](https://github.com/fvdm/nodejs-dotest/commit/0dceea5b93d2766ce612c2c8f94e0fcef5a92ebd))

##### Tests

* **config:** Update Travis CI node versions ([67bd9241](https://github.com/fvdm/nodejs-dotest/commit/67bd9241fcce0754ab29d44334e7ade67ffcc1ed))

## 2.0.0 (2017-3-23)

##### Bug Fixes

* **runner:** Fixed invalid lcov.info path ([fad2bada](https://github.com/fvdm/nodejs-dotest/commit/fad2badab88f58f4a0835e73eb18d2ab36d6881b))

##### Refactors

* **runner:** Parent maintains dependecies ([b251c69f](https://github.com/fvdm/nodejs-dotest/commit/b251c69f885ff8a6f9c1f5ac71f1330cd412923b))
* **package:** Moved deps to dev deps ([3952b3cf](https://github.com/fvdm/nodejs-dotest/commit/3952b3cf7517cc32bd8d1297706d1445f4c9eead))

#### 1.15.2 (2017-3-23)

##### Documentation Changes

* **readme:** Added coffee request to author ([56b6cfac](https://github.com/fvdm/nodejs-dotest/commit/56b6cfacda7472294033490cd93e9f40f4bcec6a))

##### Refactors

* **runner:**
  * Replaced unnecessary cat pipe ([64d06887](https://github.com/fvdm/nodejs-dotest/commit/64d06887005530fe47043c98565aaaa692bcc4af))
  * Replaced legacy backtick cmds ([d7d52200](https://github.com/fvdm/nodejs-dotest/commit/d7d5220081f23a8ba9fabe429487dc963b243c62))

#### 1.15.1 (2017-2-16)

##### Chores

* **package:**
  * Update dependencies ([b9867e3e](https://github.com/fvdm/nodejs-dotest/commit/b9867e3e2cd95a23b69d7996959cdc26b9d10587))
  * Update eslint dep (#21) ([ea22b130](https://github.com/fvdm/nodejs-dotest/commit/ea22b13075aadb313da9e8134a42c1b4ff2f56af))
* **develop:**
  * Update .gitignore config ([f7cc3f44](https://github.com/fvdm/nodejs-dotest/commit/f7cc3f44f1efb6621d3f2fbd5a4084b4d2ad934a))
  * Added .editorconfig file ([29a9c775](https://github.com/fvdm/nodejs-dotest/commit/29a9c7755045aa7cc26b330b271a5ae72b46bf9e))

##### Bug Fixes

* **isRegexpMatch:** Remove tilde from condition ([2d662bdc](https://github.com/fvdm/nodejs-dotest/commit/2d662bdce5633a6e9713cf7c11dc522460333913))

##### Tests

* **main:** Moved invalid check to coverage list ([2318443c](https://github.com/fvdm/nodejs-dotest/commit/2318443c3b376b870775b0636d707fac0afdd360))
* **config:**
  * bitHound allow 1200 lines ([6c74408b](https://github.com/fvdm/nodejs-dotest/commit/6c74408b10027cc8f65c6e3507b7368432aa1e96))
  * ESLint allow all operator-linebreak ([7d51d09b](https://github.com/fvdm/nodejs-dotest/commit/7d51d09bfa4f2687ffee3423447e3d8ad118e2e3))
  * Run latest node first on Travis CI ([a49da92e](https://github.com/fvdm/nodejs-dotest/commit/a49da92e9cf634b5a43044a2a0e6da9bc21e64fd))

### 1.15.0 (2017-1-5)

##### Chores

* **develop:** Debug Travis CI git config ([42b8fc29](https://github.com/fvdm/nodejs-dotest/commit/42b8fc298538b636c558125eb8980d3456b8f8e2))

##### New Features

* **main:**
  * Add .githubRepo string to interface ([308ee862](https://github.com/fvdm/nodejs-dotest/commit/308ee862da014765876405c5e6ce4824d8cc475b))
  * Report real GitHub repo and PR links ([474fd735](https://github.com/fvdm/nodejs-dotest/commit/474fd7358e19f9fb9e5d7e97bfadc9f15d34453c))

##### Bug Fixes

* **runner:**
  * Another ancient git bypass ([ac68ef96](https://github.com/fvdm/nodejs-dotest/commit/ac68ef964783a0efaff1b06e6f23f97f307ba6c5))
  * Fix compatible $repourl ([0148ce76](https://github.com/fvdm/nodejs-dotest/commit/0148ce7684ea1699765c2b4071bb2f3e43a590be))

##### Refactors

* **runner:**
  * Fixed $reposlug detection ([2fe9beb0](https://github.com/fvdm/nodejs-dotest/commit/2fe9beb0cf9b32343c8e4f9f5c3fc1b7eb9f9f4a))
  * Get repo URL from git instead of npm ([f94df351](https://github.com/fvdm/nodejs-dotest/commit/f94df35183639e7d52bcfab3d1c35fac3d3bd4ab))

##### Tests

* **main:**
  * Add .githubRepo to interface test ([2a1cb045](https://github.com/fvdm/nodejs-dotest/commit/2a1cb045024347b530bc35d511873abffbf16cc1))
  * Add .package to interface test ([a4f2dc20](https://github.com/fvdm/nodejs-dotest/commit/a4f2dc209dd373185c697d7f7825626bcf3191a5))

### 1.14.0 (2016-11-1)

##### New Features

* **runner:** Print GitHub compare URL ([87e6ecb7](https://github.com/fvdm/nodejs-dotest/commit/87e6ecb7f95d008f0985ddbca83539a604b79dfe))

##### Bug Fixes

* **runner:**
  * Properly quote bin paths ([e81f2c4d](https://github.com/fvdm/nodejs-dotest/commit/e81f2c4dc5262299d99650da73ea632b10424d3d))
  * Fixed binary operator on condition ([97e762a8](https://github.com/fvdm/nodejs-dotest/commit/97e762a81ba596c411256105dcc0c489f42f1dbb))

##### Refactors

* **runner:** Prettier commits report ([92b22118](https://github.com/fvdm/nodejs-dotest/commit/92b221181a92adc38d3a05fce6809eb354c3e2e4))

#### 1.13.6 (2016-10-22)

##### Chores

* **runner:** Describe exit statement ([cd8d4050](https://github.com/fvdm/nodejs-dotest/commit/cd8d4050e35a276fe7503e370d30fa000181dadf))
* **develop:** Added bitHound config ([46f7f44e](https://github.com/fvdm/nodejs-dotest/commit/46f7f44e28f66da686cb28a8ee1370e8e152e005))

##### Documentation Changes

* **badges:** Moved just below intro ([9148a1ac](https://github.com/fvdm/nodejs-dotest/commit/9148a1ac83febb85890b05c6dcf31aa1132a3382))

##### Code Style Changes

* **eslint:**
  * Ignore complexity on typeStr() (#14) ([8e6b5e6c](https://github.com/fvdm/nodejs-dotest/commit/8e6b5e6c21ef14cbec61c75268374b79ed1d12d5))
  * Ignore complexity on log() (#15) ([5a485d13](https://github.com/fvdm/nodejs-dotest/commit/5a485d139b76f0f9a08f8d4a804bd54ced66e43c))
* **runner:**
  * Cleaner commit log formatting ([2e27958a](https://github.com/fvdm/nodejs-dotest/commit/2e27958aad5c7a9352ed021942159fd931a4ae5e))
  * Commits author not in bold ([b6a0e087](https://github.com/fvdm/nodejs-dotest/commit/b6a0e0876879ed6b9029299477c4945c67dbe671))

##### Tests

* **eslint:** Ignore no-undefined on Methods test (#16) ([5d2d1224](https://github.com/fvdm/nodejs-dotest/commit/5d2d1224c771bfca3fe4859baf7a60f5a2dca867))
* **config:** Use dynamic node versions on Travis CI ([3fc1bae6](https://github.com/fvdm/nodejs-dotest/commit/3fc1bae66470410ec4b5688078cf86a80fdd5dcf))

#### 1.13.5 (2016-8-26)

##### Bug Fixes

* **runner:** Yet another ancient npm fix attempt ([10a8a634](https://github.com/fvdm/nodejs-dotest/commit/10a8a63401dd72b0e062480e71bffe6555048fa0))

#### 1.13.4 (2016-8-26)

##### Chores

* **runner:** Added code comments ([1ae4f3ec](https://github.com/fvdm/nodejs-dotest/commit/1ae4f3ece72c17d0779366616d3ca3dbbbb94a31))

##### Bug Fixes

* **runner:** Fixed bin paths for old npm v2 ([d8c34f5d](https://github.com/fvdm/nodejs-dotest/commit/d8c34f5d289e1f5d088ea95873845f4244ff4d68))

#### 1.13.3 (2016-8-26)

##### Bug Fixes

* **runner:** Another attempt to fix node v4 paths ([0c550010](https://github.com/fvdm/nodejs-dotest/commit/0c5500102323dff182e8b353f2fbe8edf8c06fe0))

#### 1.13.2 (2016-8-26)

##### Bug Fixes

* **compat:** Fixed global bins for node v4 ([7d3ac8aa](https://github.com/fvdm/nodejs-dotest/commit/7d3ac8aab15caaa28dbd814808950323ac0b2019))

#### 1.13.1 (2016-8-26)

##### Bug Fixes

* **compat:** Fixed paths for node v4 ([10d61aa9](https://github.com/fvdm/nodejs-dotest/commit/10d61aa953f244c861194778369b470b9992cc10))

### 1.13.0 (2016-8-26)

##### Chores

* **package:**
  * Update npm keywords ([d0a6912f](https://github.com/fvdm/nodejs-dotest/commit/d0a6912f445239a5ce085e265eab71b27b298bda))
  * Update npm description ([c62e341c](https://github.com/fvdm/nodejs-dotest/commit/c62e341cd910f0b7582b13bf0777c1a95786beea))
  * Update dependencies ([15f1e916](https://github.com/fvdm/nodejs-dotest/commit/15f1e91682c130a4699d470b6acd11d866ae1c1d))
  * update eslint to version 3.0.0 (#18) ([573af080](https://github.com/fvdm/nodejs-dotest/commit/573af08094a671ee3ea74bd685740a0ea99e13af))
  * Remove obsolete Codeclimate config ([3def9bf7](https://github.com/fvdm/nodejs-dotest/commit/3def9bf79c27ba3085075da49b22486b1872f542))
  * Update eslint version ([2c299435](https://github.com/fvdm/nodejs-dotest/commit/2c299435384a343f79ed7a3a904b1d6a0d309c10))
  * Minor clean up ([10ac84f5](https://github.com/fvdm/nodejs-dotest/commit/10ac84f5e162f2c5eb92fb7c80e8e6d28c226a4e))

##### Documentation Changes

* **badges:** Added bitHound status badges ([a32eb1b1](https://github.com/fvdm/nodejs-dotest/commit/a32eb1b14c491d30b27d72bac93724642b51bde4))
* **readme:**
  * Fixed minor typo ([2fe25b2c](https://github.com/fvdm/nodejs-dotest/commit/2fe25b2c4a85411117fd3a83911f96adc857e5e8))
  * Describe new test runner ([77e9aeaf](https://github.com/fvdm/nodejs-dotest/commit/77e9aeaf86565d208c52a6c5c85392f4cf38c939))

##### New Features

* **package:**
  * Install global dotest command ([5f392384](https://github.com/fvdm/nodejs-dotest/commit/5f392384d7954df20153821a2bbdb30f48bb8040))
  * Include test.sh in release ([55f31838](https://github.com/fvdm/nodejs-dotest/commit/55f31838c39d611398c6b855eb1adbe37d5e8c38))

##### Refactors

* **main:** Also strip test suffix from package dir ([fbdc4357](https://github.com/fvdm/nodejs-dotest/commit/fbdc4357aafbcefac7415fd4b7a28d05e49ec662))
* **package:**
  * Dev deps are now the main deps ([0cf24b47](https://github.com/fvdm/nodejs-dotest/commit/0cf24b4784113461938707dc9f121c9b1d8c5fa8))
  * Minimum supported node v4.0 ([575254ed](https://github.com/fvdm/nodejs-dotest/commit/575254edef8d2e493d4491038b3884d001a43b6e))

##### Tests

* **eslint:** Warn on underscore dangle ([73ba0fea](https://github.com/fvdm/nodejs-dotest/commit/73ba0fea4f2a35cc1220996d36c7de2baf553542))
* **runner:**
  * Only lint package scripts ([84101c27](https://github.com/fvdm/nodejs-dotest/commit/84101c27c1693c9dca5dbea71e48b3541170209e))
  * Log commits since last release ([77b4a1aa](https://github.com/fvdm/nodejs-dotest/commit/77b4a1aa3d64577a6576e7c7ec641baa45db89b2))
  * More verbose console ([ba45f2e8](https://github.com/fvdm/nodejs-dotest/commit/ba45f2e8701ef351f43e49fa18f635265f1db5a1))
* **lint:** Update eslint to ES6 ([242eef65](https://github.com/fvdm/nodejs-dotest/commit/242eef6591c9e2e7653cf44878b41c4560451eee))

#### 1.12.4 (2016-6-4)

##### Documentation Changes

* **badges:** Replace CodeClimate with Coveralls ([eda18174](https://github.com/fvdm/nodejs-dotest/commit/eda18174511eef0f3ecdb4002a6d7153d9f8fb6d))

##### Refactors

* **package:** Replace CodeClimate with Coveralls ([ce460ad9](https://github.com/fvdm/nodejs-dotest/commit/ce460ad9cbe6253d87bbff4589d2d9b8feefa7e3))

##### Tests

* **runner:**
  * Add warnings for better coverage ([2eeefa87](https://github.com/fvdm/nodejs-dotest/commit/2eeefa87181c64993f34471d6cde22ca9ac3f9b0))
  * More correct .config() test ([c1aeb531](https://github.com/fvdm/nodejs-dotest/commit/c1aeb531adca8c13b211d7707ed550714f08a2cf))
  * Fixed missing testDone's ([9cf79d96](https://github.com/fvdm/nodejs-dotest/commit/9cf79d962192f8a0c97ad6edd01aab8607f1deb4))
  * Check if all tests did run ([66d7352f](https://github.com/fvdm/nodejs-dotest/commit/66d7352fe0c4391f6cead609e6aabae003f9830f))
  * Cover and log testsDone ([63a2fb0d](https://github.com/fvdm/nodejs-dotest/commit/63a2fb0d14a122a3ba49566ddb85aec1e0425ba4))
  * Removed onExit() test ([84293ed0](https://github.com/fvdm/nodejs-dotest/commit/84293ed0f224dee5dd38d46068e505961ee1f9a5))
  * Fixed some erros and bad refs ([80e0c510](https://github.com/fvdm/nodejs-dotest/commit/80e0c510420a4b99ebcbd79713994a221b45c510))
  * No need to check .config() second prop on argument ([0b4f5353](https://github.com/fvdm/nodejs-dotest/commit/0b4f535349a1021f9d7b50c6f69cc87685a2be44))
  * Fixed isNotEmpty's being empty ([0741408c](https://github.com/fvdm/nodejs-dotest/commit/0741408c01ce33e0fe10aacbedc3695d13eb543f))
  * Fixed setConfig() is config() ([52eb69ff](https://github.com/fvdm/nodejs-dotest/commit/52eb69ff747cf5668555c261d1b2de9f8ea076b8))
  * Add .setConfig() and argument tests ([c9102d44](https://github.com/fvdm/nodejs-dotest/commit/c9102d44d7da71289171edcf7a007b587eb644f0))
* **config:** Warn instead of fail on undefined ([783c2c83](https://github.com/fvdm/nodejs-dotest/commit/783c2c83dc676b009ab43fa93881c82bcabd2799))
* **lint:** Fixed missing semicolons ([99db13ed](https://github.com/fvdm/nodejs-dotest/commit/99db13ed2fc7f34ed06ffc1d67c71bc5fa9d1671))
* **script:**
  * Only check we're on Travis ([3f0fb69c](https://github.com/fvdm/nodejs-dotest/commit/3f0fb69ce4abb5a95237cd575b207bb19af72620))
  * Replace CodeClimate with Coveralls ([c1ed3347](https://github.com/fvdm/nodejs-dotest/commit/c1ed33478099937f356f86a317c740860641e386))

#### 1.12.3 (2016-6-3)

##### Chores

* **package:** Update eslint version ([3ddbf84a](https://github.com/fvdm/nodejs-dotest/commit/3ddbf84a6b919a4847dec53d0c8083c68a7c0185))

##### Refactors

* **stats:** Moved end stats to done() ([cc0576a7](https://github.com/fvdm/nodejs-dotest/commit/cc0576a70b894c577111b8f93bab798b53e1515c))

##### Tests

* **script:**
  * Fail when lcov.info submit fails ([ea3060bf](https://github.com/fvdm/nodejs-dotest/commit/ea3060bf76108eaff528fc3691c19dc74646b822))
  * Removed eslint duplicity ([01db72c7](https://github.com/fvdm/nodejs-dotest/commit/01db72c7c0f1bba2f63909dc7c9d25595155d3df))
  * Rewrite test.sh ([d43d588f](https://github.com/fvdm/nodejs-dotest/commit/d43d588f0603c729d83fc6c45516e2ee266d8c0f))
  * Fix codeclimate command, check token ([fde515df](https://github.com/fvdm/nodejs-dotest/commit/fde515dfa8a585c67007aff9d17ccdac8566db7e))
  * Use bash instead of sh ([d5969db8](https://github.com/fvdm/nodejs-dotest/commit/d5969db81bed3bc91984ddc60447238e3aa32470))
  * Removed repo check ([f27985e9](https://github.com/fvdm/nodejs-dotest/commit/f27985e92961fa06711c082c7e39cf950edb69ef))
* **runner:** Use absolute test() instead of alias (#17) ([478c97f4](https://github.com/fvdm/nodejs-dotest/commit/478c97f4c24c9e2361c4383d1e3642b0011cdcce))

#### 1.12.2 (2016-6-1)

##### Bug Fixes

* **package:** Escape double quotes in string ([0066f48b](https://github.com/fvdm/nodejs-dotest/commit/0066f48b6e662eeafb49a8c0bd19487a58fcc19d))

##### Tests

* **fix:** istanbul export should be report ([257d3746](https://github.com/fvdm/nodejs-dotest/commit/257d37460ca51952963b1d27466f70333a32201f))
* **package:**
  * Move test commands to test.sh ([71912440](https://github.com/fvdm/nodejs-dotest/commit/7191244038f463371e81f989737d7d498f0c5be8))
  * Undo inline Travis branch check ([f33448b5](https://github.com/fvdm/nodejs-dotest/commit/f33448b595111ee1c01d0b6c0f397afba100fb4e))
  * Only submit lcov for master branch ([f0550acc](https://github.com/fvdm/nodejs-dotest/commit/f0550acc0a0d9d69ef743c52098256b8d711f8ae))
* **lint:** fixed 'test' is defined but never used (#16) ([9a86c782](https://github.com/fvdm/nodejs-dotest/commit/9a86c7827d4d785f00ba562905abb780d76d9af7))
* **runner:** Use absolute test() instead of alias ([b556f409](https://github.com/fvdm/nodejs-dotest/commit/b556f409d8e405ece8ac5fbafdd9af1bea0a6054))

#### 1.12.1 (2016-6-1)

##### Documentation Changes

* **badges:** Add CodeClimate coverage ([a0971a05](https://github.com/fvdm/nodejs-dotest/commit/a0971a05281650afd5d039af54e9054849ef9cb7))

##### Refactors

* **package:**
  * Add `ci-test` command with CodeClimate and Istanbul ([1bd44f52](https://github.com/fvdm/nodejs-dotest/commit/1bd44f52d42881c0d8aea8c1d1207516477a6e2c))
  * Removed bithound from test ([e703dd1a](https://github.com/fvdm/nodejs-dotest/commit/e703dd1a46a5dc3266972460c20d6fbbbc05f95d))
  * Add bithound to test and devDependencies ([f203ac90](https://github.com/fvdm/nodejs-dotest/commit/f203ac90b9c624a994ae0d53c641abbdafccae2e))

##### Tests

* **config:**
  * Disable CodeClimate duplication ([18d9effb](https://github.com/fvdm/nodejs-dotest/commit/18d9effbacdfda925fac0418c07f0bb6d1bfadef))
  * `npm run ci-test` on builds ([a3545fbe](https://github.com/fvdm/nodejs-dotest/commit/a3545fbe3d66204da5a826d8cf9374d2bc017bf7))
  * Add CodeClimate with eslint-2 ([9a5554a6](https://github.com/fvdm/nodejs-dotest/commit/9a5554a68a83c8a07f7f3d7614488a0bb8cbc7ad))
* **lint:** Allow console.log statements ([ff4812d9](https://github.com/fvdm/nodejs-dotest/commit/ff4812d96e62baba231376c8891917c90589d0c7))

### 1.12.0 (2016-5-26)

##### Documentation Changes

* **readme:** Add version badge for changelog ([bb12e164](https://github.com/fvdm/nodejs-dotest/commit/bb12e164a54ab26dce280ca25a2300963727c36f))

##### Other Changes

* **undefined:**
  * removed CodeClimate ([a469f6be](https://github.com/fvdm/nodejs-dotest/commit/a469f6befc7a32d973ea46f3d3b241485243141d))
  * added Code Climate to Travis config ([a8b9be4d](https://github.com/fvdm/nodejs-dotest/commit/a8b9be4d09a3ccf21a5d7a8a4188041a8cbe67c2))
  * changed heading style ([ef6c0d99](https://github.com/fvdm/nodejs-dotest/commit/ef6c0d99b0af9b2de0d62aac1e088da29f103947))
  * added CodeClimate config ([4d93d2fe](https://github.com/fvdm/nodejs-dotest/commit/4d93d2fe29bd68eb1f524abe48418b6225fbafb0))
  * updated eslint version ([b7d832c9](https://github.com/fvdm/nodejs-dotest/commit/b7d832c94d18c48e59ca659cf053e879f082ad94))
  * check test() return ([5ffda52b](https://github.com/fvdm/nodejs-dotest/commit/5ffda52be5ff6749d4bc93525500543746558e48))

##### Refactors

* **package:** Add example.js ([6523927d](https://github.com/fvdm/nodejs-dotest/commit/6523927de1a8ccd3eb5f3c20c0f2a5f4d8dafe3d))

