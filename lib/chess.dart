import 'package:flutter/material.dart';



class Chessboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 2)
      ),
      child: GridView.builder(
        itemCount: 64,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8,
        ),
        itemBuilder: (context, index) {
          Color cellColor =
              (index ~/ 8 + index % 8) % 2 == 0 ? Colors.white : Colors.black;
    
          return Container(
            color: cellColor,
            child: Center(
              child: 
              
              Text(
                getChessPiece(index),
                style: TextStyle(
                  color: cellColor == Colors.black ? Colors.white : Colors.black,
                  fontSize: 20,
                ),
              ),
              
            ),
          );
        },
      ),
    );
  }

  String getChessPiece(index) {
    List<String> pieces = [
      '♜', '♞', '♝', '♛', '♚', '♝', '♞', '♜',
      '♟', '♟', '♟', '♟', '♟', '♟', '♟', '♟',
      '', '', '', '', '', '', '', '',
      '', '', '', '', '', '', '', '',
      '', '', '', '', '', '', '', '',
      '', '', '', '', '', '', '', '',
      '♙', '♙', '♙', '♙', '♙', '♙', '♙', '♙',
      '♖', '♘', '♗', '♕', '♔', '♗', '♘', '♖',
    ];

    return pieces[index];
  }
}
