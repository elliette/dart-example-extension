// Copyright (c) 2022, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@JS()
library background;

import 'package:js/js.dart';

void main() {
  consoleLog('Dart extension is loaded.');
}

@JS('console.log')
external void consoleLog(String header,
    [String style1, String style2, String style3]);
