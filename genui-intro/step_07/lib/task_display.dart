import 'package:flutter/material.dart';
import 'package:genui/genui.dart';
import 'package:json_schema_builder/json_schema_builder.dart';

final taskDisplaySchema = S.object(
  properties: {
    'component': S.string(enumValues: ['TaskDisplay']),
    'title': S.string(description: 'The title of the task list'),
    'tasks': S.list(
      description: 'A list of tasks to be completed today',
      items: S.object(
        properties: {
          'name': S.string(description: 'The name of the task to be completed'),
          'isCompleted': S.boolean(
            description: 'Whether the task is completed',
          ),
          'completeAction': A2uiSchemas.action(
            description:
                'The action performed when the user has completed the task.',
          ),
        },
        required: ['name', 'isCompleted', 'completeAction'],
      ),
    ),
  },
  required: ['title', 'tasks'],
);

class _TaskData {
  final String name;
  final bool isCompleted;
  final String actionName;
  final JsonMap actionContext;

  _TaskData({
    required this.name,
    required this.isCompleted,
    required this.actionName,
    required this.actionContext,
  });

  factory _TaskData.fromJson(Map<String, Object?> json) {
    try {
      final action = json['completeAction']! as JsonMap;
      final event = action['event']! as JsonMap;

      return _TaskData(
        name: json['name'] as String,
        isCompleted: json['isCompleted'] as bool,
        actionName: event['name'] as String,
        actionContext: event['context'] as JsonMap,
      );
    } catch (e) {
      throw Exception('Invalid JSON for _TaskData: $e');
    }
  }
}

class _TaskDisplayData {
  final String title;
  final List<_TaskData> tasks;

  _TaskDisplayData({required this.title, required this.tasks});

  factory _TaskDisplayData.fromJson(Map<String, Object?> json) {
    try {
      return _TaskDisplayData(
        title: (json['title'] as String?) ?? 'Tasks',
        tasks: (json['tasks'] as List<Object?>)
            .map((e) => _TaskData.fromJson(e as Map<String, Object?>))
            .toList(),
      );
    } catch (e) {
      throw Exception('Invalid JSON for _TaskDisplayData: $e');
    }
  }
}

class _TaskDisplay extends StatelessWidget {
  final _TaskDisplayData data;
  final void Function(_TaskData) onCompleteTask;

  const _TaskDisplay({required this.data, required this.onCompleteTask});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            data.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        ...data.tasks.map(
          (task) => CheckboxListTile(
            title: Text(
              task.name,
              style: TextStyle(
                decoration: task.isCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
            value: task.isCompleted,
            onChanged: task.isCompleted
                ? null
                : (val) {
                    if (val == true) {
                      onCompleteTask(task);
                    }
                  },
          ),
        ),
      ],
    );
  }
}

final taskDisplay = CatalogItem(
  name: 'TaskDisplay',
  dataSchema: taskDisplaySchema,
  widgetBuilder: (itemContext) {
    final json = itemContext.data as Map<String, Object?>;
    final data = _TaskDisplayData.fromJson(json);

    return _TaskDisplay(
      data: data,
      onCompleteTask: (task) async {
        // A data context is a reference to a location in the data model. This line
        // turns that reference into a concrete data object that the agent can use.
        // It's kind of like taking a pointer and replacing it with the value it
        // points to.
        final JsonMap resolvedContext = await resolveContext(
          itemContext.dataContext,
          task.actionContext,
        );

        // Dispatch an event back to the agent, letting it know a task was completed.
        // This will be sent to the agent in an A2UI message that includes the name
        // of the action, the surface ID, and the resolved data context.
        itemContext.dispatchEvent(
          UserActionEvent(
            name: task.actionName,
            sourceComponentId: itemContext.id,
            context: resolvedContext,
          ),
        );
      },
    );
  },
);
