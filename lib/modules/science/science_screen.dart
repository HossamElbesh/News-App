import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/states.dart';
import '../../shared/components.dart';


class ScienceScreen extends StatelessWidget {
  const ScienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state)
      {
        var list = NewsCubit.get(context).science;

        return articleBuilder(list, context);
      },
    );  }
}