import 'package:ecommercapp/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/imageassets.dart';

class HandlingDataView extends StatelessWidget {
final  StatusRequest statusRequest;
 final  Widget widget;
  HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ?  Center(child:Lottie.asset(AppJsonAsset.loadingJson,height:300 ,width: 300))
        : statusRequest == StatusRequest.offLineFailure
            ?  Center(child:Lottie.asset(AppJsonAsset.noconnectionJson,height:300 ,width: 300))
            : statusRequest == StatusRequest.serverFailure
                ?  Center(child:Lottie.asset(AppJsonAsset.serverjson,height:300 ,width: 300))
                : statusRequest == StatusRequest.failure
                    ? Center(child:Lottie.asset(AppJsonAsset.noDataJson,height:300 ,width: 300))
                    : widget;
  }
}
