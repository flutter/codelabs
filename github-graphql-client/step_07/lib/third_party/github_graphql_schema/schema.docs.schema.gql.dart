// GENERATED CODE - DO NOT MODIFY BY HAND

class AcceptEnterpriseAdministratorInvitationInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set invitationId(String value) => input['invitationId'] = value;
}

class AcceptTopicSuggestionInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set name(String value) => input['name'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
}

class ActionExecutionCapabilitySetting {
  const ActionExecutionCapabilitySetting(this.value);

  final String value;

  static const ActionExecutionCapabilitySetting ALL_ACTIONS =
      ActionExecutionCapabilitySetting('ALL_ACTIONS');

  static const ActionExecutionCapabilitySetting DISABLED =
      ActionExecutionCapabilitySetting('DISABLED');

  static const ActionExecutionCapabilitySetting LOCAL_ACTIONS_ONLY =
      ActionExecutionCapabilitySetting('LOCAL_ACTIONS_ONLY');

  static const ActionExecutionCapabilitySetting NO_POLICY =
      ActionExecutionCapabilitySetting('NO_POLICY');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is ActionExecutionCapabilitySetting && o.value == value;
}

class AddAssigneesToAssignableInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set assignableId(String value) => input['assignableId'] = value;
  set assigneeIds(List<String> value) => input['assigneeIds'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
}

class AddCommentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set subjectId(String value) => input['subjectId'] = value;
}

class AddLabelsToLabelableInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set labelIds(List<String> value) => input['labelIds'] = value;
  set labelableId(String value) => input['labelableId'] = value;
}

class AddProjectCardInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set contentId(String value) => input['contentId'] = value;
  set note(String value) => input['note'] = value;
  set projectColumnId(String value) => input['projectColumnId'] = value;
}

class AddProjectColumnInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set name(String value) => input['name'] = value;
  set projectId(String value) => input['projectId'] = value;
}

class AddPullRequestReviewCommentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set commitOID(GitObjectID value) => input['commitOID'] = value.value;
  set inReplyTo(String value) => input['inReplyTo'] = value;
  set path(String value) => input['path'] = value;
  set position(int value) => input['position'] = value;
  set pullRequestId(String value) => input['pullRequestId'] = value;
  set pullRequestReviewId(String value) => input['pullRequestReviewId'] = value;
}

class AddPullRequestReviewInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set comments(List<DraftPullRequestReviewComment> value) => input['comments'] =
      value.map((DraftPullRequestReviewComment e) => e.input).toList();
  set commitOID(GitObjectID value) => input['commitOID'] = value.value;
  set event(PullRequestReviewEvent value) => input['event'] = value.value;
  set pullRequestId(String value) => input['pullRequestId'] = value;
  set threads(List<DraftPullRequestReviewThread> value) => input['threads'] =
      value.map((DraftPullRequestReviewThread e) => e.input).toList();
}

class AddPullRequestReviewThreadInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set line(int value) => input['line'] = value;
  set path(String value) => input['path'] = value;
  set pullRequestId(String value) => input['pullRequestId'] = value;
  set pullRequestReviewId(String value) => input['pullRequestReviewId'] = value;
  set side(DiffSide value) => input['side'] = value.value;
  set startLine(int value) => input['startLine'] = value;
  set startSide(DiffSide value) => input['startSide'] = value.value;
}

class AddReactionInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set content(ReactionContent value) => input['content'] = value.value;
  set subjectId(String value) => input['subjectId'] = value;
}

class AddStarInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set starrableId(String value) => input['starrableId'] = value;
}

class ArchiveRepositoryInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
}

class AuditLogOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(AuditLogOrderField value) => input['field'] = value.value;
}

class AuditLogOrderField {
  const AuditLogOrderField(this.value);

  final String value;

  static const AuditLogOrderField CREATED_AT = AuditLogOrderField('CREATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is AuditLogOrderField && o.value == value;
}

class CancelEnterpriseAdminInvitationInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set invitationId(String value) => input['invitationId'] = value;
}

class ChangeUserStatusInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set emoji(String value) => input['emoji'] = value;
  set expiresAt(DateTime value) => input['expiresAt'] = value.value;
  set limitedAvailability(bool value) => input['limitedAvailability'] = value;
  set message(String value) => input['message'] = value;
  set organizationId(String value) => input['organizationId'] = value;
}

class CheckAnnotationData {
  final Map<String, dynamic> input = <String, dynamic>{};

  set annotationLevel(CheckAnnotationLevel value) =>
      input['annotationLevel'] = value.value;
  set location(CheckAnnotationRange value) => input['location'] = value.input;
  set message(String value) => input['message'] = value;
  set path(String value) => input['path'] = value;
  set rawDetails(String value) => input['rawDetails'] = value;
  set title(String value) => input['title'] = value;
}

class CheckAnnotationLevel {
  const CheckAnnotationLevel(this.value);

  final String value;

  static const CheckAnnotationLevel FAILURE = CheckAnnotationLevel('FAILURE');

  static const CheckAnnotationLevel NOTICE = CheckAnnotationLevel('NOTICE');

  static const CheckAnnotationLevel WARNING = CheckAnnotationLevel('WARNING');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is CheckAnnotationLevel && o.value == value;
}

class CheckAnnotationRange {
  final Map<String, dynamic> input = <String, dynamic>{};

  set endColumn(int value) => input['endColumn'] = value;
  set endLine(int value) => input['endLine'] = value;
  set startColumn(int value) => input['startColumn'] = value;
  set startLine(int value) => input['startLine'] = value;
}

class CheckConclusionState {
  const CheckConclusionState(this.value);

  final String value;

  static const CheckConclusionState ACTION_REQUIRED =
      CheckConclusionState('ACTION_REQUIRED');

  static const CheckConclusionState CANCELLED =
      CheckConclusionState('CANCELLED');

  static const CheckConclusionState FAILURE = CheckConclusionState('FAILURE');

  static const CheckConclusionState NEUTRAL = CheckConclusionState('NEUTRAL');

  static const CheckConclusionState SKIPPED = CheckConclusionState('SKIPPED');

  static const CheckConclusionState STALE = CheckConclusionState('STALE');

  static const CheckConclusionState SUCCESS = CheckConclusionState('SUCCESS');

  static const CheckConclusionState TIMED_OUT =
      CheckConclusionState('TIMED_OUT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is CheckConclusionState && o.value == value;
}

class CheckRunAction {
  final Map<String, dynamic> input = <String, dynamic>{};

  set description(String value) => input['description'] = value;
  set identifier(String value) => input['identifier'] = value;
  set label(String value) => input['label'] = value;
}

class CheckRunFilter {
  final Map<String, dynamic> input = <String, dynamic>{};

  set appId(int value) => input['appId'] = value;
  set checkName(String value) => input['checkName'] = value;
  set checkType(CheckRunType value) => input['checkType'] = value.value;
  set status(CheckStatusState value) => input['status'] = value.value;
}

class CheckRunOutput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set annotations(List<CheckAnnotationData> value) => input['annotations'] =
      value.map((CheckAnnotationData e) => e.input).toList();
  set images(List<CheckRunOutputImage> value) =>
      input['images'] = value.map((CheckRunOutputImage e) => e.input).toList();
  set summary(String value) => input['summary'] = value;
  set text(String value) => input['text'] = value;
  set title(String value) => input['title'] = value;
}

class CheckRunOutputImage {
  final Map<String, dynamic> input = <String, dynamic>{};

  set alt(String value) => input['alt'] = value;
  set caption(String value) => input['caption'] = value;
  set imageUrl(URI value) => input['imageUrl'] = value.value;
}

class CheckRunType {
  const CheckRunType(this.value);

  final String value;

  static const CheckRunType ALL = CheckRunType('ALL');

  static const CheckRunType LATEST = CheckRunType('LATEST');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is CheckRunType && o.value == value;
}

class CheckStatusState {
  const CheckStatusState(this.value);

  final String value;

  static const CheckStatusState COMPLETED = CheckStatusState('COMPLETED');

  static const CheckStatusState IN_PROGRESS = CheckStatusState('IN_PROGRESS');

  static const CheckStatusState QUEUED = CheckStatusState('QUEUED');

  static const CheckStatusState REQUESTED = CheckStatusState('REQUESTED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is CheckStatusState && o.value == value;
}

class CheckSuiteAutoTriggerPreference {
  final Map<String, dynamic> input = <String, dynamic>{};

  set appId(String value) => input['appId'] = value;
  set setting(bool value) => input['setting'] = value;
}

class CheckSuiteFilter {
  final Map<String, dynamic> input = <String, dynamic>{};

  set appId(int value) => input['appId'] = value;
  set checkName(String value) => input['checkName'] = value;
}

class ClearLabelsFromLabelableInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set labelableId(String value) => input['labelableId'] = value;
}

class CloneProjectInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set includeWorkflows(bool value) => input['includeWorkflows'] = value;
  set name(String value) => input['name'] = value;
  set public(bool value) => input['public'] = value;
  set sourceId(String value) => input['sourceId'] = value;
  set targetOwnerId(String value) => input['targetOwnerId'] = value;
}

class CloneTemplateRepositoryInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set description(String value) => input['description'] = value;
  set includeAllBranches(bool value) => input['includeAllBranches'] = value;
  set name(String value) => input['name'] = value;
  set ownerId(String value) => input['ownerId'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
  set visibility(RepositoryVisibility value) =>
      input['visibility'] = value.value;
}

class CloseIssueInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set issueId(String value) => input['issueId'] = value;
}

class ClosePullRequestInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set pullRequestId(String value) => input['pullRequestId'] = value;
}

class CollaboratorAffiliation {
  const CollaboratorAffiliation(this.value);

  final String value;

  static const CollaboratorAffiliation ALL = CollaboratorAffiliation('ALL');

  static const CollaboratorAffiliation DIRECT =
      CollaboratorAffiliation('DIRECT');

  static const CollaboratorAffiliation OUTSIDE =
      CollaboratorAffiliation('OUTSIDE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is CollaboratorAffiliation && o.value == value;
}

class CommentAuthorAssociation {
  const CommentAuthorAssociation(this.value);

  final String value;

  static const CommentAuthorAssociation COLLABORATOR =
      CommentAuthorAssociation('COLLABORATOR');

  static const CommentAuthorAssociation CONTRIBUTOR =
      CommentAuthorAssociation('CONTRIBUTOR');

  static const CommentAuthorAssociation FIRST_TIMER =
      CommentAuthorAssociation('FIRST_TIMER');

  static const CommentAuthorAssociation FIRST_TIME_CONTRIBUTOR =
      CommentAuthorAssociation('FIRST_TIME_CONTRIBUTOR');

  static const CommentAuthorAssociation MANNEQUIN =
      CommentAuthorAssociation('MANNEQUIN');

  static const CommentAuthorAssociation MEMBER =
      CommentAuthorAssociation('MEMBER');

  static const CommentAuthorAssociation NONE = CommentAuthorAssociation('NONE');

  static const CommentAuthorAssociation OWNER =
      CommentAuthorAssociation('OWNER');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is CommentAuthorAssociation && o.value == value;
}

class CommentCannotUpdateReason {
  const CommentCannotUpdateReason(this.value);

  final String value;

  static const CommentCannotUpdateReason ARCHIVED =
      CommentCannotUpdateReason('ARCHIVED');

  static const CommentCannotUpdateReason DENIED =
      CommentCannotUpdateReason('DENIED');

  static const CommentCannotUpdateReason INSUFFICIENT_ACCESS =
      CommentCannotUpdateReason('INSUFFICIENT_ACCESS');

  static const CommentCannotUpdateReason LOCKED =
      CommentCannotUpdateReason('LOCKED');

  static const CommentCannotUpdateReason LOGIN_REQUIRED =
      CommentCannotUpdateReason('LOGIN_REQUIRED');

  static const CommentCannotUpdateReason MAINTENANCE =
      CommentCannotUpdateReason('MAINTENANCE');

  static const CommentCannotUpdateReason VERIFIED_EMAIL_REQUIRED =
      CommentCannotUpdateReason('VERIFIED_EMAIL_REQUIRED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is CommentCannotUpdateReason && o.value == value;
}

class CommitAuthor {
  final Map<String, dynamic> input = <String, dynamic>{};

  set emails(List<String> value) => input['emails'] = value;
  set id(String value) => input['id'] = value;
}

class CommitContributionOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(CommitContributionOrderField value) => input['field'] = value.value;
}

class CommitContributionOrderField {
  const CommitContributionOrderField(this.value);

  final String value;

  static const CommitContributionOrderField COMMIT_COUNT =
      CommitContributionOrderField('COMMIT_COUNT');

  static const CommitContributionOrderField OCCURRED_AT =
      CommitContributionOrderField('OCCURRED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is CommitContributionOrderField && o.value == value;
}

class ContributionOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
}

class ConvertProjectCardNoteToIssueInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set projectCardId(String value) => input['projectCardId'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
  set title(String value) => input['title'] = value;
}

class CreateBranchProtectionRuleInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set dismissesStaleReviews(bool value) =>
      input['dismissesStaleReviews'] = value;
  set isAdminEnforced(bool value) => input['isAdminEnforced'] = value;
  set pattern(String value) => input['pattern'] = value;
  set pushActorIds(List<String> value) => input['pushActorIds'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
  set requiredApprovingReviewCount(int value) =>
      input['requiredApprovingReviewCount'] = value;
  set requiredStatusCheckContexts(List<String> value) =>
      input['requiredStatusCheckContexts'] = value;
  set requiresApprovingReviews(bool value) =>
      input['requiresApprovingReviews'] = value;
  set requiresCodeOwnerReviews(bool value) =>
      input['requiresCodeOwnerReviews'] = value;
  set requiresCommitSignatures(bool value) =>
      input['requiresCommitSignatures'] = value;
  set requiresStatusChecks(bool value) => input['requiresStatusChecks'] = value;
  set requiresStrictStatusChecks(bool value) =>
      input['requiresStrictStatusChecks'] = value;
  set restrictsPushes(bool value) => input['restrictsPushes'] = value;
  set restrictsReviewDismissals(bool value) =>
      input['restrictsReviewDismissals'] = value;
  set reviewDismissalActorIds(List<String> value) =>
      input['reviewDismissalActorIds'] = value;
}

class CreateCheckRunInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set actions(List<CheckRunAction> value) =>
      input['actions'] = value.map((CheckRunAction e) => e.input).toList();
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set completedAt(DateTime value) => input['completedAt'] = value.value;
  set conclusion(CheckConclusionState value) =>
      input['conclusion'] = value.value;
  set detailsUrl(URI value) => input['detailsUrl'] = value.value;
  set externalId(String value) => input['externalId'] = value;
  set headSha(GitObjectID value) => input['headSha'] = value.value;
  set name(String value) => input['name'] = value;
  set output(CheckRunOutput value) => input['output'] = value.input;
  set repositoryId(String value) => input['repositoryId'] = value;
  set startedAt(DateTime value) => input['startedAt'] = value.value;
  set status(RequestableCheckStatusState value) =>
      input['status'] = value.value;
}

class CreateCheckSuiteInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set headSha(GitObjectID value) => input['headSha'] = value.value;
  set repositoryId(String value) => input['repositoryId'] = value;
}

class CreateContentAttachmentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set contentReferenceId(String value) => input['contentReferenceId'] = value;
  set title(String value) => input['title'] = value;
}

class CreateDeploymentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set autoMerge(bool value) => input['autoMerge'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set description(String value) => input['description'] = value;
  set environment(String value) => input['environment'] = value;
  set payload(String value) => input['payload'] = value;
  set refId(String value) => input['refId'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
  set requiredContexts(List<String> value) => input['requiredContexts'] = value;
  set task(String value) => input['task'] = value;
}

class CreateDeploymentStatusInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set autoInactive(bool value) => input['autoInactive'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set deploymentId(String value) => input['deploymentId'] = value;
  set description(String value) => input['description'] = value;
  set environment(String value) => input['environment'] = value;
  set environmentUrl(String value) => input['environmentUrl'] = value;
  set logUrl(String value) => input['logUrl'] = value;
  set state(DeploymentStatusState value) => input['state'] = value.value;
}

class CreateEnterpriseOrganizationInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set adminLogins(List<String> value) => input['adminLogins'] = value;
  set billingEmail(String value) => input['billingEmail'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set login(String value) => input['login'] = value;
  set profileName(String value) => input['profileName'] = value;
}

class CreateIpAllowListEntryInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set allowListValue(String value) => input['allowListValue'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set isActive(bool value) => input['isActive'] = value;
  set name(String value) => input['name'] = value;
  set ownerId(String value) => input['ownerId'] = value;
}

class CreateIssueInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set assigneeIds(List<String> value) => input['assigneeIds'] = value;
  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set issueTemplate(String value) => input['issueTemplate'] = value;
  set labelIds(List<String> value) => input['labelIds'] = value;
  set milestoneId(String value) => input['milestoneId'] = value;
  set projectIds(List<String> value) => input['projectIds'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
  set title(String value) => input['title'] = value;
}

class CreateLabelInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set color(String value) => input['color'] = value;
  set description(String value) => input['description'] = value;
  set name(String value) => input['name'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
}

class CreateProjectInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set name(String value) => input['name'] = value;
  set ownerId(String value) => input['ownerId'] = value;
  set repositoryIds(List<String> value) => input['repositoryIds'] = value;
  set template(ProjectTemplate value) => input['template'] = value.value;
}

class CreatePullRequestInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set baseRefName(String value) => input['baseRefName'] = value;
  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set draft(bool value) => input['draft'] = value;
  set headRefName(String value) => input['headRefName'] = value;
  set maintainerCanModify(bool value) => input['maintainerCanModify'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
  set title(String value) => input['title'] = value;
}

class CreateRefInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set name(String value) => input['name'] = value;
  set oid(GitObjectID value) => input['oid'] = value.value;
  set repositoryId(String value) => input['repositoryId'] = value;
}

class CreateRepositoryInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set description(String value) => input['description'] = value;
  set hasIssuesEnabled(bool value) => input['hasIssuesEnabled'] = value;
  set hasWikiEnabled(bool value) => input['hasWikiEnabled'] = value;
  set homepageUrl(URI value) => input['homepageUrl'] = value.value;
  set name(String value) => input['name'] = value;
  set ownerId(String value) => input['ownerId'] = value;
  set teamId(String value) => input['teamId'] = value;
  set template(bool value) => input['template'] = value;
  set visibility(RepositoryVisibility value) =>
      input['visibility'] = value.value;
}

class CreateTeamDiscussionCommentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set discussionId(String value) => input['discussionId'] = value;
}

class CreateTeamDiscussionInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set private(bool value) => input['private'] = value;
  set teamId(String value) => input['teamId'] = value;
  set title(String value) => input['title'] = value;
}

class Date {
  const Date(this.value);

  final String value;

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is Date && o.value == value;
}

class DateTime {
  const DateTime(this.value);

  final String value;

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is DateTime && o.value == value;
}

class DeclineTopicSuggestionInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set name(String value) => input['name'] = value;
  set reason(TopicSuggestionDeclineReason value) =>
      input['reason'] = value.value;
  set repositoryId(String value) => input['repositoryId'] = value;
}

class DefaultRepositoryPermissionField {
  const DefaultRepositoryPermissionField(this.value);

  final String value;

  static const DefaultRepositoryPermissionField ADMIN =
      DefaultRepositoryPermissionField('ADMIN');

  static const DefaultRepositoryPermissionField NONE =
      DefaultRepositoryPermissionField('NONE');

  static const DefaultRepositoryPermissionField READ =
      DefaultRepositoryPermissionField('READ');

  static const DefaultRepositoryPermissionField WRITE =
      DefaultRepositoryPermissionField('WRITE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is DefaultRepositoryPermissionField && o.value == value;
}

class DeleteBranchProtectionRuleInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set branchProtectionRuleId(String value) =>
      input['branchProtectionRuleId'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
}

class DeleteDeploymentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set id(String value) => input['id'] = value;
}

class DeleteIpAllowListEntryInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set ipAllowListEntryId(String value) => input['ipAllowListEntryId'] = value;
}

class DeleteIssueCommentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set id(String value) => input['id'] = value;
}

class DeleteIssueInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set issueId(String value) => input['issueId'] = value;
}

class DeleteLabelInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set id(String value) => input['id'] = value;
}

class DeletePackageVersionInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set packageVersionId(String value) => input['packageVersionId'] = value;
}

class DeleteProjectCardInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set cardId(String value) => input['cardId'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
}

class DeleteProjectColumnInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set columnId(String value) => input['columnId'] = value;
}

class DeleteProjectInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set projectId(String value) => input['projectId'] = value;
}

class DeletePullRequestReviewCommentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set id(String value) => input['id'] = value;
}

class DeletePullRequestReviewInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set pullRequestReviewId(String value) => input['pullRequestReviewId'] = value;
}

class DeleteRefInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set refId(String value) => input['refId'] = value;
}

class DeleteTeamDiscussionCommentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set id(String value) => input['id'] = value;
}

class DeleteTeamDiscussionInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set id(String value) => input['id'] = value;
}

class DeploymentOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(DeploymentOrderField value) => input['field'] = value.value;
}

class DeploymentOrderField {
  const DeploymentOrderField(this.value);

  final String value;

  static const DeploymentOrderField CREATED_AT =
      DeploymentOrderField('CREATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is DeploymentOrderField && o.value == value;
}

class DeploymentState {
  const DeploymentState(this.value);

  final String value;

  static const DeploymentState ABANDONED = DeploymentState('ABANDONED');

  static const DeploymentState ACTIVE = DeploymentState('ACTIVE');

  static const DeploymentState DESTROYED = DeploymentState('DESTROYED');

  static const DeploymentState ERROR = DeploymentState('ERROR');

  static const DeploymentState FAILURE = DeploymentState('FAILURE');

  static const DeploymentState INACTIVE = DeploymentState('INACTIVE');

  static const DeploymentState IN_PROGRESS = DeploymentState('IN_PROGRESS');

  static const DeploymentState PENDING = DeploymentState('PENDING');

  static const DeploymentState QUEUED = DeploymentState('QUEUED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is DeploymentState && o.value == value;
}

class DeploymentStatusState {
  const DeploymentStatusState(this.value);

  final String value;

  static const DeploymentStatusState ERROR = DeploymentStatusState('ERROR');

  static const DeploymentStatusState FAILURE = DeploymentStatusState('FAILURE');

  static const DeploymentStatusState INACTIVE =
      DeploymentStatusState('INACTIVE');

  static const DeploymentStatusState IN_PROGRESS =
      DeploymentStatusState('IN_PROGRESS');

  static const DeploymentStatusState PENDING = DeploymentStatusState('PENDING');

  static const DeploymentStatusState QUEUED = DeploymentStatusState('QUEUED');

  static const DeploymentStatusState SUCCESS = DeploymentStatusState('SUCCESS');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is DeploymentStatusState && o.value == value;
}

class DiffSide {
  const DiffSide(this.value);

  final String value;

  static const DiffSide LEFT = DiffSide('LEFT');

  static const DiffSide RIGHT = DiffSide('RIGHT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is DiffSide && o.value == value;
}

class DismissPullRequestReviewInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set message(String value) => input['message'] = value;
  set pullRequestReviewId(String value) => input['pullRequestReviewId'] = value;
}

class DraftPullRequestReviewComment {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set path(String value) => input['path'] = value;
  set position(int value) => input['position'] = value;
}

class DraftPullRequestReviewThread {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set line(int value) => input['line'] = value;
  set path(String value) => input['path'] = value;
  set side(DiffSide value) => input['side'] = value.value;
  set startLine(int value) => input['startLine'] = value;
  set startSide(DiffSide value) => input['startSide'] = value.value;
}

class EnterpriseAdministratorInvitationOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(EnterpriseAdministratorInvitationOrderField value) =>
      input['field'] = value.value;
}

class EnterpriseAdministratorInvitationOrderField {
  const EnterpriseAdministratorInvitationOrderField(this.value);

  final String value;

  static const EnterpriseAdministratorInvitationOrderField CREATED_AT =
      EnterpriseAdministratorInvitationOrderField('CREATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseAdministratorInvitationOrderField && o.value == value;
}

class EnterpriseAdministratorRole {
  const EnterpriseAdministratorRole(this.value);

  final String value;

  static const EnterpriseAdministratorRole BILLING_MANAGER =
      EnterpriseAdministratorRole('BILLING_MANAGER');

  static const EnterpriseAdministratorRole OWNER =
      EnterpriseAdministratorRole('OWNER');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseAdministratorRole && o.value == value;
}

class EnterpriseDefaultRepositoryPermissionSettingValue {
  const EnterpriseDefaultRepositoryPermissionSettingValue(this.value);

  final String value;

  static const EnterpriseDefaultRepositoryPermissionSettingValue ADMIN =
      EnterpriseDefaultRepositoryPermissionSettingValue('ADMIN');

  static const EnterpriseDefaultRepositoryPermissionSettingValue NONE =
      EnterpriseDefaultRepositoryPermissionSettingValue('NONE');

  static const EnterpriseDefaultRepositoryPermissionSettingValue NO_POLICY =
      EnterpriseDefaultRepositoryPermissionSettingValue('NO_POLICY');

  static const EnterpriseDefaultRepositoryPermissionSettingValue READ =
      EnterpriseDefaultRepositoryPermissionSettingValue('READ');

  static const EnterpriseDefaultRepositoryPermissionSettingValue WRITE =
      EnterpriseDefaultRepositoryPermissionSettingValue('WRITE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseDefaultRepositoryPermissionSettingValue &&
      o.value == value;
}

class EnterpriseEnabledDisabledSettingValue {
  const EnterpriseEnabledDisabledSettingValue(this.value);

  final String value;

  static const EnterpriseEnabledDisabledSettingValue DISABLED =
      EnterpriseEnabledDisabledSettingValue('DISABLED');

  static const EnterpriseEnabledDisabledSettingValue ENABLED =
      EnterpriseEnabledDisabledSettingValue('ENABLED');

  static const EnterpriseEnabledDisabledSettingValue NO_POLICY =
      EnterpriseEnabledDisabledSettingValue('NO_POLICY');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseEnabledDisabledSettingValue && o.value == value;
}

class EnterpriseEnabledSettingValue {
  const EnterpriseEnabledSettingValue(this.value);

  final String value;

  static const EnterpriseEnabledSettingValue ENABLED =
      EnterpriseEnabledSettingValue('ENABLED');

  static const EnterpriseEnabledSettingValue NO_POLICY =
      EnterpriseEnabledSettingValue('NO_POLICY');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseEnabledSettingValue && o.value == value;
}

class EnterpriseMemberOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(EnterpriseMemberOrderField value) => input['field'] = value.value;
}

class EnterpriseMemberOrderField {
  const EnterpriseMemberOrderField(this.value);

  final String value;

  static const EnterpriseMemberOrderField CREATED_AT =
      EnterpriseMemberOrderField('CREATED_AT');

  static const EnterpriseMemberOrderField LOGIN =
      EnterpriseMemberOrderField('LOGIN');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseMemberOrderField && o.value == value;
}

class EnterpriseMembersCanCreateRepositoriesSettingValue {
  const EnterpriseMembersCanCreateRepositoriesSettingValue(this.value);

  final String value;

  static const EnterpriseMembersCanCreateRepositoriesSettingValue ALL =
      EnterpriseMembersCanCreateRepositoriesSettingValue('ALL');

  static const EnterpriseMembersCanCreateRepositoriesSettingValue DISABLED =
      EnterpriseMembersCanCreateRepositoriesSettingValue('DISABLED');

  static const EnterpriseMembersCanCreateRepositoriesSettingValue NO_POLICY =
      EnterpriseMembersCanCreateRepositoriesSettingValue('NO_POLICY');

  static const EnterpriseMembersCanCreateRepositoriesSettingValue PRIVATE =
      EnterpriseMembersCanCreateRepositoriesSettingValue('PRIVATE');

  static const EnterpriseMembersCanCreateRepositoriesSettingValue PUBLIC =
      EnterpriseMembersCanCreateRepositoriesSettingValue('PUBLIC');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseMembersCanCreateRepositoriesSettingValue &&
      o.value == value;
}

class EnterpriseMembersCanMakePurchasesSettingValue {
  const EnterpriseMembersCanMakePurchasesSettingValue(this.value);

  final String value;

  static const EnterpriseMembersCanMakePurchasesSettingValue DISABLED =
      EnterpriseMembersCanMakePurchasesSettingValue('DISABLED');

  static const EnterpriseMembersCanMakePurchasesSettingValue ENABLED =
      EnterpriseMembersCanMakePurchasesSettingValue('ENABLED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseMembersCanMakePurchasesSettingValue && o.value == value;
}

class EnterpriseServerInstallationOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(EnterpriseServerInstallationOrderField value) =>
      input['field'] = value.value;
}

class EnterpriseServerInstallationOrderField {
  const EnterpriseServerInstallationOrderField(this.value);

  final String value;

  static const EnterpriseServerInstallationOrderField CREATED_AT =
      EnterpriseServerInstallationOrderField('CREATED_AT');

  static const EnterpriseServerInstallationOrderField CUSTOMER_NAME =
      EnterpriseServerInstallationOrderField('CUSTOMER_NAME');

