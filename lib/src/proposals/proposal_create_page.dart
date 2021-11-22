import 'package:daobao/components/transparent_button.dart';
import 'package:daobao/src/proposals/proposal_components.dart';
import 'package:daobao/src/router.dart';
import 'package:flutter/material.dart';
import 'package:daobao/helpers/helpers.dart';
import 'package:iconly/iconly.dart';
import 'package:auto_route/auto_route.dart';
import 'package:markdown_widget/markdown_widget.dart';

class ProposalCreatePage extends StatefulWidget {
  const ProposalCreatePage({Key? key}) : super(key: key);

  @override
  State<ProposalCreatePage> createState() => _ProposalCreatePageState();
}

class _ProposalCreatePageState extends State<ProposalCreatePage> {
  final TextEditingController contentController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController summaryController = TextEditingController();

  bool isSettings = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.background,
      child: SingleChildScrollView(
        child: ProposalsContainerWrapper(
          width: 800,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: context.colorScheme.secondaryVariant.withOpacity(0.25),
              borderRadius: Radii.lr,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          const SizedBox(width: 12),
                          TransparentButton(
                            onPressed: () => context.router
                                .push(const ProposalHistoryRoute()),
                            child: const Icon(IconlyLight.arrow_left),
                          ),
                          const Expanded(child: SizedBox()),
                          Hero(
                            tag: 'create-proposal',
                            child: SelectableText(
                              'Create Proposal',
                              style: context.textTheme.headline6,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          const InvisibleSized(
                              child: Icon(IconlyLight.arrow_left)),
                          const SizedBox(width: 12),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    ProposalTypeSwitch(
                      isSettings: (e) => setState(() => isSettings = e),
                    ),
                    const SizedBox(height: 24),
                    AnimatedSize(
                      curve: Curves.easeOutCubic,
                      duration: const Duration(milliseconds: 250),
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 250),
                        child: isSettings
                            ? Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/empty_state.png',
                                    height: 250,
                                  ),
                                  const SizedBox(height: 24),
                                  const Text(
                                      'This proposal type is not supported.'),
                                ],
                              )
                            : ContentCombEditor(
                                contentController: contentController,
                                titleController: titleController,
                                summaryController: summaryController,
                              ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TransparentButton(
                  onPressed: isSettings ? null : () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: Radii.mr,
                      color: context.colorScheme.secondary,
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      'Create Proposal',
                      style: context.textTheme.subtitle1!.copyWith(
                        color: context.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContentCombEditor extends StatefulWidget {
  const ContentCombEditor({
    Key? key,
    required this.contentController,
    required this.titleController,
    required this.summaryController,
  }) : super(key: key);

  final TextEditingController contentController;
  final TextEditingController titleController;
  final TextEditingController summaryController;

  @override
  State<ContentCombEditor> createState() => _ContentCombEditorState();
}

class _ContentCombEditorState extends State<ContentCombEditor> {
  Widget buildMarkdown() {
    Widget current = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/empty_state.png', height: 200),
          const SizedBox(height: 24),
          const Text('Type in some content!'),
        ],
      ),
    );

    final widgets = MarkdownGenerator(
      data: widget.contentController.text,
      childMargin: EdgeInsets.zero,
    ).widgets;

    if (widgets != null && widgets.isNotEmpty) {
      current = SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, children: widgets),
      );
    }

    return Padding(padding: const EdgeInsets.all(12), child: current);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 650, maxWidth: 700),
      child: Column(
        children: [
          Container(
            width: 650,
            height: 325,
            decoration: BoxDecoration(
              color: context.colorScheme.background,
              borderRadius: Radii.lr,
              border: Border.all(
                color: context.colorScheme.primary,
                width: 1,
              ),
            ),
            child: buildMarkdown(),
          ),
          const SizedBox(height: 12),
          const Divider(),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Content',
              style: context.textTheme.headline6!.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
                color: context.colorScheme.surface.withOpacity(0.5)),
            child: TextField(
              controller: widget.contentController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              minLines: 12,
              onChanged: (_) => setState(() {}),
              cursorWidth: 1,
              decoration: const InputDecoration(
                hintText: '''
## HomepageDAO
Insert some random content here

You can also add images and videos!
![demo](https://xxx)
''',
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Divider(),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Proposal',
              style: context.textTheme.headline6!.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
                color: context.colorScheme.surface.withOpacity(0.5)),
            child: TextField(
              controller: widget.titleController,
              cursorWidth: 1,
              decoration: InputDecoration(
                hintText: 'Proposal Title',
                hintStyle: context.textTheme.headline6!.copyWith(
                  color: context.colorScheme.onSurface.withOpacity(0.5),
                ),
              ),
              style: context.textTheme.headline6,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
                color: context.colorScheme.surface.withOpacity(0.5)),
            child: TextField(
              controller: widget.summaryController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              minLines: 12,
              onChanged: (_) => setState(() {}),
              cursorWidth: 1,
              decoration: const InputDecoration(
                hintText: '''
## Summary
Insert your summary here
## Why it should be added?
Insert why here
## Conclusion
Anything else?
''',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProposalTypeSwitch extends StatefulWidget {
  const ProposalTypeSwitch({Key? key, this.isSettings}) : super(key: key);

  final ValueChanged<bool>? isSettings;

  @override
  State<ProposalTypeSwitch> createState() => _ProposalTypeSwitchState();
}

class _ProposalTypeSwitchState extends State<ProposalTypeSwitch> {
  bool isSettings = false;

  @override
  Widget build(BuildContext context) {
    const kDefaultDuration = Duration(milliseconds: 100);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TransparentButton(
          onPressed: () {
            isSettings = false;
            widget.isSettings?.call(isSettings);
            setState(() {});
          },
          child: AnimatedContainer(
            duration: kDefaultDuration,
            decoration: BoxDecoration(
              borderRadius: Radii.mr,
              color: !isSettings ? context.colorScheme.primary : null,
              border: Border.all(
                color: context.colorScheme.primary,
                width: 1,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: AnimatedDefaultTextStyle(
              duration: kDefaultDuration,
              style: context.textTheme.subtitle1!.copyWith(
                color: !isSettings
                    ? context.colorScheme.onPrimary
                    : context.colorScheme.primary,
              ),
              child: const Text('Content Comb'),
            ),
          ),
        ),
        const SizedBox(width: 12),
        TransparentButton(
          onPressed: () {
            isSettings = true;
            widget.isSettings?.call(isSettings);
            setState(() {});
          },
          child: AnimatedContainer(
            duration: kDefaultDuration,
            decoration: BoxDecoration(
              borderRadius: Radii.mr,
              color: isSettings ? context.colorScheme.primary : null,
              border: Border.all(
                color: context.colorScheme.primary,
                width: 1,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: AnimatedDefaultTextStyle(
              duration: kDefaultDuration,
              style: context.textTheme.subtitle1!.copyWith(
                color: isSettings
                    ? context.colorScheme.onPrimary
                    : context.colorScheme.primary,
              ),
              child: const Text('Settings'),
            ),
          ),
        ),
      ],
    );
  }
}

class InvisibleSized extends StatelessWidget {
  const InvisibleSized({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      child: child,
      visible: false,
      maintainSize: true,
      maintainState: true,
      maintainAnimation: true,
    );
  }
}
