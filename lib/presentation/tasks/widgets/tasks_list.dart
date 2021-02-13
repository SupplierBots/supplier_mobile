import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_bloc.dart';
import 'package:supplier_mobile/application/tasks/tasks_bloc.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/tasks_list_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        final container = state.tasks.isNotEmpty
            ? Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: kPrimaryElementsSpacing,
                  children: state.tasks.entries
                      .map(
                        (task) => TasksListTile(
                          uid: task.key,
                          task: task.value,
                        ),
                      )
                      .toList(),
                ),
              )
            : Expanded(
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 120),
                    child: Text(
                      context.read<ProfilesBloc>().state.profiles.isEmpty
                          ? 'Firstly, create at least one profile'
                          : "You haven't created any task yet",
                      style: const TextStyle(color: kDarkGrey),
                    ),
                  ),
                ),
              );
        return container;
      },
    );
  }
}