  static const EnterpriseServerInstallationOrderField HOST_NAME =
      EnterpriseServerInstallationOrderField('HOST_NAME');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseServerInstallationOrderField && o.value == value;
}

class EnterpriseServerUserAccountEmailOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(EnterpriseServerUserAccountEmailOrderField value) =>
      input['field'] = value.value;
}

class EnterpriseServerUserAccountEmailOrderField {
  const EnterpriseServerUserAccountEmailOrderField(this.value);

  final String value;

  static const EnterpriseServerUserAccountEmailOrderField EMAIL =
      EnterpriseServerUserAccountEmailOrderField('EMAIL');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseServerUserAccountEmailOrderField && o.value == value;
}

class EnterpriseServerUserAccountOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(EnterpriseServerUserAccountOrderField value) =>
      input['field'] = value.value;
}

class EnterpriseServerUserAccountOrderField {
  const EnterpriseServerUserAccountOrderField(this.value);

  final String value;

  static const EnterpriseServerUserAccountOrderField LOGIN =
      EnterpriseServerUserAccountOrderField('LOGIN');

  static const EnterpriseServerUserAccountOrderField REMOTE_CREATED_AT =
      EnterpriseServerUserAccountOrderField('REMOTE_CREATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseServerUserAccountOrderField && o.value == value;
}

class EnterpriseServerUserAccountsUploadOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(EnterpriseServerUserAccountsUploadOrderField value) =>
      input['field'] = value.value;
}

class EnterpriseServerUserAccountsUploadOrderField {
  const EnterpriseServerUserAccountsUploadOrderField(this.value);

  final String value;

  static const EnterpriseServerUserAccountsUploadOrderField CREATED_AT =
      EnterpriseServerUserAccountsUploadOrderField('CREATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseServerUserAccountsUploadOrderField && o.value == value;
}

class EnterpriseServerUserAccountsUploadSyncState {
  const EnterpriseServerUserAccountsUploadSyncState(this.value);

  final String value;

  static const EnterpriseServerUserAccountsUploadSyncState FAILURE =
      EnterpriseServerUserAccountsUploadSyncState('FAILURE');

  static const EnterpriseServerUserAccountsUploadSyncState PENDING =
      EnterpriseServerUserAccountsUploadSyncState('PENDING');

  static const EnterpriseServerUserAccountsUploadSyncState SUCCESS =
      EnterpriseServerUserAccountsUploadSyncState('SUCCESS');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseServerUserAccountsUploadSyncState && o.value == value;
}

class EnterpriseUserAccountMembershipRole {
  const EnterpriseUserAccountMembershipRole(this.value);

  final String value;

  static const EnterpriseUserAccountMembershipRole MEMBER =
      EnterpriseUserAccountMembershipRole('MEMBER');

  static const EnterpriseUserAccountMembershipRole OWNER =
      EnterpriseUserAccountMembershipRole('OWNER');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseUserAccountMembershipRole && o.value == value;
}

class EnterpriseUserDeployment {
  const EnterpriseUserDeployment(this.value);

  final String value;

  static const EnterpriseUserDeployment CLOUD =
      EnterpriseUserDeployment('CLOUD');

  static const EnterpriseUserDeployment SERVER =
      EnterpriseUserDeployment('SERVER');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is EnterpriseUserDeployment && o.value == value;
}

class FollowUserInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set userId(String value) => input['userId'] = value;
}

class FundingPlatform {
  const FundingPlatform(this.value);

  final String value;

  static const FundingPlatform COMMUNITY_BRIDGE =
      FundingPlatform('COMMUNITY_BRIDGE');

  static const FundingPlatform CUSTOM = FundingPlatform('CUSTOM');

  static const FundingPlatform GITHUB = FundingPlatform('GITHUB');

  static const FundingPlatform ISSUEHUNT = FundingPlatform('ISSUEHUNT');

  static const FundingPlatform KO_FI = FundingPlatform('KO_FI');

  static const FundingPlatform LIBERAPAY = FundingPlatform('LIBERAPAY');

  static const FundingPlatform OPEN_COLLECTIVE =
      FundingPlatform('OPEN_COLLECTIVE');

  static const FundingPlatform OTECHIE = FundingPlatform('OTECHIE');

  static const FundingPlatform PATREON = FundingPlatform('PATREON');

  static const FundingPlatform TIDELIFT = FundingPlatform('TIDELIFT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is FundingPlatform && o.value == value;
}

class GistOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(GistOrderField value) => input['field'] = value.value;
}

class GistOrderField {
  const GistOrderField(this.value);

  final String value;

  static const GistOrderField CREATED_AT = GistOrderField('CREATED_AT');

  static const GistOrderField PUSHED_AT = GistOrderField('PUSHED_AT');

  static const GistOrderField UPDATED_AT = GistOrderField('UPDATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is GistOrderField && o.value == value;
}

class GistPrivacy {
  const GistPrivacy(this.value);

  final String value;

  static const GistPrivacy ALL = GistPrivacy('ALL');

  static const GistPrivacy PUBLIC = GistPrivacy('PUBLIC');

  static const GistPrivacy SECRET = GistPrivacy('SECRET');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is GistPrivacy && o.value == value;
}

class GitObjectID {
  const GitObjectID(this.value);

  final String value;

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is GitObjectID && o.value == value;
}

class GitRefname {
  const GitRefname(this.value);

  final String value;

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is GitRefname && o.value == value;
}

class GitSSHRemote {
  const GitSSHRemote(this.value);

  final String value;

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is GitSSHRemote && o.value == value;
}

class GitSignatureState {
  const GitSignatureState(this.value);

  final String value;

  static const GitSignatureState BAD_CERT = GitSignatureState('BAD_CERT');

  static const GitSignatureState BAD_EMAIL = GitSignatureState('BAD_EMAIL');

  static const GitSignatureState EXPIRED_KEY = GitSignatureState('EXPIRED_KEY');

  static const GitSignatureState GPGVERIFY_ERROR =
      GitSignatureState('GPGVERIFY_ERROR');

  static const GitSignatureState GPGVERIFY_UNAVAILABLE =
      GitSignatureState('GPGVERIFY_UNAVAILABLE');

  static const GitSignatureState INVALID = GitSignatureState('INVALID');

  static const GitSignatureState MALFORMED_SIG =
      GitSignatureState('MALFORMED_SIG');

  static const GitSignatureState NOT_SIGNING_KEY =
      GitSignatureState('NOT_SIGNING_KEY');

  static const GitSignatureState NO_USER = GitSignatureState('NO_USER');

  static const GitSignatureState OCSP_ERROR = GitSignatureState('OCSP_ERROR');

  static const GitSignatureState OCSP_PENDING =
      GitSignatureState('OCSP_PENDING');

  static const GitSignatureState OCSP_REVOKED =
      GitSignatureState('OCSP_REVOKED');

  static const GitSignatureState UNKNOWN_KEY = GitSignatureState('UNKNOWN_KEY');

  static const GitSignatureState UNKNOWN_SIG_TYPE =
      GitSignatureState('UNKNOWN_SIG_TYPE');

  static const GitSignatureState UNSIGNED = GitSignatureState('UNSIGNED');

  static const GitSignatureState UNVERIFIED_EMAIL =
      GitSignatureState('UNVERIFIED_EMAIL');

  static const GitSignatureState VALID = GitSignatureState('VALID');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is GitSignatureState && o.value == value;
}

class GitTimestamp {
  const GitTimestamp(this.value);

  final String value;

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is GitTimestamp && o.value == value;
}

class HTML {
  const HTML(this.value);

  final String value;

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is HTML && o.value == value;
}

class IdentityProviderConfigurationState {
  const IdentityProviderConfigurationState(this.value);

  final String value;

  static const IdentityProviderConfigurationState CONFIGURED =
      IdentityProviderConfigurationState('CONFIGURED');

  static const IdentityProviderConfigurationState ENFORCED =
      IdentityProviderConfigurationState('ENFORCED');

  static const IdentityProviderConfigurationState UNCONFIGURED =
      IdentityProviderConfigurationState('UNCONFIGURED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is IdentityProviderConfigurationState && o.value == value;
}

class ImportProjectInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set columnImports(List<ProjectColumnImport> value) => input['columnImports'] =
      value.map((ProjectColumnImport e) => e.input).toList();
  set name(String value) => input['name'] = value;
  set ownerName(String value) => input['ownerName'] = value;
  set public(bool value) => input['public'] = value;
}

class InviteEnterpriseAdminInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set email(String value) => input['email'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set invitee(String value) => input['invitee'] = value;
  set role(EnterpriseAdministratorRole value) => input['role'] = value.value;
}

class IpAllowListEnabledSettingValue {
  const IpAllowListEnabledSettingValue(this.value);

  final String value;

  static const IpAllowListEnabledSettingValue DISABLED =
      IpAllowListEnabledSettingValue('DISABLED');

  static const IpAllowListEnabledSettingValue ENABLED =
      IpAllowListEnabledSettingValue('ENABLED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is IpAllowListEnabledSettingValue && o.value == value;
}

class IpAllowListEntryOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(IpAllowListEntryOrderField value) => input['field'] = value.value;
}

class IpAllowListEntryOrderField {
  const IpAllowListEntryOrderField(this.value);

  final String value;

  static const IpAllowListEntryOrderField ALLOW_LIST_VALUE =
      IpAllowListEntryOrderField('ALLOW_LIST_VALUE');

  static const IpAllowListEntryOrderField CREATED_AT =
      IpAllowListEntryOrderField('CREATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is IpAllowListEntryOrderField && o.value == value;
}

class IssueFilters {
  final Map<String, dynamic> input = <String, dynamic>{};

  set assignee(String value) => input['assignee'] = value;
  set createdBy(String value) => input['createdBy'] = value;
  set labels(List<String> value) => input['labels'] = value;
  set mentioned(String value) => input['mentioned'] = value;
  set milestone(String value) => input['milestone'] = value;
  set since(DateTime value) => input['since'] = value.value;
  set states(List<IssueState> value) =>
      input['states'] = value.map((IssueState e) => e.value).toList();
  set viewerSubscribed(bool value) => input['viewerSubscribed'] = value;
}

class IssueOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(IssueOrderField value) => input['field'] = value.value;
}

class IssueOrderField {
  const IssueOrderField(this.value);

  final String value;

  static const IssueOrderField COMMENTS = IssueOrderField('COMMENTS');

  static const IssueOrderField CREATED_AT = IssueOrderField('CREATED_AT');

  static const IssueOrderField UPDATED_AT = IssueOrderField('UPDATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is IssueOrderField && o.value == value;
}

class IssueState {
  const IssueState(this.value);

  final String value;

  static const IssueState CLOSED = IssueState('CLOSED');

  static const IssueState OPEN = IssueState('OPEN');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is IssueState && o.value == value;
}

class IssueTimelineItemsItemType {
  const IssueTimelineItemsItemType(this.value);

  final String value;

  static const IssueTimelineItemsItemType ADDED_TO_PROJECT_EVENT =
      IssueTimelineItemsItemType('ADDED_TO_PROJECT_EVENT');

  static const IssueTimelineItemsItemType ASSIGNED_EVENT =
      IssueTimelineItemsItemType('ASSIGNED_EVENT');

  static const IssueTimelineItemsItemType CLOSED_EVENT =
      IssueTimelineItemsItemType('CLOSED_EVENT');

  static const IssueTimelineItemsItemType COMMENT_DELETED_EVENT =
      IssueTimelineItemsItemType('COMMENT_DELETED_EVENT');

  static const IssueTimelineItemsItemType CONNECTED_EVENT =
      IssueTimelineItemsItemType('CONNECTED_EVENT');

  static const IssueTimelineItemsItemType CONVERTED_NOTE_TO_ISSUE_EVENT =
      IssueTimelineItemsItemType('CONVERTED_NOTE_TO_ISSUE_EVENT');

  static const IssueTimelineItemsItemType CROSS_REFERENCED_EVENT =
      IssueTimelineItemsItemType('CROSS_REFERENCED_EVENT');

  static const IssueTimelineItemsItemType DEMILESTONED_EVENT =
      IssueTimelineItemsItemType('DEMILESTONED_EVENT');

  static const IssueTimelineItemsItemType DISCONNECTED_EVENT =
      IssueTimelineItemsItemType('DISCONNECTED_EVENT');

  static const IssueTimelineItemsItemType ISSUE_COMMENT =
      IssueTimelineItemsItemType('ISSUE_COMMENT');

  static const IssueTimelineItemsItemType LABELED_EVENT =
      IssueTimelineItemsItemType('LABELED_EVENT');

  static const IssueTimelineItemsItemType LOCKED_EVENT =
      IssueTimelineItemsItemType('LOCKED_EVENT');

  static const IssueTimelineItemsItemType MARKED_AS_DUPLICATE_EVENT =
      IssueTimelineItemsItemType('MARKED_AS_DUPLICATE_EVENT');

  static const IssueTimelineItemsItemType MENTIONED_EVENT =
      IssueTimelineItemsItemType('MENTIONED_EVENT');

  static const IssueTimelineItemsItemType MILESTONED_EVENT =
      IssueTimelineItemsItemType('MILESTONED_EVENT');

  static const IssueTimelineItemsItemType MOVED_COLUMNS_IN_PROJECT_EVENT =
      IssueTimelineItemsItemType('MOVED_COLUMNS_IN_PROJECT_EVENT');

  static const IssueTimelineItemsItemType PINNED_EVENT =
      IssueTimelineItemsItemType('PINNED_EVENT');

  static const IssueTimelineItemsItemType REFERENCED_EVENT =
      IssueTimelineItemsItemType('REFERENCED_EVENT');

  static const IssueTimelineItemsItemType REMOVED_FROM_PROJECT_EVENT =
      IssueTimelineItemsItemType('REMOVED_FROM_PROJECT_EVENT');

  static const IssueTimelineItemsItemType RENAMED_TITLE_EVENT =
      IssueTimelineItemsItemType('RENAMED_TITLE_EVENT');

  static const IssueTimelineItemsItemType REOPENED_EVENT =
      IssueTimelineItemsItemType('REOPENED_EVENT');

  static const IssueTimelineItemsItemType SUBSCRIBED_EVENT =
      IssueTimelineItemsItemType('SUBSCRIBED_EVENT');

  static const IssueTimelineItemsItemType TRANSFERRED_EVENT =
      IssueTimelineItemsItemType('TRANSFERRED_EVENT');

  static const IssueTimelineItemsItemType UNASSIGNED_EVENT =
      IssueTimelineItemsItemType('UNASSIGNED_EVENT');

  static const IssueTimelineItemsItemType UNLABELED_EVENT =
      IssueTimelineItemsItemType('UNLABELED_EVENT');

  static const IssueTimelineItemsItemType UNLOCKED_EVENT =
      IssueTimelineItemsItemType('UNLOCKED_EVENT');

