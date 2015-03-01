import 'dart:html';
import 'dart:core';
import './Data/Gateway.dart';
void main() {

  onClickAttach('#sample_text_id', reverseText);
  onClickAttach('#sample_button', addNumber);
  var gateway = new Gateway();
  var items = gateway.GenerateData(5);
}


void addNumber(MouseEvent event) {
  var labelData = num.parse(querySelector('#data_input').text);
  labelData +=1;
  querySelector('#data_input').text = labelData.toString();
}

void reverseText(MouseEvent event) {
  var text = querySelector('#sample_text_id').text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  querySelector('#sample_text_id').text = buffer.toString();
}


void onClickAttach(String id, Function handler){
  querySelector(id)..onClick.listen(handler);
}