import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = '';
    if (resultScore == 190) {
      resultText = 'Congratulations! You are: \nSUPERVISOR';
    } else if (resultScore == 202) {
      resultText = 'Congratulations! You are: \nFIELDMARSHAL';
    } else if (resultScore == 207) {
      resultText = 'Congratulations! You are: \nPROVIDER';
    } else if (resultScore == 174) {
      resultText = 'Congratulations! You are: \nPROMOTER';
    } else if (resultScore == 219) {
      resultText = 'Congratulations! You are: \nTEACHER';
    } else if (resultScore == 186) {
      resultText = 'Congratulations! You are: \nINVENTOR';
    } else if (resultScore == 191) {
      resultText = 'Congratulations! You are: \nPERFORMER';
    } else if (resultScore == 203) {
      resultText = 'Congratulations! You are: \nCHAMPION';
    } else if (resultScore == 235) {
      resultText = 'Congratulations! You are: \nHEALER';
    } else if (resultScore == 223) {
      resultText = 'Congratulations! You are: \nCOMPOSER';
    } else if (resultScore == 218) {
      resultText = 'Congratulations! You are: \nARCHITECT';
    } else if (resultScore == 251) {
      resultText = 'Congratulations! You are: \nCOUNSELOR';
    } else if (resultScore == 234) {
      resultText = 'Congratulations! You are: \nMASTERMIND';
    } else if (resultScore == 239) {
      resultText = 'Congratulations! You are: \nPROTECTOR';
    } else if (resultScore == 206) {
      resultText = 'Congratulations! You are: \nCRAFTER';
    } else if (resultScore == 222) {
      resultText = 'Congratulations! You are: \nINSPECTOR';
    }
    return resultText;
  }

  String get newResultPhrase {
    String newResult = '';
    if (resultScore == 223 ||
        resultScore == 206 ||
        resultScore == 191 ||
        resultScore == 174) {
      newResult = 'You belong to ARTISAN temperament type.';
    } else if (resultScore == 222 ||
        resultScore == 190 ||
        resultScore == 207 ||
        resultScore == 239) {
      newResult = 'You belong to GUARDIAN temperament type.';
    } else if (resultScore == 222 ||
        resultScore == 190 ||
        resultScore == 235 ||
        resultScore == 219) {
      newResult = 'You belong to IDEALIST temperament type.';
    } else if (resultScore == 202 ||
        resultScore == 234 ||
        resultScore == 218 ||
        resultScore == 186) {
      newResult = 'You belong to RATIONAL temperament type.';
    }
    return newResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
              width: 600,
              height: 80,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50.0),
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                      topLeft: Radius.circular(50.0)),
                  color: Color.fromARGB(255, 212, 147, 62)),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(resultPhrase,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(228, 239, 200, 5)),
                      textAlign: TextAlign.center))),
          new Container(
            width: 600,
            height: 80,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                    topLeft: Radius.circular(50.0)),
                color: Color.fromARGB(255, 212, 147, 62)),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                newResultPhrase,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(228, 239, 200, 5)),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          FlatButton(
            child: Text('Pass the quiz once again.',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            textColor: Color.fromRGBO(228, 239, 200, 5),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