  static const IssueTimelineItemsItemType UNMARKED_AS_DUPLICATE_EVENT =
      IssueTimelineItemsItemType('UNMARKED_AS_DUPLICATE_EVENT');

  static const IssueTimelineItemsItemType UNPINNED_EVENT =
      IssueTimelineItemsItemType('UNPINNED_EVENT');

  static const IssueTimelineItemsItemType UNSUBSCRIBED_EVENT =
      IssueTimelineItemsItemType('UNSUBSCRIBED_EVENT');

  static const IssueTimelineItemsItemType USER_BLOCKED_EVENT =
      IssueTimelineItemsItemType('USER_BLOCKED_EVENT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is IssueTimelineItemsItemType && o.value == value;
}

class LabelOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(LabelOrderField value) => input['field'] = value.value;
}

class LabelOrderField {
  const LabelOrderField(this.value);

  final String value;

  static const LabelOrderField CREATED_AT = LabelOrderField('CREATED_AT');

  static const LabelOrderField NAME = LabelOrderField('NAME');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is LabelOrderField && o.value == value;
}

class LanguageOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(LanguageOrderField value) => input['field'] = value.value;
}

class LanguageOrderField {
  const LanguageOrderField(this.value);

  final String value;

  static const LanguageOrderField SIZE = LanguageOrderField('SIZE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is LanguageOrderField && o.value == value;
}

class LinkRepositoryToProjectInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set projectId(String value) => input['projectId'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
}

class LockLockableInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set lockReason(LockReason value) => input['lockReason'] = value.value;
  set lockableId(String value) => input['lockableId'] = value;
}

class LockReason {
  const LockReason(this.value);

  final String value;

  static const LockReason OFF_TOPIC = LockReason('OFF_TOPIC');

  static const LockReason RESOLVED = LockReason('RESOLVED');

  static const LockReason SPAM = LockReason('SPAM');

  static const LockReason TOO_HEATED = LockReason('TOO_HEATED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is LockReason && o.value == value;
}

class MarkFileAsViewedInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set path(String value) => input['path'] = value;
  set pullRequestId(String value) => input['pullRequestId'] = value;
}

class MarkPullRequestReadyForReviewInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set pullRequestId(String value) => input['pullRequestId'] = value;
}

class MergeBranchInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set authorEmail(String value) => input['authorEmail'] = value;
  set base(String value) => input['base'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set commitMessage(String value) => input['commitMessage'] = value;
  set head(String value) => input['head'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
}

class MergePullRequestInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set authorEmail(String value) => input['authorEmail'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set commitBody(String value) => input['commitBody'] = value;
  set commitHeadline(String value) => input['commitHeadline'] = value;
  set expectedHeadOid(GitObjectID value) =>
      input['expectedHeadOid'] = value.value;
  set mergeMethod(PullRequestMergeMethod value) =>
      input['mergeMethod'] = value.value;
  set pullRequestId(String value) => input['pullRequestId'] = value;
}

class MergeStateStatus {
  const MergeStateStatus(this.value);

  final String value;

  static const MergeStateStatus BEHIND = MergeStateStatus('BEHIND');

  static const MergeStateStatus BLOCKED = MergeStateStatus('BLOCKED');

  static const MergeStateStatus CLEAN = MergeStateStatus('CLEAN');

  static const MergeStateStatus DIRTY = MergeStateStatus('DIRTY');

  static const MergeStateStatus DRAFT = MergeStateStatus('DRAFT');

  static const MergeStateStatus HAS_HOOKS = MergeStateStatus('HAS_HOOKS');

  static const MergeStateStatus UNKNOWN = MergeStateStatus('UNKNOWN');

  static const MergeStateStatus UNSTABLE = MergeStateStatus('UNSTABLE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is MergeStateStatus && o.value == value;
}

class MergeableState {
  const MergeableState(this.value);

  final String value;

  static const MergeableState CONFLICTING = MergeableState('CONFLICTING');

  static const MergeableState MERGEABLE = MergeableState('MERGEABLE');

  static const MergeableState UNKNOWN = MergeableState('UNKNOWN');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is MergeableState && o.value == value;
}

class MilestoneOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(MilestoneOrderField value) => input['field'] = value.value;
}

class MilestoneOrderField {
  const MilestoneOrderField(this.value);

  final String value;

  static const MilestoneOrderField CREATED_AT =
      MilestoneOrderField('CREATED_AT');

  static const MilestoneOrderField DUE_DATE = MilestoneOrderField('DUE_DATE');

  static const MilestoneOrderField NUMBER = MilestoneOrderField('NUMBER');

  static const MilestoneOrderField UPDATED_AT =
      MilestoneOrderField('UPDATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is MilestoneOrderField && o.value == value;
}

class MilestoneState {
  const MilestoneState(this.value);

  final String value;

  static const MilestoneState CLOSED = MilestoneState('CLOSED');

  static const MilestoneState OPEN = MilestoneState('OPEN');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is MilestoneState && o.value == value;
}

class MinimizeCommentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set classifier(ReportedContentClassifiers value) =>
      input['classifier'] = value.value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set subjectId(String value) => input['subjectId'] = value;
}

class MoveProjectCardInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set afterCardId(String value) => input['afterCardId'] = value;
  set cardId(String value) => input['cardId'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set columnId(String value) => input['columnId'] = value;
}

class MoveProjectColumnInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set afterColumnId(String value) => input['afterColumnId'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set columnId(String value) => input['columnId'] = value;
}

class OauthApplicationCreateAuditEntryState {
  const OauthApplicationCreateAuditEntryState(this.value);

  final String value;

  static const OauthApplicationCreateAuditEntryState ACTIVE =
      OauthApplicationCreateAuditEntryState('ACTIVE');

  static const OauthApplicationCreateAuditEntryState PENDING_DELETION =
      OauthApplicationCreateAuditEntryState('PENDING_DELETION');

  static const OauthApplicationCreateAuditEntryState SUSPENDED =
      OauthApplicationCreateAuditEntryState('SUSPENDED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is OauthApplicationCreateAuditEntryState && o.value == value;
}

class OperationType {
  const OperationType(this.value);

  final String value;

  static const OperationType ACCESS = OperationType('ACCESS');

  static const OperationType AUTHENTICATION = OperationType('AUTHENTICATION');

  static const OperationType CREATE = OperationType('CREATE');

  static const OperationType MODIFY = OperationType('MODIFY');

  static const OperationType REMOVE = OperationType('REMOVE');

  static const OperationType RESTORE = OperationType('RESTORE');

  static const OperationType TRANSFER = OperationType('TRANSFER');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is OperationType && o.value == value;
}

class OrderDirection {
  const OrderDirection(this.value);

  final String value;

  static const OrderDirection ASC = OrderDirection('ASC');

  static const OrderDirection DESC = OrderDirection('DESC');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is OrderDirection && o.value == value;
}

class OrgAddMemberAuditEntryPermission {
  const OrgAddMemberAuditEntryPermission(this.value);

  final String value;

  static const OrgAddMemberAuditEntryPermission ADMIN =
      OrgAddMemberAuditEntryPermission('ADMIN');

  static const OrgAddMemberAuditEntryPermission READ =
      OrgAddMemberAuditEntryPermission('READ');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is OrgAddMemberAuditEntryPermission && o.value == value;
}

class OrgCreateAuditEntryBillingPlan {
  const OrgCreateAuditEntryBillingPlan(this.value);

  final String value;

  static const OrgCreateAuditEntryBillingPlan BUSINESS =
      OrgCreateAuditEntryBillingPlan('BUSINESS');

  static const OrgCreateAuditEntryBillingPlan BUSINESS_PLUS =
      OrgCreateAuditEntryBillingPlan('BUSINESS_PLUS');

  static const OrgCreateAuditEntryBillingPlan FREE =
      OrgCreateAuditEntryBillingPlan('FREE');

  static const OrgCreateAuditEntryBillingPlan TIERED_PER_SEAT =
      OrgCreateAuditEntryBillingPlan('TIERED_PER_SEAT');

  static const OrgCreateAuditEntryBillingPlan UNLIMITED =
      OrgCreateAuditEntryBillingPlan('UNLIMITED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is OrgCreateAuditEntryBillingPlan && o.value == value;
}

class OrgRemoveBillingManagerAuditEntryReason {
  const OrgRemoveBillingManagerAuditEntryReason(this.value);

  final String value;

  static const OrgRemoveBillingManagerAuditEntryReason
      SAML_EXTERNAL_IDENTITY_MISSING =
      OrgRemoveBillingManagerAuditEntryReason('SAML_EXTERNAL_IDENTITY_MISSING');

  static const OrgRemoveBillingManagerAuditEntryReason
      SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY =
      OrgRemoveBillingManagerAuditEntryReason(
          'SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY');

  static const OrgRemoveBillingManagerAuditEntryReason
      TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE =
      OrgRemoveBillingManagerAuditEntryReason(
          'TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is OrgRemoveBillingManagerAuditEntryReason && o.value == value;
}

class OrgRemoveMemberAuditEntryMembershipType {
  const OrgRemoveMemberAuditEntryMembershipType(this.value);

  final String value;

  static const OrgRemoveMemberAuditEntryMembershipType ADMIN =
      OrgRemoveMemberAuditEntryMembershipType('ADMIN');

  static const OrgRemoveMemberAuditEntryMembershipType BILLING_MANAGER =
      OrgRemoveMemberAuditEntryMembershipType('BILLING_MANAGER');

  static const OrgRemoveMemberAuditEntryMembershipType DIRECT_MEMBER =
      OrgRemoveMemberAuditEntryMembershipType('DIRECT_MEMBER');

  static const OrgRemoveMemberAuditEntryMembershipType OUTSIDE_COLLABORATOR =
      OrgRemoveMemberAuditEntryMembershipType('OUTSIDE_COLLABORATOR');

  static const OrgRemoveMemberAuditEntryMembershipType UNAFFILIATED =
      OrgRemoveMemberAuditEntryMembershipType('UNAFFILIATED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is OrgRemoveMemberAuditEntryMembershipType && o.value == value;
}

class OrgRemoveMemberAuditEntryReason {
  const OrgRemoveMemberAuditEntryReason(this.value);

  final String value;

  static const OrgRemoveMemberAuditEntryReason SAML_EXTERNAL_IDENTITY_MISSING =
      OrgRemoveMemberAuditEntryReason('SAML_EXTERNAL_IDENTITY_MISSING');

  static const OrgRemoveMemberAuditEntryReason
      SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY =
      OrgRemoveMemberAuditEntryReason(
          'SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY');

  static const OrgRemoveMemberAuditEntryReason TWO_FACTOR_ACCOUNT_RECOVERY =
      OrgRemoveMemberAuditEntryReason('TWO_FACTOR_ACCOUNT_RECOVERY');

  static const OrgRemoveMemberAuditEntryReason
      TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE =
      OrgRemoveMemberAuditEntryReason('TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE');

  static const OrgRemoveMemberAuditEntryReason USER_ACCOUNT_DELETED =
      OrgRemoveMemberAuditEntryReason('USER_ACCOUNT_DELETED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is OrgRemoveMemberAuditEntryReason && o.value == value;
}

class OrgRemoveOutsideCollaboratorAuditEntryMembershipType {
  const OrgRemoveOutsideCollaboratorAuditEntryMembershipType(this.value);

  final String value;

  static const OrgRemoveOutsideCollaboratorAuditEntryMembershipType
      BILLING_MANAGER =
      OrgRemoveOutsideCollaboratorAuditEntryMembershipType('BILLING_MANAGER');

  static const OrgRemoveOutsideCollaboratorAuditEntryMembershipType
      OUTSIDE_COLLABORATOR =
      OrgRemoveOutsideCollaboratorAuditEntryMembershipType(
          'OUTSIDE_COLLABORATOR');

  static const OrgRemoveOutsideCollaboratorAuditEntryMembershipType
      UNAFFILIATED =
      OrgRemoveOutsideCollaboratorAuditEntryMembershipType('UNAFFILIATED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is OrgRemoveOutsideCollaboratorAuditEntryMembershipType &&
      o.value == value;
}

class OrgRemoveOutsideCollaboratorAuditEntryReason {
  const OrgRemoveOutsideCollaboratorAuditEntryReason(this.value);

  final String value;

  static const OrgRemoveOutsideCollaboratorAuditEntryReason
      SAML_EXTERNAL_IDENTITY_MISSING =
      OrgRemoveOutsideCollaboratorAuditEntryReason(
          'SAML_EXTERNAL_IDENTITY_MISSING');

  static const OrgRemoveOutsideCollaboratorAuditEntryReason
      TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE =
      OrgRemoveOutsideCollaboratorAuditEntryReason(
          'TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is OrgRemoveOutsideCollaboratorAuditEntryReason && o.value == value;
}

class OrgUpdateDefaultRepositoryPermissionAuditEntryPermission {
  const OrgUpdateDefaultRepositoryPermissionAuditEntryPermission(this.value);

  final String value;

  static const OrgUpdateDefaultRepositoryPermissionAuditEntryPermission ADMIN =
      OrgUpdateDefaultRepositoryPermissionAuditEntryPermission('ADMIN');

  static const OrgUpdateDefaultRepositoryPermissionAuditEntryPermission NONE =
      OrgUpdateDefaultRepositoryPermissionAuditEntryPermission('NONE');

  static const OrgUpdateDefaultRepositoryPermissionAuditEntryPermission READ =
      OrgUpdateDefaultRepositoryPermissionAuditEntryPermission('READ');

  static const OrgUpdateDefaultRepositoryPermissionAuditEntryPermission WRITE =
      OrgUpdateDefaultRepositoryPermissionAuditEntryPermission('WRITE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is OrgUpdateDefaultRepositoryPermissionAuditEntryPermission &&
      o.value == value;
}

class OrgUpdateMemberAuditEntryPermission {
  const OrgUpdateMemberAuditEntryPermission(this.value);

  final String value;

  static const OrgUpdateMemberAuditEntryPermission ADMIN =
      OrgUpdateMemberAuditEntryPermission('ADMIN');

  static const OrgUpdateMemberAuditEntryPermission READ =
      OrgUpdateMemberAuditEntryPermission('READ');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is OrgUpdateMemberAuditEntryPermission && o.value == value;
}

class OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility {
  const OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility(
      this.value);

  final String value;

  static const OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
      ALL =
      OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility('ALL');

  static const OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
      INTERNAL =
      OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility(
          'INTERNAL');

  static const OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
      NONE =
      OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility('NONE');

  static const OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
      PRIVATE = OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility(
          'PRIVATE');

  static const OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
      PRIVATE_INTERNAL =
      OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility(
          'PRIVATE_INTERNAL');

  static const OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
      PUBLIC =
      OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility('PUBLIC');

  static const OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
      PUBLIC_INTERNAL =
      OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility(
          'PUBLIC_INTERNAL');

  static const OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
      PUBLIC_PRIVATE =
      OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility(
          'PUBLIC_PRIVATE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility &&
      o.value == value;
}

class OrganizationInvitationRole {
  const OrganizationInvitationRole(this.value);

  final String value;

  static const OrganizationInvitationRole ADMIN =
      OrganizationInvitationRole('ADMIN');

  static const OrganizationInvitationRole BILLING_MANAGER =
      OrganizationInvitationRole('BILLING_MANAGER');

  static const OrganizationInvitationRole DIRECT_MEMBER =
      OrganizationInvitationRole('DIRECT_MEMBER');

  static const OrganizationInvitationRole REINSTATE =
      OrganizationInvitationRole('REINSTATE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is OrganizationInvitationRole && o.value == value;
}

class OrganizationInvitationType {
  const OrganizationInvitationType(this.value);

  final String value;

  static const OrganizationInvitationType EMAIL =
      OrganizationInvitationType('EMAIL');

  static const OrganizationInvitationType USER =
      OrganizationInvitationType('USER');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is OrganizationInvitationType && o.value == value;
}

class OrganizationMemberRole {
  const OrganizationMemberRole(this.value);

  final String value;

  static const OrganizationMemberRole ADMIN = OrganizationMemberRole('ADMIN');

  static const OrganizationMemberRole MEMBER = OrganizationMemberRole('MEMBER');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is OrganizationMemberRole && o.value == value;
}

class OrganizationMembersCanCreateRepositoriesSettingValue {
  const OrganizationMembersCanCreateRepositoriesSettingValue(this.value);

  final String value;

  static const OrganizationMembersCanCreateRepositoriesSettingValue ALL =
      OrganizationMembersCanCreateRepositoriesSettingValue('ALL');

  static const OrganizationMembersCanCreateRepositoriesSettingValue DISABLED =
      OrganizationMembersCanCreateRepositoriesSettingValue('DISABLED');

  static const OrganizationMembersCanCreateRepositoriesSettingValue PRIVATE =
      OrganizationMembersCanCreateRepositoriesSettingValue('PRIVATE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is OrganizationMembersCanCreateRepositoriesSettingValue &&
      o.value == value;
}

class OrganizationOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(OrganizationOrderField value) => input['field'] = value.value;
}

class OrganizationOrderField {
  const OrganizationOrderField(this.value);

  final String value;

  static const OrganizationOrderField CREATED_AT =
      OrganizationOrderField('CREATED_AT');

  static const OrganizationOrderField LOGIN = OrganizationOrderField('LOGIN');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is OrganizationOrderField && o.value == value;
}

class PackageFileOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(PackageFileOrderField value) => input['field'] = value.value;
}

class PackageFileOrderField {
  const PackageFileOrderField(this.value);

  final String value;

  static const PackageFileOrderField CREATED_AT =
      PackageFileOrderField('CREATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is PackageFileOrderField && o.value == value;
}

class PackageOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(PackageOrderField value) => input['field'] = value.value;
}

class PackageOrderField {
  const PackageOrderField(this.value);

  final String value;

  static const PackageOrderField CREATED_AT = PackageOrderField('CREATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is PackageOrderField && o.value == value;
}

class PackageType {
  const PackageType(this.value);

  final String value;

  static const PackageType DEBIAN = PackageType('DEBIAN');

  static const PackageType DOCKER = PackageType('DOCKER');

  static const PackageType MAVEN = PackageType('MAVEN');

  static const PackageType NPM = PackageType('NPM');

  static const PackageType NUGET = PackageType('NUGET');

  static const PackageType PYPI = PackageType('PYPI');

  static const PackageType RUBYGEMS = PackageType('RUBYGEMS');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is PackageType && o.value == value;
}

class PackageVersionOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(PackageVersionOrderField value) => input['field'] = value.value;
}

class PackageVersionOrderField {
  const PackageVersionOrderField(this.value);

  final String value;

  static const PackageVersionOrderField CREATED_AT =
      PackageVersionOrderField('CREATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is PackageVersionOrderField && o.value == value;
}

class PinIssueInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set issueId(String value) => input['issueId'] = value;
}

class PinnableItemType {
  const PinnableItemType(this.value);

  final String value;

  static const PinnableItemType GIST = PinnableItemType('GIST');

  static const PinnableItemType ISSUE = PinnableItemType('ISSUE');

  static const PinnableItemType ORGANIZATION = PinnableItemType('ORGANIZATION');

  static const PinnableItemType PROJECT = PinnableItemType('PROJECT');

  static const PinnableItemType PULL_REQUEST = PinnableItemType('PULL_REQUEST');

  static const PinnableItemType REPOSITORY = PinnableItemType('REPOSITORY');

  static const PinnableItemType TEAM = PinnableItemType('TEAM');

  static const PinnableItemType USER = PinnableItemType('USER');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is PinnableItemType && o.value == value;
}

class PreciseDateTime {
  const PreciseDateTime(this.value);

  final String value;

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is PreciseDateTime && o.value == value;
}

class ProjectCardArchivedState {
  const ProjectCardArchivedState(this.value);

  final String value;

  static const ProjectCardArchivedState ARCHIVED =
      ProjectCardArchivedState('ARCHIVED');

  static const ProjectCardArchivedState NOT_ARCHIVED =
      ProjectCardArchivedState('NOT_ARCHIVED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is ProjectCardArchivedState && o.value == value;
}

class ProjectCardImport {
  final Map<String, dynamic> input = <String, dynamic>{};

  set number(int value) => input['number'] = value;
  set repository(String value) => input['repository'] = value;
}

class ProjectCardState {
  const ProjectCardState(this.value);

  final String value;

  static const ProjectCardState CONTENT_ONLY = ProjectCardState('CONTENT_ONLY');

  static const ProjectCardState NOTE_ONLY = ProjectCardState('NOTE_ONLY');

  static const ProjectCardState REDACTED = ProjectCardState('REDACTED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is ProjectCardState && o.value == value;
}

class ProjectColumnImport {
  final Map<String, dynamic> input = <String, dynamic>{};

  set columnName(String value) => input['columnName'] = value;
  set issues(List<ProjectCardImport> value) =>
      input['issues'] = value.map((ProjectCardImport e) => e.input).toList();
  set position(int value) => input['position'] = value;
}

class ProjectColumnPurpose {
  const ProjectColumnPurpose(this.value);

  final String value;

  static const ProjectColumnPurpose DONE = ProjectColumnPurpose('DONE');

  static const ProjectColumnPurpose IN_PROGRESS =
      ProjectColumnPurpose('IN_PROGRESS');

  static const ProjectColumnPurpose TODO = ProjectColumnPurpose('TODO');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is ProjectColumnPurpose && o.value == value;
}

class ProjectOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(ProjectOrderField value) => input['field'] = value.value;
}

class ProjectOrderField {
  const ProjectOrderField(this.value);

  final String value;

  static const ProjectOrderField CREATED_AT = ProjectOrderField('CREATED_AT');

  static const ProjectOrderField NAME = ProjectOrderField('NAME');

  static const ProjectOrderField UPDATED_AT = ProjectOrderField('UPDATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is ProjectOrderField && o.value == value;
}

class ProjectState {
  const ProjectState(this.value);

  final String value;

  static const ProjectState CLOSED = ProjectState('CLOSED');

  static const ProjectState OPEN = ProjectState('OPEN');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is ProjectState && o.value == value;
}

class ProjectTemplate {
  const ProjectTemplate(this.value);

  final String value;

  static const ProjectTemplate AUTOMATED_KANBAN_V2 =
      ProjectTemplate('AUTOMATED_KANBAN_V2');

  static const ProjectTemplate AUTOMATED_REVIEWS_KANBAN =
      ProjectTemplate('AUTOMATED_REVIEWS_KANBAN');

  static const ProjectTemplate BASIC_KANBAN = ProjectTemplate('BASIC_KANBAN');

  static const ProjectTemplate BUG_TRIAGE = ProjectTemplate('BUG_TRIAGE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is ProjectTemplate && o.value == value;
}

class PullRequestMergeMethod {
  const PullRequestMergeMethod(this.value);

  final String value;

  static const PullRequestMergeMethod MERGE = PullRequestMergeMethod('MERGE');

  static const PullRequestMergeMethod REBASE = PullRequestMergeMethod('REBASE');

  static const PullRequestMergeMethod SQUASH = PullRequestMergeMethod('SQUASH');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is PullRequestMergeMethod && o.value == value;
}

class PullRequestOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(PullRequestOrderField value) => input['field'] = value.value;
}

class PullRequestOrderField {
  const PullRequestOrderField(this.value);

  final String value;

  static const PullRequestOrderField CREATED_AT =
      PullRequestOrderField('CREATED_AT');

  static const PullRequestOrderField UPDATED_AT =
      PullRequestOrderField('UPDATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is PullRequestOrderField && o.value == value;
}

class PullRequestReviewCommentState {
  const PullRequestReviewCommentState(this.value);

  final String value;

  static const PullRequestReviewCommentState PENDING =
      PullRequestReviewCommentState('PENDING');

  static const PullRequestReviewCommentState SUBMITTED =
      PullRequestReviewCommentState('SUBMITTED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is PullRequestReviewCommentState && o.value == value;
}

class PullRequestReviewDecision {
  const PullRequestReviewDecision(this.value);

  final String value;

  static const PullRequestReviewDecision APPROVED =
      PullRequestReviewDecision('APPROVED');

  static const PullRequestReviewDecision CHANGES_REQUESTED =
      PullRequestReviewDecision('CHANGES_REQUESTED');

  static const PullRequestReviewDecision REVIEW_REQUIRED =
      PullRequestReviewDecision('REVIEW_REQUIRED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is PullRequestReviewDecision && o.value == value;
}

class PullRequestReviewEvent {
  const PullRequestReviewEvent(this.value);

  final String value;

  static const PullRequestReviewEvent APPROVE =
      PullRequestReviewEvent('APPROVE');

  static const PullRequestReviewEvent COMMENT =
      PullRequestReviewEvent('COMMENT');

  static const PullRequestReviewEvent DISMISS =
      PullRequestReviewEvent('DISMISS');

  static const PullRequestReviewEvent REQUEST_CHANGES =
      PullRequestReviewEvent('REQUEST_CHANGES');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is PullRequestReviewEvent && o.value == value;
}

class PullRequestReviewState {
  const PullRequestReviewState(this.value);

  final String value;

  static const PullRequestReviewState APPROVED =
      PullRequestReviewState('APPROVED');

  static const PullRequestReviewState CHANGES_REQUESTED =
      PullRequestReviewState('CHANGES_REQUESTED');

  static const PullRequestReviewState COMMENTED =
      PullRequestReviewState('COMMENTED');

  static const PullRequestReviewState DISMISSED =
      PullRequestReviewState('DISMISSED');

  static const PullRequestReviewState PENDING =
      PullRequestReviewState('PENDING');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is PullRequestReviewState && o.value == value;
}

class PullRequestState {
  const PullRequestState(this.value);

  final String value;

  static const PullRequestState CLOSED = PullRequestState('CLOSED');

  static const PullRequestState MERGED = PullRequestState('MERGED');

  static const PullRequestState OPEN = PullRequestState('OPEN');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is PullRequestState && o.value == value;
}

class PullRequestTimelineItemsItemType {
  const PullRequestTimelineItemsItemType(this.value);

  final String value;

  static const PullRequestTimelineItemsItemType ADDED_TO_PROJECT_EVENT =
      PullRequestTimelineItemsItemType('ADDED_TO_PROJECT_EVENT');

  static const PullRequestTimelineItemsItemType ASSIGNED_EVENT =
      PullRequestTimelineItemsItemType('ASSIGNED_EVENT');

  static const PullRequestTimelineItemsItemType
      AUTOMATIC_BASE_CHANGE_FAILED_EVENT =
      PullRequestTimelineItemsItemType('AUTOMATIC_BASE_CHANGE_FAILED_EVENT');

  static const PullRequestTimelineItemsItemType
      AUTOMATIC_BASE_CHANGE_SUCCEEDED_EVENT =
      PullRequestTimelineItemsItemType('AUTOMATIC_BASE_CHANGE_SUCCEEDED_EVENT');

  static const PullRequestTimelineItemsItemType BASE_REF_CHANGED_EVENT =
      PullRequestTimelineItemsItemType('BASE_REF_CHANGED_EVENT');

  static const PullRequestTimelineItemsItemType BASE_REF_DELETED_EVENT =
      PullRequestTimelineItemsItemType('BASE_REF_DELETED_EVENT');

  static const PullRequestTimelineItemsItemType BASE_REF_FORCE_PUSHED_EVENT =
      PullRequestTimelineItemsItemType('BASE_REF_FORCE_PUSHED_EVENT');

  static const PullRequestTimelineItemsItemType CLOSED_EVENT =
      PullRequestTimelineItemsItemType('CLOSED_EVENT');

  static const PullRequestTimelineItemsItemType COMMENT_DELETED_EVENT =
      PullRequestTimelineItemsItemType('COMMENT_DELETED_EVENT');

  static const PullRequestTimelineItemsItemType CONNECTED_EVENT =
      PullRequestTimelineItemsItemType('CONNECTED_EVENT');

  static const PullRequestTimelineItemsItemType CONVERTED_NOTE_TO_ISSUE_EVENT =
      PullRequestTimelineItemsItemType('CONVERTED_NOTE_TO_ISSUE_EVENT');

  static const PullRequestTimelineItemsItemType CONVERT_TO_DRAFT_EVENT =
      PullRequestTimelineItemsItemType('CONVERT_TO_DRAFT_EVENT');

  static const PullRequestTimelineItemsItemType CROSS_REFERENCED_EVENT =
      PullRequestTimelineItemsItemType('CROSS_REFERENCED_EVENT');

  static const PullRequestTimelineItemsItemType DEMILESTONED_EVENT =
      PullRequestTimelineItemsItemType('DEMILESTONED_EVENT');

  static const PullRequestTimelineItemsItemType DEPLOYED_EVENT =
      PullRequestTimelineItemsItemType('DEPLOYED_EVENT');

  static const PullRequestTimelineItemsItemType
      DEPLOYMENT_ENVIRONMENT_CHANGED_EVENT =
      PullRequestTimelineItemsItemType('DEPLOYMENT_ENVIRONMENT_CHANGED_EVENT');

  static const PullRequestTimelineItemsItemType DISCONNECTED_EVENT =
      PullRequestTimelineItemsItemType('DISCONNECTED_EVENT');

  static const PullRequestTimelineItemsItemType HEAD_REF_DELETED_EVENT =
      PullRequestTimelineItemsItemType('HEAD_REF_DELETED_EVENT');

  static const PullRequestTimelineItemsItemType HEAD_REF_FORCE_PUSHED_EVENT =
      PullRequestTimelineItemsItemType('HEAD_REF_FORCE_PUSHED_EVENT');

  static const PullRequestTimelineItemsItemType HEAD_REF_RESTORED_EVENT =
      PullRequestTimelineItemsItemType('HEAD_REF_RESTORED_EVENT');

  static const PullRequestTimelineItemsItemType ISSUE_COMMENT =
      PullRequestTimelineItemsItemType('ISSUE_COMMENT');

  static const PullRequestTimelineItemsItemType LABELED_EVENT =
      PullRequestTimelineItemsItemType('LABELED_EVENT');

  static const PullRequestTimelineItemsItemType LOCKED_EVENT =
      PullRequestTimelineItemsItemType('LOCKED_EVENT');

  static const PullRequestTimelineItemsItemType MARKED_AS_DUPLICATE_EVENT =
      PullRequestTimelineItemsItemType('MARKED_AS_DUPLICATE_EVENT');

  static const PullRequestTimelineItemsItemType MENTIONED_EVENT =
      PullRequestTimelineItemsItemType('MENTIONED_EVENT');

  static const PullRequestTimelineItemsItemType MERGED_EVENT =
      PullRequestTimelineItemsItemType('MERGED_EVENT');

  static const PullRequestTimelineItemsItemType MILESTONED_EVENT =
      PullRequestTimelineItemsItemType('MILESTONED_EVENT');

  static const PullRequestTimelineItemsItemType MOVED_COLUMNS_IN_PROJECT_EVENT =
      PullRequestTimelineItemsItemType('MOVED_COLUMNS_IN_PROJECT_EVENT');

  static const PullRequestTimelineItemsItemType PINNED_EVENT =
      PullRequestTimelineItemsItemType('PINNED_EVENT');

  static const PullRequestTimelineItemsItemType PULL_REQUEST_COMMIT =
      PullRequestTimelineItemsItemType('PULL_REQUEST_COMMIT');

  static const PullRequestTimelineItemsItemType
      PULL_REQUEST_COMMIT_COMMENT_THREAD =
      PullRequestTimelineItemsItemType('PULL_REQUEST_COMMIT_COMMENT_THREAD');

  static const PullRequestTimelineItemsItemType PULL_REQUEST_REVIEW =
      PullRequestTimelineItemsItemType('PULL_REQUEST_REVIEW');

  static const PullRequestTimelineItemsItemType PULL_REQUEST_REVIEW_THREAD =
      PullRequestTimelineItemsItemType('PULL_REQUEST_REVIEW_THREAD');

  static const PullRequestTimelineItemsItemType PULL_REQUEST_REVISION_MARKER =
      PullRequestTimelineItemsItemType('PULL_REQUEST_REVISION_MARKER');

  static const PullRequestTimelineItemsItemType READY_FOR_REVIEW_EVENT =
      PullRequestTimelineItemsItemType('READY_FOR_REVIEW_EVENT');

  static const PullRequestTimelineItemsItemType REFERENCED_EVENT =
      PullRequestTimelineItemsItemType('REFERENCED_EVENT');

  static const PullRequestTimelineItemsItemType REMOVED_FROM_PROJECT_EVENT =
      PullRequestTimelineItemsItemType('REMOVED_FROM_PROJECT_EVENT');

  static const PullRequestTimelineItemsItemType RENAMED_TITLE_EVENT =
      PullRequestTimelineItemsItemType('RENAMED_TITLE_EVENT');

  static const PullRequestTimelineItemsItemType REOPENED_EVENT =
      PullRequestTimelineItemsItemType('REOPENED_EVENT');

  static const PullRequestTimelineItemsItemType REVIEW_DISMISSED_EVENT =
      PullRequestTimelineItemsItemType('REVIEW_DISMISSED_EVENT');

  static const PullRequestTimelineItemsItemType REVIEW_REQUESTED_EVENT =
      PullRequestTimelineItemsItemType('REVIEW_REQUESTED_EVENT');

  static const PullRequestTimelineItemsItemType REVIEW_REQUEST_REMOVED_EVENT =
      PullRequestTimelineItemsItemType('REVIEW_REQUEST_REMOVED_EVENT');

  static const PullRequestTimelineItemsItemType SUBSCRIBED_EVENT =
      PullRequestTimelineItemsItemType('SUBSCRIBED_EVENT');

  static const PullRequestTimelineItemsItemType TRANSFERRED_EVENT =
      PullRequestTimelineItemsItemType('TRANSFERRED_EVENT');

  static const PullRequestTimelineItemsItemType UNASSIGNED_EVENT =
      PullRequestTimelineItemsItemType('UNASSIGNED_EVENT');

  static const PullRequestTimelineItemsItemType UNLABELED_EVENT =
      PullRequestTimelineItemsItemType('UNLABELED_EVENT');

  static const PullRequestTimelineItemsItemType UNLOCKED_EVENT =
      PullRequestTimelineItemsItemType('UNLOCKED_EVENT');

  static const PullRequestTimelineItemsItemType UNMARKED_AS_DUPLICATE_EVENT =
      PullRequestTimelineItemsItemType('UNMARKED_AS_DUPLICATE_EVENT');

  static const PullRequestTimelineItemsItemType UNPINNED_EVENT =
      PullRequestTimelineItemsItemType('UNPINNED_EVENT');

  static const PullRequestTimelineItemsItemType UNSUBSCRIBED_EVENT =
      PullRequestTimelineItemsItemType('UNSUBSCRIBED_EVENT');

  static const PullRequestTimelineItemsItemType USER_BLOCKED_EVENT =
      PullRequestTimelineItemsItemType('USER_BLOCKED_EVENT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is PullRequestTimelineItemsItemType && o.value == value;
}

class PullRequestUpdateState {
  const PullRequestUpdateState(this.value);

  final String value;

  static const PullRequestUpdateState CLOSED = PullRequestUpdateState('CLOSED');

  static const PullRequestUpdateState OPEN = PullRequestUpdateState('OPEN');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is PullRequestUpdateState && o.value == value;
}

class ReactionContent {
  const ReactionContent(this.value);

  final String value;

  static const ReactionContent CONFUSED = ReactionContent('CONFUSED');

  static const ReactionContent EYES = ReactionContent('EYES');

  static const ReactionContent HEART = ReactionContent('HEART');

  static const ReactionContent HOORAY = ReactionContent('HOORAY');

  static const ReactionContent LAUGH = ReactionContent('LAUGH');

  static const ReactionContent ROCKET = ReactionContent('ROCKET');

  static const ReactionContent THUMBS_DOWN = ReactionContent('THUMBS_DOWN');

  static const ReactionContent THUMBS_UP = ReactionContent('THUMBS_UP');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is ReactionContent && o.value == value;
}

class ReactionOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(ReactionOrderField value) => input['field'] = value.value;
}

class ReactionOrderField {
  const ReactionOrderField(this.value);

  final String value;

  static const ReactionOrderField CREATED_AT = ReactionOrderField('CREATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is ReactionOrderField && o.value == value;
}

class RefOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(RefOrderField value) => input['field'] = value.value;
}

class RefOrderField {
  const RefOrderField(this.value);

  final String value;

  static const RefOrderField ALPHABETICAL = RefOrderField('ALPHABETICAL');

  static const RefOrderField TAG_COMMIT_DATE = RefOrderField('TAG_COMMIT_DATE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is RefOrderField && o.value == value;
}

class RefUpdate {
  final Map<String, dynamic> input = <String, dynamic>{};

  set afterOid(GitObjectID value) => input['afterOid'] = value.value;
  set beforeOid(GitObjectID value) => input['beforeOid'] = value.value;
  set force(bool value) => input['force'] = value;
  set name(GitRefname value) => input['name'] = value.value;
}

class RegenerateEnterpriseIdentityProviderRecoveryCodesInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
}

class ReleaseOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(ReleaseOrderField value) => input['field'] = value.value;
}

class ReleaseOrderField {
  const ReleaseOrderField(this.value);

  final String value;

  static const ReleaseOrderField CREATED_AT = ReleaseOrderField('CREATED_AT');

  static const ReleaseOrderField NAME = ReleaseOrderField('NAME');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is ReleaseOrderField && o.value == value;
}

class RemoveAssigneesFromAssignableInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set assignableId(String value) => input['assignableId'] = value;
  set assigneeIds(List<String> value) => input['assigneeIds'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
}

class RemoveEnterpriseAdminInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set login(String value) => input['login'] = value;
}

class RemoveEnterpriseIdentityProviderInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
}

class RemoveEnterpriseOrganizationInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set organizationId(String value) => input['organizationId'] = value;
}

class RemoveLabelsFromLabelableInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set labelIds(List<String> value) => input['labelIds'] = value;
  set labelableId(String value) => input['labelableId'] = value;
}

class RemoveOutsideCollaboratorInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set organizationId(String value) => input['organizationId'] = value;
  set userId(String value) => input['userId'] = value;
}

class RemoveReactionInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set content(ReactionContent value) => input['content'] = value.value;
  set subjectId(String value) => input['subjectId'] = value;
}

class RemoveStarInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set starrableId(String value) => input['starrableId'] = value;
}

class ReopenIssueInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set issueId(String value) => input['issueId'] = value;
}

class ReopenPullRequestInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set pullRequestId(String value) => input['pullRequestId'] = value;
}

class RepoAccessAuditEntryVisibility {
  const RepoAccessAuditEntryVisibility(this.value);

  final String value;

  static const RepoAccessAuditEntryVisibility INTERNAL =
      RepoAccessAuditEntryVisibility('INTERNAL');

  static const RepoAccessAuditEntryVisibility PRIVATE =
      RepoAccessAuditEntryVisibility('PRIVATE');

  static const RepoAccessAuditEntryVisibility PUBLIC =
      RepoAccessAuditEntryVisibility('PUBLIC');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is RepoAccessAuditEntryVisibility && o.value == value;
}

class RepoAddMemberAuditEntryVisibility {
  const RepoAddMemberAuditEntryVisibility(this.value);

  final String value;

  static const RepoAddMemberAuditEntryVisibility INTERNAL =
      RepoAddMemberAuditEntryVisibility('INTERNAL');

  static const RepoAddMemberAuditEntryVisibility PRIVATE =
      RepoAddMemberAuditEntryVisibility('PRIVATE');

  static const RepoAddMemberAuditEntryVisibility PUBLIC =
      RepoAddMemberAuditEntryVisibility('PUBLIC');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is RepoAddMemberAuditEntryVisibility && o.value == value;
}

class RepoArchivedAuditEntryVisibility {
  const RepoArchivedAuditEntryVisibility(this.value);

  final String value;

  static const RepoArchivedAuditEntryVisibility INTERNAL =
      RepoArchivedAuditEntryVisibility('INTERNAL');

  static const RepoArchivedAuditEntryVisibility PRIVATE =
      RepoArchivedAuditEntryVisibility('PRIVATE');

  static const RepoArchivedAuditEntryVisibility PUBLIC =
      RepoArchivedAuditEntryVisibility('PUBLIC');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is RepoArchivedAuditEntryVisibility && o.value == value;
}

class RepoChangeMergeSettingAuditEntryMergeType {
  const RepoChangeMergeSettingAuditEntryMergeType(this.value);

  final String value;

  static const RepoChangeMergeSettingAuditEntryMergeType MERGE =
      RepoChangeMergeSettingAuditEntryMergeType('MERGE');

  static const RepoChangeMergeSettingAuditEntryMergeType REBASE =
      RepoChangeMergeSettingAuditEntryMergeType('REBASE');

  static const RepoChangeMergeSettingAuditEntryMergeType SQUASH =
      RepoChangeMergeSettingAuditEntryMergeType('SQUASH');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is RepoChangeMergeSettingAuditEntryMergeType && o.value == value;
}

class RepoCreateAuditEntryVisibility {
  const RepoCreateAuditEntryVisibility(this.value);

  final String value;

  static const RepoCreateAuditEntryVisibility INTERNAL =
      RepoCreateAuditEntryVisibility('INTERNAL');

  static const RepoCreateAuditEntryVisibility PRIVATE =
      RepoCreateAuditEntryVisibility('PRIVATE');

  static const RepoCreateAuditEntryVisibility PUBLIC =
      RepoCreateAuditEntryVisibility('PUBLIC');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is RepoCreateAuditEntryVisibility && o.value == value;
}

class RepoDestroyAuditEntryVisibility {
  const RepoDestroyAuditEntryVisibility(this.value);

  final String value;

  static const RepoDestroyAuditEntryVisibility INTERNAL =
      RepoDestroyAuditEntryVisibility('INTERNAL');

  static const RepoDestroyAuditEntryVisibility PRIVATE =
      RepoDestroyAuditEntryVisibility('PRIVATE');

  static const RepoDestroyAuditEntryVisibility PUBLIC =
      RepoDestroyAuditEntryVisibility('PUBLIC');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is RepoDestroyAuditEntryVisibility && o.value == value;
}

class RepoRemoveMemberAuditEntryVisibility {
  const RepoRemoveMemberAuditEntryVisibility(this.value);

  final String value;

  static const RepoRemoveMemberAuditEntryVisibility INTERNAL =
      RepoRemoveMemberAuditEntryVisibility('INTERNAL');

  static const RepoRemoveMemberAuditEntryVisibility PRIVATE =
      RepoRemoveMemberAuditEntryVisibility('PRIVATE');

  static const RepoRemoveMemberAuditEntryVisibility PUBLIC =
      RepoRemoveMemberAuditEntryVisibility('PUBLIC');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is RepoRemoveMemberAuditEntryVisibility && o.value == value;
}

class ReportedContentClassifiers {
  const ReportedContentClassifiers(this.value);

  final String value;

  static const ReportedContentClassifiers ABUSE =
      ReportedContentClassifiers('ABUSE');

  static const ReportedContentClassifiers DUPLICATE =
      ReportedContentClassifiers('DUPLICATE');

  static const ReportedContentClassifiers OFF_TOPIC =
      ReportedContentClassifiers('OFF_TOPIC');

  static const ReportedContentClassifiers OUTDATED =
      ReportedContentClassifiers('OUTDATED');

  static const ReportedContentClassifiers RESOLVED =
      ReportedContentClassifiers('RESOLVED');

  static const ReportedContentClassifiers SPAM =
      ReportedContentClassifiers('SPAM');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is ReportedContentClassifiers && o.value == value;
}

class RepositoryAffiliation {
  const RepositoryAffiliation(this.value);

  final String value;

  static const RepositoryAffiliation COLLABORATOR =
      RepositoryAffiliation('COLLABORATOR');

  static const RepositoryAffiliation ORGANIZATION_MEMBER =
      RepositoryAffiliation('ORGANIZATION_MEMBER');

  static const RepositoryAffiliation OWNER = RepositoryAffiliation('OWNER');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is RepositoryAffiliation && o.value == value;
}

class RepositoryContributionType {
  const RepositoryContributionType(this.value);

  final String value;

  static const RepositoryContributionType COMMIT =
      RepositoryContributionType('COMMIT');

  static const RepositoryContributionType ISSUE =
      RepositoryContributionType('ISSUE');

  static const RepositoryContributionType PULL_REQUEST =
      RepositoryContributionType('PULL_REQUEST');

  static const RepositoryContributionType PULL_REQUEST_REVIEW =
      RepositoryContributionType('PULL_REQUEST_REVIEW');

  static const RepositoryContributionType REPOSITORY =
      RepositoryContributionType('REPOSITORY');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is RepositoryContributionType && o.value == value;
}

class RepositoryInvitationOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(RepositoryInvitationOrderField value) =>
      input['field'] = value.value;
}

class RepositoryInvitationOrderField {
  const RepositoryInvitationOrderField(this.value);

  final String value;

  static const RepositoryInvitationOrderField CREATED_AT =
      RepositoryInvitationOrderField('CREATED_AT');

  static const RepositoryInvitationOrderField INVITEE_LOGIN =
      RepositoryInvitationOrderField('INVITEE_LOGIN');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is RepositoryInvitationOrderField && o.value == value;
}

class RepositoryLockReason {
  const RepositoryLockReason(this.value);

  final String value;

  static const RepositoryLockReason BILLING = RepositoryLockReason('BILLING');

  static const RepositoryLockReason MIGRATING =
      RepositoryLockReason('MIGRATING');

  static const RepositoryLockReason MOVING = RepositoryLockReason('MOVING');

  static const RepositoryLockReason RENAME = RepositoryLockReason('RENAME');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is RepositoryLockReason && o.value == value;
}

class RepositoryOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(RepositoryOrderField value) => input['field'] = value.value;
}

class RepositoryOrderField {
  const RepositoryOrderField(this.value);

  final String value;

  static const RepositoryOrderField CREATED_AT =
      RepositoryOrderField('CREATED_AT');

  static const RepositoryOrderField NAME = RepositoryOrderField('NAME');

  static const RepositoryOrderField PUSHED_AT =
      RepositoryOrderField('PUSHED_AT');

  static const RepositoryOrderField STARGAZERS =
      RepositoryOrderField('STARGAZERS');

  static const RepositoryOrderField UPDATED_AT =
      RepositoryOrderField('UPDATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is RepositoryOrderField && o.value == value;
}

class RepositoryPermission {
  const RepositoryPermission(this.value);

  final String value;

  static const RepositoryPermission ADMIN = RepositoryPermission('ADMIN');

  static const RepositoryPermission MAINTAIN = RepositoryPermission('MAINTAIN');

  static const RepositoryPermission READ = RepositoryPermission('READ');

  static const RepositoryPermission TRIAGE = RepositoryPermission('TRIAGE');

  static const RepositoryPermission WRITE = RepositoryPermission('WRITE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is RepositoryPermission && o.value == value;
}

class RepositoryPrivacy {
  const RepositoryPrivacy(this.value);

  final String value;

  static const RepositoryPrivacy PRIVATE = RepositoryPrivacy('PRIVATE');

  static const RepositoryPrivacy PUBLIC = RepositoryPrivacy('PUBLIC');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is RepositoryPrivacy && o.value == value;
}

class RepositoryVisibility {
  const RepositoryVisibility(this.value);

  final String value;

  static const RepositoryVisibility INTERNAL = RepositoryVisibility('INTERNAL');

  static const RepositoryVisibility PRIVATE = RepositoryVisibility('PRIVATE');

  static const RepositoryVisibility PUBLIC = RepositoryVisibility('PUBLIC');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is RepositoryVisibility && o.value == value;
}

class RequestReviewsInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set pullRequestId(String value) => input['pullRequestId'] = value;
  set teamIds(List<String> value) => input['teamIds'] = value;
  set union(bool value) => input['union'] = value;
  set userIds(List<String> value) => input['userIds'] = value;
}

class RequestableCheckStatusState {
  const RequestableCheckStatusState(this.value);

  final String value;

  static const RequestableCheckStatusState COMPLETED =
      RequestableCheckStatusState('COMPLETED');

  static const RequestableCheckStatusState IN_PROGRESS =
      RequestableCheckStatusState('IN_PROGRESS');

  static const RequestableCheckStatusState QUEUED =
      RequestableCheckStatusState('QUEUED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is RequestableCheckStatusState && o.value == value;
}

class RerequestCheckSuiteInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set checkSuiteId(String value) => input['checkSuiteId'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
}

class ResolveReviewThreadInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set threadId(String value) => input['threadId'] = value;
}

class SamlDigestAlgorithm {
  const SamlDigestAlgorithm(this.value);

  final String value;

  static const SamlDigestAlgorithm SHA1 = SamlDigestAlgorithm('SHA1');

  static const SamlDigestAlgorithm SHA256 = SamlDigestAlgorithm('SHA256');

  static const SamlDigestAlgorithm SHA384 = SamlDigestAlgorithm('SHA384');

  static const SamlDigestAlgorithm SHA512 = SamlDigestAlgorithm('SHA512');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is SamlDigestAlgorithm && o.value == value;
}

class SamlSignatureAlgorithm {
  const SamlSignatureAlgorithm(this.value);

  final String value;

  static const SamlSignatureAlgorithm RSA_SHA1 =
      SamlSignatureAlgorithm('RSA_SHA1');

  static const SamlSignatureAlgorithm RSA_SHA256 =
      SamlSignatureAlgorithm('RSA_SHA256');

  static const SamlSignatureAlgorithm RSA_SHA384 =
      SamlSignatureAlgorithm('RSA_SHA384');

  static const SamlSignatureAlgorithm RSA_SHA512 =
      SamlSignatureAlgorithm('RSA_SHA512');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is SamlSignatureAlgorithm && o.value == value;
}

class SavedReplyOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(SavedReplyOrderField value) => input['field'] = value.value;
}

class SavedReplyOrderField {
  const SavedReplyOrderField(this.value);

  final String value;

  static const SavedReplyOrderField UPDATED_AT =
      SavedReplyOrderField('UPDATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is SavedReplyOrderField && o.value == value;
}

class SearchType {
  const SearchType(this.value);

  final String value;

  static const SearchType ISSUE = SearchType('ISSUE');

  static const SearchType REPOSITORY = SearchType('REPOSITORY');

  static const SearchType USER = SearchType('USER');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is SearchType && o.value == value;
}

class SecurityAdvisoryEcosystem {
  const SecurityAdvisoryEcosystem(this.value);

  final String value;

  static const SecurityAdvisoryEcosystem COMPOSER =
      SecurityAdvisoryEcosystem('COMPOSER');

  static const SecurityAdvisoryEcosystem MAVEN =
      SecurityAdvisoryEcosystem('MAVEN');

  static const SecurityAdvisoryEcosystem NPM = SecurityAdvisoryEcosystem('NPM');

  static const SecurityAdvisoryEcosystem NUGET =
      SecurityAdvisoryEcosystem('NUGET');

  static const SecurityAdvisoryEcosystem PIP = SecurityAdvisoryEcosystem('PIP');

  static const SecurityAdvisoryEcosystem RUBYGEMS =
      SecurityAdvisoryEcosystem('RUBYGEMS');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is SecurityAdvisoryEcosystem && o.value == value;
}

class SecurityAdvisoryIdentifierFilter {
  final Map<String, dynamic> input = <String, dynamic>{};

  set type(SecurityAdvisoryIdentifierType value) => input['type'] = value.value;
  set value(String value) => input['value'] = value;
}

class SecurityAdvisoryIdentifierType {
  const SecurityAdvisoryIdentifierType(this.value);

  final String value;

  static const SecurityAdvisoryIdentifierType CVE =
      SecurityAdvisoryIdentifierType('CVE');

  static const SecurityAdvisoryIdentifierType GHSA =
      SecurityAdvisoryIdentifierType('GHSA');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is SecurityAdvisoryIdentifierType && o.value == value;
}

class SecurityAdvisoryOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(SecurityAdvisoryOrderField value) => input['field'] = value.value;
}

class SecurityAdvisoryOrderField {
  const SecurityAdvisoryOrderField(this.value);

  final String value;

  static const SecurityAdvisoryOrderField PUBLISHED_AT =
      SecurityAdvisoryOrderField('PUBLISHED_AT');

  static const SecurityAdvisoryOrderField UPDATED_AT =
      SecurityAdvisoryOrderField('UPDATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is SecurityAdvisoryOrderField && o.value == value;
}

class SecurityAdvisorySeverity {
  const SecurityAdvisorySeverity(this.value);

  final String value;

  static const SecurityAdvisorySeverity CRITICAL =
      SecurityAdvisorySeverity('CRITICAL');

  static const SecurityAdvisorySeverity HIGH = SecurityAdvisorySeverity('HIGH');

  static const SecurityAdvisorySeverity LOW = SecurityAdvisorySeverity('LOW');

  static const SecurityAdvisorySeverity MODERATE =
      SecurityAdvisorySeverity('MODERATE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is SecurityAdvisorySeverity && o.value == value;
}

class SecurityVulnerabilityOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(SecurityVulnerabilityOrderField value) =>
      input['field'] = value.value;
}

class SecurityVulnerabilityOrderField {
  const SecurityVulnerabilityOrderField(this.value);

  final String value;

  static const SecurityVulnerabilityOrderField UPDATED_AT =
      SecurityVulnerabilityOrderField('UPDATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is SecurityVulnerabilityOrderField && o.value == value;
}

class SetEnterpriseIdentityProviderInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set digestMethod(SamlDigestAlgorithm value) =>
      input['digestMethod'] = value.value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set idpCertificate(String value) => input['idpCertificate'] = value;
  set issuer(String value) => input['issuer'] = value;
  set signatureMethod(SamlSignatureAlgorithm value) =>
      input['signatureMethod'] = value.value;
  set ssoUrl(URI value) => input['ssoUrl'] = value.value;
}

class SponsorsTierOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(SponsorsTierOrderField value) => input['field'] = value.value;
}

class SponsorsTierOrderField {
  const SponsorsTierOrderField(this.value);

  final String value;

  static const SponsorsTierOrderField CREATED_AT =
      SponsorsTierOrderField('CREATED_AT');

  static const SponsorsTierOrderField MONTHLY_PRICE_IN_CENTS =
      SponsorsTierOrderField('MONTHLY_PRICE_IN_CENTS');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is SponsorsTierOrderField && o.value == value;
}

class SponsorshipOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(SponsorshipOrderField value) => input['field'] = value.value;
}

class SponsorshipOrderField {
  const SponsorshipOrderField(this.value);

  final String value;

  static const SponsorshipOrderField CREATED_AT =
      SponsorshipOrderField('CREATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is SponsorshipOrderField && o.value == value;
}

class SponsorshipPrivacy {
  const SponsorshipPrivacy(this.value);

  final String value;

  static const SponsorshipPrivacy PRIVATE = SponsorshipPrivacy('PRIVATE');

  static const SponsorshipPrivacy PUBLIC = SponsorshipPrivacy('PUBLIC');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is SponsorshipPrivacy && o.value == value;
}

class StarOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(StarOrderField value) => input['field'] = value.value;
}

class StarOrderField {
  const StarOrderField(this.value);

  final String value;

  static const StarOrderField STARRED_AT = StarOrderField('STARRED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is StarOrderField && o.value == value;
}

class StatusState {
  const StatusState(this.value);

  final String value;

  static const StatusState ERROR = StatusState('ERROR');

  static const StatusState EXPECTED = StatusState('EXPECTED');

  static const StatusState FAILURE = StatusState('FAILURE');

  static const StatusState PENDING = StatusState('PENDING');

  static const StatusState SUCCESS = StatusState('SUCCESS');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is StatusState && o.value == value;
}

class SubmitPullRequestReviewInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set event(PullRequestReviewEvent value) => input['event'] = value.value;
  set pullRequestId(String value) => input['pullRequestId'] = value;
  set pullRequestReviewId(String value) => input['pullRequestReviewId'] = value;
}

class SubscriptionState {
  const SubscriptionState(this.value);

  final String value;

  static const SubscriptionState IGNORED = SubscriptionState('IGNORED');

  static const SubscriptionState SUBSCRIBED = SubscriptionState('SUBSCRIBED');

  static const SubscriptionState UNSUBSCRIBED =
      SubscriptionState('UNSUBSCRIBED');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is SubscriptionState && o.value == value;
}

class TeamDiscussionCommentOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(TeamDiscussionCommentOrderField value) =>
      input['field'] = value.value;
}

class TeamDiscussionCommentOrderField {
  const TeamDiscussionCommentOrderField(this.value);

  final String value;

  static const TeamDiscussionCommentOrderField NUMBER =
      TeamDiscussionCommentOrderField('NUMBER');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is TeamDiscussionCommentOrderField && o.value == value;
}

class TeamDiscussionOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(TeamDiscussionOrderField value) => input['field'] = value.value;
}

