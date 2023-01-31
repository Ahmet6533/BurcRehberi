import 'package:flutter/material.dart';
import 'package:untitled/burc_detay.dart';
import 'modeller/burc.dart';
class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var myTexyStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child:ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>BurcDetay(secilenBurc: listelenenBurc)));},
            leading:Image.asset("images/"+listelenenBurc.burcKucukResim,),
        title: Text(listelenenBurc.burcAdi,style: myTexyStyle.headline5,),
          subtitle: Text(listelenenBurc.burcTarihi,style: myTexyStyle.subtitle1,),
          trailing: Icon(Icons.arrow_forward_ios,color:Colors.pink),
        ),),
    );
  }
}
