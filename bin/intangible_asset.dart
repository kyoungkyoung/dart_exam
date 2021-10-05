import 'asset.dart';

abstract class IntangibleAsset extends Asset{
  bool patent;

  IntangibleAsset(String name, int price, this.patent) : super(name, price);


}