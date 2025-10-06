import 'package:cat_breeds/src/modules/breeds/models/breed/breed.dart';
import 'package:cat_breeds/src/shared/constants/layout.dart';
import 'package:cat_breeds/src/shared/typing/models/base_animal.dart';
import 'package:cat_breeds/src/shared/widgets/button/link_button.dart';
import 'package:cat_breeds/src/shared/widgets/image/image_container.dart';
import 'package:flutter/material.dart';

class OverviewCard extends StatelessWidget {
  const OverviewCard(this.data, {this.onSelect, super.key});

  final BaseBreed data;
  final ValueChanged<String>? onSelect;

  @override
  Widget build(BuildContext context) {
    double boxMaxWidth = 320;
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: boxMaxWidth),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(UILayout.instance.layout12),
        ),
        child: Padding(
          padding: EdgeInsets.all(UILayout.instance.layout8),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Breed: ${data.name}'),
                  Text('IQ: ${data.intelligence}'),
                ],
              ),
              ImageContainer((data as BreedOverview).imageUrl ?? ''),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      'Country: ${data.originCountry}',
                      style: TextStyle(overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  LinkButton(
                    label: 'More info ...',
                    onPressed: () => onSelect?.call(data.id),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
