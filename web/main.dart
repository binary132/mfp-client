// Copyright (c) 2015 SynapseGarden. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

var url = "http://mfp.synapsegarden.net:25000/source";

void main() {
    HttpRequest.requestCrossOrigin(url)
      .then(onOK)
      .catchError(onError);
}

void onOK(String respText) {
  var output = querySelector('#source');
  output.style.whiteSpace = "pre";
  output.style.fontFamily = "monospace";
  output.style.display = "block";
  output.text = respText;
}

void onError(Error e) {
  var output = querySelector('#source');
  output.style.backgroundColor = "red";
  output.style.whiteSpace = "pre";
  output.style.fontFamily = "monospace";
  output.style.display = "block";
  output.text = "Error retrieving mf-proto source.";
}