class TeamDiscussionOrderField {
  const TeamDiscussionOrderField(this.value);

  final String value;

  static const TeamDiscussionOrderField CREATED_AT =
      TeamDiscussionOrderField('CREATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is TeamDiscussionOrderField && o.value == value;
}

class TeamMemberOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(TeamMemberOrderField value) => input['field'] = value.value;
}

class TeamMemberOrderField {
  const TeamMemberOrderField(this.value);

  final String value;

  static const TeamMemberOrderField CREATED_AT =
      TeamMemberOrderField('CREATED_AT');

  static const TeamMemberOrderField LOGIN = TeamMemberOrderField('LOGIN');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is TeamMemberOrderField && o.value == value;
}

class TeamMemberRole {
  const TeamMemberRole(this.value);

  final String value;

  static const TeamMemberRole MAINTAINER = TeamMemberRole('MAINTAINER');

  static const TeamMemberRole MEMBER = TeamMemberRole('MEMBER');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is TeamMemberRole && o.value == value;
}

class TeamMembershipType {
  const TeamMembershipType(this.value);

  final String value;

  static const TeamMembershipType ALL = TeamMembershipType('ALL');

  static const TeamMembershipType CHILD_TEAM = TeamMembershipType('CHILD_TEAM');

  static const TeamMembershipType IMMEDIATE = TeamMembershipType('IMMEDIATE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is TeamMembershipType && o.value == value;
}

class TeamOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(TeamOrderField value) => input['field'] = value.value;
}

