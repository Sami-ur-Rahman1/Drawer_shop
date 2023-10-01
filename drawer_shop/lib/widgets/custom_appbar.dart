import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  final String title;
  
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Center(
        child: Container(
          color: Colors.black,
         padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10), 
//////////App Bar Text/////////////////////          
        child: Text(title,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith
        (color: Colors.white),)
///////////End/////////////////////////////        
        ),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      actions: [IconButton(icon: Icon(Icons.favorite),
      onPressed: () {
        Navigator.pushNamed(context, '/wishlist');
      })],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50.0);
}