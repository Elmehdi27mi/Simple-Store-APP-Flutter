import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projet_6/models/produc_model.dart';
import 'package:projet_6/pages/update_product_page.dart';

class CustemWidget extends StatefulWidget {
  ProductModel product;
  CustemWidget({required this.product});

  @override
  State<CustemWidget> createState() => _CustemWidgetState();
}

class _CustemWidgetState extends State<CustemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id,
            arguments: widget.product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: Offset(0, 5), // Changement d'offset pour l'ombre
                ),
              ],
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              color: Colors.white,
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(widget.product.title.substring(0, 6),
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${widget.product.price.toString()}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 25,
            top: -50,
            child: Image.network(
              widget.product.image,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