class TeamOrderField {
  const TeamOrderField(this.value);

  final String value;

  static const TeamOrderField NAME = TeamOrderField('NAME');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is TeamOrderField && o.value == value;
}

class TeamPrivacy {
  const TeamPrivacy(this.value);

  final String value;

  static const TeamPrivacy SECRET = TeamPrivacy('SECRET');

  static const TeamPrivacy VISIBLE = TeamPrivacy('VISIBLE');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is TeamPrivacy && o.value == value;
}

class TeamRepositoryOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(TeamRepositoryOrderField value) => input['field'] = value.value;
}

class TeamRepositoryOrderField {
  const TeamRepositoryOrderField(this.value);

  final String value;

  static const TeamRepositoryOrderField CREATED_AT =
      TeamRepositoryOrderField('CREATED_AT');

  static const TeamRepositoryOrderField NAME = TeamRepositoryOrderField('NAME');

  static const TeamRepositoryOrderField PERMISSION =
      TeamRepositoryOrderField('PERMISSION');

  static const TeamRepositoryOrderField PUSHED_AT =
      TeamRepositoryOrderField('PUSHED_AT');

  static const TeamRepositoryOrderField STARGAZERS =
      TeamRepositoryOrderField('STARGAZERS');

  static const TeamRepositoryOrderField UPDATED_AT =
      TeamRepositoryOrderField('UPDATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is TeamRepositoryOrderField && o.value == value;
}

class TeamReviewAssignmentAlgorithm {
  const TeamReviewAssignmentAlgorithm(this.value);

