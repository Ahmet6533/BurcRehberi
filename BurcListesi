import 'package:flutter/material.dart';
import 'modeller/burc.dart';
import 'package:palette_generator/palette_generator.dart';
class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc,Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarRengi = Colors.transparent;
  late PaletteGenerator _generator;
  @override
 void initState(){
    super.initState();
    appBarRenginiBul();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appBarRengi,
            flexibleSpace: FlexibleSpaceBar(title: Text(widget.secilenBurc.burcAdi+" Burcu ve Özellikleri"),
                centerTitle: true,background: Image.asset("images/"+widget.secilenBurc.burcBuyukResim,fit:BoxFit.cover),),
          ),
          SliverToBoxAdapter(
            child:Container(decoration: BoxDecoration(color: Colors.white10,borderRadius: BorderRadius.circular(10.0)),child: SingleChildScrollView(child: Text(widget.secilenBurc.burcDetayi,style: Theme.of(context).textTheme.headline5,),)) ,),
        ],
      ),
    );
  }

  void appBarRenginiBul() async{
    _generator = await PaletteGenerator.fromImageProvider(AssetImage("images/"+widget.secilenBurc.burcBuyukResim));
    appBarRengi = _generator.dominantColor!.color;
    setState(() {

    });
  }
}
