part of 'render_cubit.dart';

@freezed
class RenderState with _$RenderState {
  const factory RenderState.loading() = _Loading;
  const factory RenderState.render(List<ModuleProposalLink> data) = _Render;
  const factory RenderState.error() = _Error;
}