  final String value;

  static const TeamReviewAssignmentAlgorithm LOAD_BALANCE =
      TeamReviewAssignmentAlgorithm('LOAD_BALANCE');

  static const TeamReviewAssignmentAlgorithm ROUND_ROBIN =
      TeamReviewAssignmentAlgorithm('ROUND_ROBIN');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is TeamReviewAssignmentAlgorithm && o.value == value;
}

class TeamRole {
  const TeamRole(this.value);

  final String value;

  static const TeamRole ADMIN = TeamRole('ADMIN');

  static const TeamRole MEMBER = TeamRole('MEMBER');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is TeamRole && o.value == value;
}

class TopicSuggestionDeclineReason {
  const TopicSuggestionDeclineReason(this.value);

  final String value;

  static const TopicSuggestionDeclineReason NOT_RELEVANT =
      TopicSuggestionDeclineReason('NOT_RELEVANT');

  static const TopicSuggestionDeclineReason PERSONAL_PREFERENCE =
      TopicSuggestionDeclineReason('PERSONAL_PREFERENCE');

  static const TopicSuggestionDeclineReason TOO_GENERAL =
      TopicSuggestionDeclineReason('TOO_GENERAL');

  static const TopicSuggestionDeclineReason TOO_SPECIFIC =
      TopicSuggestionDeclineReason('TOO_SPECIFIC');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      o is TopicSuggestionDeclineReason && o.value == value;
}

class TransferIssueInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set issueId(String value) => input['issueId'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
}

class URI {
  const URI(this.value);

  final String value;

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is URI && o.value == value;
}

class UnarchiveRepositoryInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
}

class UnfollowUserInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set userId(String value) => input['userId'] = value;
}

class UnlinkRepositoryFromProjectInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set projectId(String value) => input['projectId'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
}

class UnlockLockableInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set lockableId(String value) => input['lockableId'] = value;
}

class UnmarkFileAsViewedInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set path(String value) => input['path'] = value;
  set pullRequestId(String value) => input['pullRequestId'] = value;
}

class UnmarkIssueAsDuplicateInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set canonicalId(String value) => input['canonicalId'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set duplicateId(String value) => input['duplicateId'] = value;
}

class UnminimizeCommentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set subjectId(String value) => input['subjectId'] = value;
}

class UnpinIssueInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set issueId(String value) => input['issueId'] = value;
}

class UnresolveReviewThreadInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set threadId(String value) => input['threadId'] = value;
}

class UpdateBranchProtectionRuleInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set branchProtectionRuleId(String value) =>
      input['branchProtectionRuleId'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set dismissesStaleReviews(bool value) =>
      input['dismissesStaleReviews'] = value;
  set isAdminEnforced(bool value) => input['isAdminEnforced'] = value;
  set pattern(String value) => input['pattern'] = value;
  set pushActorIds(List<String> value) => input['pushActorIds'] = value;
  set requiredApprovingReviewCount(int value) =>
      input['requiredApprovingReviewCount'] = value;
  set requiredStatusCheckContexts(List<String> value) =>
      input['requiredStatusCheckContexts'] = value;
  set requiresApprovingReviews(bool value) =>
      input['requiresApprovingReviews'] = value;
  set requiresCodeOwnerReviews(bool value) =>
      input['requiresCodeOwnerReviews'] = value;
  set requiresCommitSignatures(bool value) =>
      input['requiresCommitSignatures'] = value;
  set requiresStatusChecks(bool value) => input['requiresStatusChecks'] = value;
  set requiresStrictStatusChecks(bool value) =>
      input['requiresStrictStatusChecks'] = value;
  set restrictsPushes(bool value) => input['restrictsPushes'] = value;
  set restrictsReviewDismissals(bool value) =>
      input['restrictsReviewDismissals'] = value;
  set reviewDismissalActorIds(List<String> value) =>
      input['reviewDismissalActorIds'] = value;
}

class UpdateCheckRunInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set actions(List<CheckRunAction> value) =>
      input['actions'] = value.map((CheckRunAction e) => e.input).toList();
  set checkRunId(String value) => input['checkRunId'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set completedAt(DateTime value) => input['completedAt'] = value.value;
  set conclusion(CheckConclusionState value) =>
      input['conclusion'] = value.value;
  set detailsUrl(URI value) => input['detailsUrl'] = value.value;
  set externalId(String value) => input['externalId'] = value;
  set name(String value) => input['name'] = value;
  set output(CheckRunOutput value) => input['output'] = value.input;
  set repositoryId(String value) => input['repositoryId'] = value;
  set startedAt(DateTime value) => input['startedAt'] = value.value;
  set status(RequestableCheckStatusState value) =>
      input['status'] = value.value;
}

class UpdateCheckSuitePreferencesInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set autoTriggerPreferences(List<CheckSuiteAutoTriggerPreference> value) =>
      input['autoTriggerPreferences'] =
          value.map((CheckSuiteAutoTriggerPreference e) => e.input).toList();
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
}

class UpdateEnterpriseActionExecutionCapabilitySettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set capability(ActionExecutionCapabilitySetting value) =>
      input['capability'] = value.value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
}

class UpdateEnterpriseAdministratorRoleInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set login(String value) => input['login'] = value;
  set role(EnterpriseAdministratorRole value) => input['role'] = value.value;
}

class UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set settingValue(EnterpriseEnabledDisabledSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateEnterpriseDefaultRepositoryPermissionSettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set settingValue(EnterpriseDefaultRepositoryPermissionSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set settingValue(EnterpriseEnabledDisabledSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateEnterpriseMembersCanCreateRepositoriesSettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set membersCanCreateInternalRepositories(bool value) =>
      input['membersCanCreateInternalRepositories'] = value;
  set membersCanCreatePrivateRepositories(bool value) =>
      input['membersCanCreatePrivateRepositories'] = value;
  set membersCanCreatePublicRepositories(bool value) =>
      input['membersCanCreatePublicRepositories'] = value;
  set membersCanCreateRepositoriesPolicyEnabled(bool value) =>
      input['membersCanCreateRepositoriesPolicyEnabled'] = value;
  set settingValue(EnterpriseMembersCanCreateRepositoriesSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateEnterpriseMembersCanDeleteIssuesSettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set settingValue(EnterpriseEnabledDisabledSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateEnterpriseMembersCanDeleteRepositoriesSettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set settingValue(EnterpriseEnabledDisabledSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateEnterpriseMembersCanInviteCollaboratorsSettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set settingValue(EnterpriseEnabledDisabledSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateEnterpriseMembersCanMakePurchasesSettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set settingValue(EnterpriseMembersCanMakePurchasesSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateEnterpriseMembersCanUpdateProtectedBranchesSettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set settingValue(EnterpriseEnabledDisabledSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateEnterpriseMembersCanViewDependencyInsightsSettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set settingValue(EnterpriseEnabledDisabledSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateEnterpriseOrganizationProjectsSettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set settingValue(EnterpriseEnabledDisabledSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateEnterpriseProfileInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set description(String value) => input['description'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set location(String value) => input['location'] = value;
  set name(String value) => input['name'] = value;
  set websiteUrl(String value) => input['websiteUrl'] = value;
}

class UpdateEnterpriseRepositoryProjectsSettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set settingValue(EnterpriseEnabledDisabledSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateEnterpriseTeamDiscussionsSettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set settingValue(EnterpriseEnabledDisabledSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enterpriseId(String value) => input['enterpriseId'] = value;
  set settingValue(EnterpriseEnabledSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateIpAllowListEnabledSettingInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set ownerId(String value) => input['ownerId'] = value;
  set settingValue(IpAllowListEnabledSettingValue value) =>
      input['settingValue'] = value.value;
}

class UpdateIpAllowListEntryInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set allowListValue(String value) => input['allowListValue'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set ipAllowListEntryId(String value) => input['ipAllowListEntryId'] = value;
  set isActive(bool value) => input['isActive'] = value;
  set name(String value) => input['name'] = value;
}

class UpdateIssueCommentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set id(String value) => input['id'] = value;
}

class UpdateIssueInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set assigneeIds(List<String> value) => input['assigneeIds'] = value;
  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set id(String value) => input['id'] = value;
  set labelIds(List<String> value) => input['labelIds'] = value;
  set milestoneId(String value) => input['milestoneId'] = value;
  set projectIds(List<String> value) => input['projectIds'] = value;
  set state(IssueState value) => input['state'] = value.value;
  set title(String value) => input['title'] = value;
}

class UpdateLabelInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set color(String value) => input['color'] = value;
  set description(String value) => input['description'] = value;
  set id(String value) => input['id'] = value;
  set name(String value) => input['name'] = value;
}

class UpdateProjectCardInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set isArchived(bool value) => input['isArchived'] = value;
  set note(String value) => input['note'] = value;
  set projectCardId(String value) => input['projectCardId'] = value;
}

class UpdateProjectColumnInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set name(String value) => input['name'] = value;
  set projectColumnId(String value) => input['projectColumnId'] = value;
}

class UpdateProjectInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set name(String value) => input['name'] = value;
  set projectId(String value) => input['projectId'] = value;
  set public(bool value) => input['public'] = value;
  set state(ProjectState value) => input['state'] = value.value;
}

class UpdatePullRequestInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set assigneeIds(List<String> value) => input['assigneeIds'] = value;
  set baseRefName(String value) => input['baseRefName'] = value;
  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set labelIds(List<String> value) => input['labelIds'] = value;
  set maintainerCanModify(bool value) => input['maintainerCanModify'] = value;
  set milestoneId(String value) => input['milestoneId'] = value;
  set projectIds(List<String> value) => input['projectIds'] = value;
  set pullRequestId(String value) => input['pullRequestId'] = value;
  set state(PullRequestUpdateState value) => input['state'] = value.value;
  set title(String value) => input['title'] = value;
}

class UpdatePullRequestReviewCommentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set pullRequestReviewCommentId(String value) =>
      input['pullRequestReviewCommentId'] = value;
}

class UpdatePullRequestReviewInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set pullRequestReviewId(String value) => input['pullRequestReviewId'] = value;
}

class UpdateRefInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set force(bool value) => input['force'] = value;
  set oid(GitObjectID value) => input['oid'] = value.value;
  set refId(String value) => input['refId'] = value;
}

class UpdateRefsInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set refUpdates(List<RefUpdate> value) =>
      input['refUpdates'] = value.map((RefUpdate e) => e.input).toList();
  set repositoryId(String value) => input['repositoryId'] = value;
}

class UpdateRepositoryInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set description(String value) => input['description'] = value;
  set hasIssuesEnabled(bool value) => input['hasIssuesEnabled'] = value;
  set hasProjectsEnabled(bool value) => input['hasProjectsEnabled'] = value;
  set hasWikiEnabled(bool value) => input['hasWikiEnabled'] = value;
  set homepageUrl(URI value) => input['homepageUrl'] = value.value;
  set name(String value) => input['name'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
  set template(bool value) => input['template'] = value;
}

class UpdateSubscriptionInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set state(SubscriptionState value) => input['state'] = value.value;
  set subscribableId(String value) => input['subscribableId'] = value;
}

class UpdateTeamDiscussionCommentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set bodyVersion(String value) => input['bodyVersion'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set id(String value) => input['id'] = value;
}

class UpdateTeamDiscussionInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set body(String value) => input['body'] = value;
  set bodyVersion(String value) => input['bodyVersion'] = value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set id(String value) => input['id'] = value;
  set pinned(bool value) => input['pinned'] = value;
  set title(String value) => input['title'] = value;
}

class UpdateTeamReviewAssignmentInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set algorithm(TeamReviewAssignmentAlgorithm value) =>
      input['algorithm'] = value.value;
  set clientMutationId(String value) => input['clientMutationId'] = value;
  set enabled(bool value) => input['enabled'] = value;
  set excludedTeamMemberIds(List<String> value) =>
      input['excludedTeamMemberIds'] = value;
  set id(String value) => input['id'] = value;
  set notifyTeam(bool value) => input['notifyTeam'] = value;
  set teamMemberCount(int value) => input['teamMemberCount'] = value;
}

class UpdateTopicsInput {
  final Map<String, dynamic> input = <String, dynamic>{};

  set clientMutationId(String value) => input['clientMutationId'] = value;
  set repositoryId(String value) => input['repositoryId'] = value;
  set topicNames(List<String> value) => input['topicNames'] = value;
}

class UserBlockDuration {
  const UserBlockDuration(this.value);

  final String value;

  static const UserBlockDuration ONE_DAY = UserBlockDuration('ONE_DAY');

  static const UserBlockDuration ONE_MONTH = UserBlockDuration('ONE_MONTH');

  static const UserBlockDuration ONE_WEEK = UserBlockDuration('ONE_WEEK');

  static const UserBlockDuration PERMANENT = UserBlockDuration('PERMANENT');

  static const UserBlockDuration THREE_DAYS = UserBlockDuration('THREE_DAYS');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is UserBlockDuration && o.value == value;
}

class UserStatusOrder {
  final Map<String, dynamic> input = <String, dynamic>{};

  set direction(OrderDirection value) => input['direction'] = value.value;
  set field(UserStatusOrderField value) => input['field'] = value.value;
}

class UserStatusOrderField {
  const UserStatusOrderField(this.value);

  final String value;

  static const UserStatusOrderField UPDATED_AT =
      UserStatusOrderField('UPDATED_AT');

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is UserStatusOrderField && o.value == value;
}

class X509Certificate {
  const X509Certificate(this.value);

  final String value;

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) => o is X509Certificate && o.value == value;
}
