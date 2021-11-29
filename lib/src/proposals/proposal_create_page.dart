import 'package:cached_network_image/cached_network_image.dart';
import 'package:daobao/components/transparent_button.dart';
import 'package:daobao/services/proposals/proposals.dart';
import 'package:daobao/src/proposals/create/create_proposal_bloc.dart';
import 'package:daobao/src/proposals/proposal_components.dart';
import 'package:daobao/src/router.dart';
import 'package:fl_toast/fl_toast.dart';
import 'package:flutter/material.dart';
import 'package:daobao/helpers/helpers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web3/flutter_web3.dart';
import 'package:iconly/iconly.dart';
import 'package:auto_route/auto_route.dart';
import 'package:markdown_widget/markdown_widget.dart';

class ProposalCreatePage extends StatefulWidget {
  const ProposalCreatePage({Key? key}) : super(key: key);

  @override
  State<ProposalCreatePage> createState() => _ProposalCreatePageState();
}

class _ProposalCreatePageState extends State<ProposalCreatePage> {
  final CreateProposalBloc bloc = CreateProposalBloc();

  final TextEditingController contentController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController summaryController = TextEditingController();
  final TextEditingController backgroundController = TextEditingController();

  ProposalType type = ProposalType.addModule;
  bool isBackgroundImage = false;

  bool get canSubmit {
    if (isBackgroundImage) {
      return backgroundController.text.isNotEmpty &&
          summaryController.text.isNotEmpty &&
          titleController.text.isNotEmpty;
    } else {
      return contentController.text.isNotEmpty &&
          summaryController.text.isNotEmpty &&
          titleController.text.isNotEmpty;
    }
  }

  void onSubmit() {
    if (!canSubmit) {
      showTextToast(text: 'Please fill in the fields.', context: context);
      return;
    }
    if (isBackgroundImage) {
    } else {
      bloc.add(AddComb(titleController.text, summaryController.text,
          contentController.text));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: Container(
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
                        isSettings: (e) => setState(() => type = e),
                      ),
                      const SizedBox(height: 24),
                      type != ProposalType.addModule
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
                              backgroundController: backgroundController,
                              isBackgroundImage: (e) =>
                                  setState(() => isBackgroundImage = e),
                            ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  BlocConsumer<CreateProposalBloc, CreateProposalState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        success: () =>
                            context.router.push(const ProposalHistoryRoute()),
                        error: (e) {
                          if (e is EthereumException) {
                            showTextToast(
                                text:
                                    '${e.toString()}. Please make sure that you\'re a member. Only three proposals may be active at once.',
                                context: context);
                          }
                        },
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(loading: () {
                        return const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(),
                        );
                      }, orElse: () {
                        return TransparentButton(
                          onPressed:
                              type != ProposalType.addModule ? null : onSubmit,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: Radii.mr,
                              color: context.colorScheme.secondary,
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Text(
                              'Create Proposal',
                              style: context.textTheme.subtitle1!.copyWith(
                                color: context.colorScheme.onPrimary,
                              ),
                            ),
                          ),
                        );
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
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
    required this.backgroundController,
    this.isBackgroundImage,
  }) : super(key: key);

  final TextEditingController contentController;
  final TextEditingController titleController;
  final TextEditingController summaryController;
  final TextEditingController backgroundController;
  final ValueChanged<bool>? isBackgroundImage;

  @override
  State<ContentCombEditor> createState() => _ContentCombEditorState();
}

class _ContentCombEditorState extends State<ContentCombEditor> {
  bool isBackgroundImage = false;

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

