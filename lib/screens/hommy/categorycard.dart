class categoryCard extends StatelessWidget {
  const categoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
     
        child: Stack(
          clipBehavior: Clip.none,
          children: [
          
            Container(
              height: 160, width: 180,
              decoration:  BoxDecoration(
                //color:  kSecondaryColor, 
                color: Colors.grey.withOpacity(0.09), 
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(45), 
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(60),
              bottomLeft: Radius.circular(10),   
              ), 
              ), 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   Text('Arm Chair', style: TextStyle(fontWeight: FontWeight.w500, ),), 
                SizedBox(height: 6,), 
                Text(
                  '100+ products', 
                  style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black.withOpacity(0.6)),
                ), 
                SizedBox(height: 20,),
                ],
              ),
            ), 
            
                Positioned( 
                  top: -50, 
                  left: -80, 
                  right: -60, 
              
                  child: Container(
                    height: 150, width: 300, 
                    child: Image.asset('assets/furniture_grid/categories/slide_chair.png')),
                ), 
                 const SizedBox(height: 10,), 
               
              
            
          ],
        ),
      );
  }
}