    if (!isBackgroundImage) {
      if (widgets != null && widgets.isNotEmpty) {
        current = SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, children: widgets),
        );
      }
    } else if (isBackgroundImage &&
        widget.backgroundController.text.isNotEmpty) {
      current = Image.network(
        widget.backgroundController.text,
        errorBuilder: (context, url, error) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/empty_state.png', height: 200),
                const SizedBox(height: 24),
                const Text('Error loading your image'),
              ],
            ),
          );
        },
      );
    }

    return Padding(padding: const EdgeInsets.all(12), child: current);
  }

  @override
  Widget build(BuildContext context) {
    const kDefaultDuration = Duration(milliseconds: 100);
    const kDefaultLongDuration = Duration(milliseconds: 200);
    final secondaryVariant = context.colorScheme.secondaryVariant;
    final onSecondary = context.colorScheme.onSecondary;

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
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TransparentButton(
                onPressed: () {
                  isBackgroundImage = false;
                  widget.isBackgroundImage?.call(isBackgroundImage);
                  setState(() {});
                },
                child: AnimatedContainer(
                  duration: kDefaultDuration,
                  decoration: BoxDecoration(
                    borderRadius: Radii.mr,
                    color: !isBackgroundImage ? secondaryVariant : null,
                    border: Border.all(
                      color: secondaryVariant,
                      width: 1,
                    ),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: AnimatedDefaultTextStyle(
                    duration: kDefaultDuration,
                    style: context.textTheme.subtitle1!
                        .copyWith(color: onSecondary),
                    child: const Text('Markdown'),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              TransparentButton(
                onPressed: () {
                  isBackgroundImage = true;
                  widget.isBackgroundImage?.call(isBackgroundImage);
                  setState(() {});
                },
                child: AnimatedContainer(
                  duration: kDefaultDuration,
                  decoration: BoxDecoration(
                    borderRadius: Radii.mr,
                    color: isBackgroundImage ? secondaryVariant : null,
                    border: Border.all(
                      color: secondaryVariant,
                      width: 1,
                    ),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: AnimatedDefaultTextStyle(
                    duration: kDefaultDuration,
                    style: context.textTheme.subtitle1!
                        .copyWith(color: onSecondary),
                    child: const Text('Background Image'),
                  ),
                ),
              ),
            ],
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
          AnimatedSwitcher(
            duration: kDefaultLongDuration,
            child: AnimatedSize(
              alignment: Alignment.topCenter,
              curve: Curves.easeOutExpo,
              duration: kDefaultLongDuration,
              child: (!isBackgroundImage)
                  ? Container(
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
                          hintText:
                              '''
## HomepageDAO
Insert some random content here

You can also add images and videos!
![demo](https://xxx)
''',
                        ),
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                          color: context.colorScheme.surface.withOpacity(0.5)),
                      child: TextField(
                        controller: widget.backgroundController,
                        keyboardType: TextInputType.url,
                        onChanged: (_) => setState(() {}),
                        cursorWidth: 1,
                        decoration: const InputDecoration(
                          hintText: 'Link to Background Image',
                        ),
                      ),
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
                hintText:
                    '''
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

  final ValueChanged<ProposalType>? isSettings;

  @override
  State<ProposalTypeSwitch> createState() => _ProposalTypeSwitchState();
}

class _ProposalTypeSwitchState extends State<ProposalTypeSwitch> {
  ProposalType type = ProposalType.addModule;

  @override
  Widget build(BuildContext context) {
    const kDefaultDuration = Duration(milliseconds: 100);

    bool isAdd = type == ProposalType.addModule;
    bool isRemove = type == ProposalType.removeModule;
    bool isLocktime = type == ProposalType.locktime;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TransparentButton(
          onPressed: () {
            type = ProposalType.addModule;
            widget.isSettings?.call(type);
            setState(() {});
          },
          child: AnimatedContainer(
            duration: kDefaultDuration,
            decoration: BoxDecoration(
              borderRadius: Radii.mr,
              color: isAdd ? context.colorScheme.primary : null,
              border: Border.all(
                color: context.colorScheme.primary,
                width: 1,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: AnimatedDefaultTextStyle(
              duration: kDefaultDuration,
              style: context.textTheme.subtitle1!.copyWith(
                color: isAdd
                    ? context.colorScheme.onPrimary
                    : context.colorScheme.primary,
              ),
              child: const Text('Add Comb'),
            ),
          ),
        ),
        const SizedBox(width: 12),
        TransparentButton(
          onPressed: () {
            type = ProposalType.removeModule;
            widget.isSettings?.call(type);
            setState(() {});
          },
          child: AnimatedContainer(
            duration: kDefaultDuration,
            decoration: BoxDecoration(
              borderRadius: Radii.mr,
              color: isRemove ? context.colorScheme.primary : null,
              border: Border.all(
                color: context.colorScheme.primary,
                width: 1,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: AnimatedDefaultTextStyle(
              duration: kDefaultDuration,
              style: context.textTheme.subtitle1!.copyWith(
                color: isRemove
                    ? context.colorScheme.onPrimary
                    : context.colorScheme.primary,
              ),
              child: const Text('Remove Comb'),
            ),
          ),
        ),
        const SizedBox(width: 12),
        TransparentButton(
          onPressed: () {
            type = ProposalType.locktime;
            widget.isSettings?.call(type);
            setState(() {});
          },
          child: AnimatedContainer(
            duration: kDefaultDuration,
            decoration: BoxDecoration(
              borderRadius: Radii.mr,
              color: isLocktime ? context.colorScheme.primary : null,
              border: Border.all(
                color: context.colorScheme.primary,
                width: 1,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: AnimatedDefaultTextStyle(
              duration: kDefaultDuration,
              style: context.textTheme.subtitle1!.copyWith(
                color: isLocktime
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
