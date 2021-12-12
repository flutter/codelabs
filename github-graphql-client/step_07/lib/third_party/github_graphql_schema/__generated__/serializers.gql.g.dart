// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(GAcceptEnterpriseAdministratorInvitationInput.serializer)
      ..add(GAcceptTopicSuggestionInput.serializer)
      ..add(GAddAssigneesToAssignableInput.serializer)
      ..add(GAddCommentInput.serializer)
      ..add(GAddDiscussionCommentInput.serializer)
      ..add(GAddEnterpriseSupportEntitlementInput.serializer)
      ..add(GAddLabelsToLabelableInput.serializer)
      ..add(GAddProjectCardInput.serializer)
      ..add(GAddProjectColumnInput.serializer)
      ..add(GAddProjectNextItemInput.serializer)
      ..add(GAddPullRequestReviewCommentInput.serializer)
      ..add(GAddPullRequestReviewInput.serializer)
      ..add(GAddPullRequestReviewThreadInput.serializer)
      ..add(GAddReactionInput.serializer)
      ..add(GAddStarInput.serializer)
      ..add(GAddUpvoteInput.serializer)
      ..add(GAddVerifiableDomainInput.serializer)
      ..add(GApproveDeploymentsInput.serializer)
      ..add(GApproveVerifiableDomainInput.serializer)
      ..add(GArchiveRepositoryInput.serializer)
      ..add(GAssignedIssues.serializer)
      ..add(GAssignedIssuesData.serializer)
      ..add(GAssignedIssuesData_search.serializer)
      ..add(GAssignedIssuesData_search_edges.serializer)
      ..add(GAssignedIssuesData_search_edges_node__asIssue.serializer)
      ..add(GAssignedIssuesData_search_edges_node__asIssue_author.serializer)
      ..add(GAssignedIssuesData_search_edges_node__asIssue_comments.serializer)
      ..add(GAssignedIssuesData_search_edges_node__asIssue_labels.serializer)
      ..add(GAssignedIssuesData_search_edges_node__asIssue_labels_nodes
          .serializer)
      ..add(
          GAssignedIssuesData_search_edges_node__asIssue_repository.serializer)
      ..add(GAssignedIssuesData_search_edges_node__base.serializer)
      ..add(GAssignedIssuesVars.serializer)
      ..add(GAuditLogOrder.serializer)
      ..add(GAuditLogOrderField.serializer)
      ..add(GBase64String.serializer)
      ..add(GCancelEnterpriseAdminInvitationInput.serializer)
      ..add(GCancelSponsorshipInput.serializer)
      ..add(GChangeUserStatusInput.serializer)
      ..add(GCheckAnnotationData.serializer)
      ..add(GCheckAnnotationLevel.serializer)
      ..add(GCheckAnnotationRange.serializer)
      ..add(GCheckConclusionState.serializer)
      ..add(GCheckRunAction.serializer)
      ..add(GCheckRunFilter.serializer)
      ..add(GCheckRunOutput.serializer)
      ..add(GCheckRunOutputImage.serializer)
      ..add(GCheckRunType.serializer)
      ..add(GCheckStatusState.serializer)
      ..add(GCheckSuiteAutoTriggerPreference.serializer)
      ..add(GCheckSuiteFilter.serializer)
      ..add(GClearLabelsFromLabelableInput.serializer)
      ..add(GCloneProjectInput.serializer)
      ..add(GCloneTemplateRepositoryInput.serializer)
      ..add(GCloseIssueInput.serializer)
      ..add(GClosePullRequestInput.serializer)
      ..add(GCollaboratorAffiliation.serializer)
      ..add(GCommentAuthorAssociation.serializer)
      ..add(GCommentCannotUpdateReason.serializer)
      ..add(GCommitAuthor.serializer)
      ..add(GCommitContributionOrder.serializer)
      ..add(GCommitContributionOrderField.serializer)
      ..add(GCommitMessage.serializer)
      ..add(GCommittableBranch.serializer)
      ..add(GContributionLevel.serializer)
      ..add(GContributionOrder.serializer)
      ..add(GConvertProjectCardNoteToIssueInput.serializer)
      ..add(GConvertPullRequestToDraftInput.serializer)
      ..add(GCreateBranchProtectionRuleInput.serializer)
      ..add(GCreateCheckRunInput.serializer)
      ..add(GCreateCheckSuiteInput.serializer)
      ..add(GCreateCommitOnBranchInput.serializer)
      ..add(GCreateContentAttachmentInput.serializer)
      ..add(GCreateDeploymentInput.serializer)
      ..add(GCreateDeploymentStatusInput.serializer)
      ..add(GCreateDiscussionInput.serializer)
      ..add(GCreateEnterpriseOrganizationInput.serializer)
      ..add(GCreateEnvironmentInput.serializer)
      ..add(GCreateIpAllowListEntryInput.serializer)
      ..add(GCreateIssueInput.serializer)
      ..add(GCreateLabelInput.serializer)
      ..add(GCreateProjectInput.serializer)
      ..add(GCreatePullRequestInput.serializer)
      ..add(GCreateRefInput.serializer)
      ..add(GCreateRepositoryInput.serializer)
      ..add(GCreateSponsorshipInput.serializer)
      ..add(GCreateTeamDiscussionCommentInput.serializer)
      ..add(GCreateTeamDiscussionInput.serializer)
      ..add(GDate.serializer)
      ..add(GDateTime.serializer)
      ..add(GDeclineTopicSuggestionInput.serializer)
      ..add(GDefaultRepositoryPermissionField.serializer)
      ..add(GDeleteBranchProtectionRuleInput.serializer)
      ..add(GDeleteDeploymentInput.serializer)
      ..add(GDeleteDiscussionCommentInput.serializer)
      ..add(GDeleteDiscussionInput.serializer)
      ..add(GDeleteEnvironmentInput.serializer)
      ..add(GDeleteIpAllowListEntryInput.serializer)
      ..add(GDeleteIssueCommentInput.serializer)
      ..add(GDeleteIssueInput.serializer)
      ..add(GDeleteLabelInput.serializer)
      ..add(GDeletePackageVersionInput.serializer)
      ..add(GDeleteProjectCardInput.serializer)
      ..add(GDeleteProjectColumnInput.serializer)
      ..add(GDeleteProjectInput.serializer)
      ..add(GDeleteProjectNextItemInput.serializer)
      ..add(GDeletePullRequestReviewCommentInput.serializer)
      ..add(GDeletePullRequestReviewInput.serializer)
      ..add(GDeleteRefInput.serializer)
      ..add(GDeleteTeamDiscussionCommentInput.serializer)
      ..add(GDeleteTeamDiscussionInput.serializer)
      ..add(GDeleteVerifiableDomainInput.serializer)
      ..add(GDeploymentOrder.serializer)
      ..add(GDeploymentOrderField.serializer)
      ..add(GDeploymentProtectionRuleType.serializer)
      ..add(GDeploymentReviewState.serializer)
      ..add(GDeploymentState.serializer)
      ..add(GDeploymentStatusState.serializer)
      ..add(GDiffSide.serializer)
      ..add(GDisablePullRequestAutoMergeInput.serializer)
      ..add(GDiscussionOrder.serializer)
      ..add(GDiscussionOrderField.serializer)
      ..add(GDismissPullRequestReviewInput.serializer)
      ..add(GDismissReason.serializer)
      ..add(GDismissRepositoryVulnerabilityAlertInput.serializer)
      ..add(GDraftPullRequestReviewComment.serializer)
      ..add(GDraftPullRequestReviewThread.serializer)
      ..add(GEnablePullRequestAutoMergeInput.serializer)
      ..add(GEnterpriseAdministratorInvitationOrder.serializer)
      ..add(GEnterpriseAdministratorInvitationOrderField.serializer)
      ..add(GEnterpriseAdministratorRole.serializer)
      ..add(GEnterpriseDefaultRepositoryPermissionSettingValue.serializer)
      ..add(GEnterpriseEnabledDisabledSettingValue.serializer)
      ..add(GEnterpriseEnabledSettingValue.serializer)
      ..add(GEnterpriseMemberOrder.serializer)
      ..add(GEnterpriseMemberOrderField.serializer)
      ..add(GEnterpriseMembersCanCreateRepositoriesSettingValue.serializer)
      ..add(GEnterpriseMembersCanMakePurchasesSettingValue.serializer)
      ..add(GEnterpriseServerInstallationOrder.serializer)
      ..add(GEnterpriseServerInstallationOrderField.serializer)
      ..add(GEnterpriseServerUserAccountEmailOrder.serializer)
      ..add(GEnterpriseServerUserAccountEmailOrderField.serializer)
      ..add(GEnterpriseServerUserAccountOrder.serializer)
      ..add(GEnterpriseServerUserAccountOrderField.serializer)
      ..add(GEnterpriseServerUserAccountsUploadOrder.serializer)
      ..add(GEnterpriseServerUserAccountsUploadOrderField.serializer)
      ..add(GEnterpriseServerUserAccountsUploadSyncState.serializer)
      ..add(GEnterpriseUserAccountMembershipRole.serializer)
      ..add(GEnterpriseUserDeployment.serializer)
      ..add(GFileAddition.serializer)
      ..add(GFileChanges.serializer)
      ..add(GFileDeletion.serializer)
      ..add(GFileViewedState.serializer)
      ..add(GFollowUserInput.serializer)
      ..add(GFundingPlatform.serializer)
      ..add(GGistOrder.serializer)
      ..add(GGistOrderField.serializer)
      ..add(GGistPrivacy.serializer)
      ..add(GGitObjectID.serializer)
      ..add(GGitRefname.serializer)
      ..add(GGitSSHRemote.serializer)
      ..add(GGitSignatureState.serializer)
      ..add(GGitTimestamp.serializer)
      ..add(GHTML.serializer)
      ..add(GIdentityProviderConfigurationState.serializer)
      ..add(GImportProjectInput.serializer)
      ..add(GInviteEnterpriseAdminInput.serializer)
      ..add(GIpAllowListEnabledSettingValue.serializer)
      ..add(GIpAllowListEntryOrder.serializer)
      ..add(GIpAllowListEntryOrderField.serializer)
      ..add(GIpAllowListForInstalledAppsEnabledSettingValue.serializer)
      ..add(GIssueCommentOrder.serializer)
      ..add(GIssueCommentOrderField.serializer)
      ..add(GIssueFilters.serializer)
      ..add(GIssueOrder.serializer)
      ..add(GIssueOrderField.serializer)
      ..add(GIssueState.serializer)
      ..add(GIssueTimelineItemsItemType.serializer)
      ..add(GLabelOrder.serializer)
      ..add(GLabelOrderField.serializer)
      ..add(GLanguageOrder.serializer)
      ..add(GLanguageOrderField.serializer)
      ..add(GLinkRepositoryToProjectInput.serializer)
      ..add(GLockLockableInput.serializer)
      ..add(GLockReason.serializer)
      ..add(GMarkDiscussionCommentAsAnswerInput.serializer)
      ..add(GMarkFileAsViewedInput.serializer)
      ..add(GMarkPullRequestReadyForReviewInput.serializer)
      ..add(GMergeBranchInput.serializer)
      ..add(GMergePullRequestInput.serializer)
      ..add(GMergeStateStatus.serializer)
      ..add(GMergeableState.serializer)
      ..add(GMilestoneOrder.serializer)
      ..add(GMilestoneOrderField.serializer)
      ..add(GMilestoneState.serializer)
      ..add(GMinimizeCommentInput.serializer)
      ..add(GMoveProjectCardInput.serializer)
      ..add(GMoveProjectColumnInput.serializer)
      ..add(GNotificationRestrictionSettingValue.serializer)
      ..add(GOIDCProviderType.serializer)
      ..add(GOauthApplicationCreateAuditEntryState.serializer)
      ..add(GOperationType.serializer)
      ..add(GOrderDirection.serializer)
      ..add(GOrgAddMemberAuditEntryPermission.serializer)
      ..add(GOrgCreateAuditEntryBillingPlan.serializer)
      ..add(GOrgRemoveBillingManagerAuditEntryReason.serializer)
      ..add(GOrgRemoveMemberAuditEntryMembershipType.serializer)
      ..add(GOrgRemoveMemberAuditEntryReason.serializer)
      ..add(GOrgRemoveOutsideCollaboratorAuditEntryMembershipType.serializer)
      ..add(GOrgRemoveOutsideCollaboratorAuditEntryReason.serializer)
      ..add(
          GOrgUpdateDefaultRepositoryPermissionAuditEntryPermission.serializer)
      ..add(GOrgUpdateMemberAuditEntryPermission.serializer)
      ..add(GOrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
          .serializer)
      ..add(GOrganizationInvitationRole.serializer)
      ..add(GOrganizationInvitationType.serializer)
      ..add(GOrganizationMemberRole.serializer)
      ..add(GOrganizationMembersCanCreateRepositoriesSettingValue.serializer)
      ..add(GOrganizationOrder.serializer)
      ..add(GOrganizationOrderField.serializer)
      ..add(GPackageFileOrder.serializer)
      ..add(GPackageFileOrderField.serializer)
      ..add(GPackageOrder.serializer)
      ..add(GPackageOrderField.serializer)
      ..add(GPackageType.serializer)
      ..add(GPackageVersionOrder.serializer)
      ..add(GPackageVersionOrderField.serializer)
      ..add(GPinIssueInput.serializer)
      ..add(GPinnableItemType.serializer)
      ..add(GPinnedDiscussionGradient.serializer)
      ..add(GPinnedDiscussionPattern.serializer)
      ..add(GPreciseDateTime.serializer)
      ..add(GProjectCardArchivedState.serializer)
      ..add(GProjectCardImport.serializer)
      ..add(GProjectCardState.serializer)
      ..add(GProjectColumnImport.serializer)
      ..add(GProjectColumnPurpose.serializer)
      ..add(GProjectOrder.serializer)
      ..add(GProjectOrderField.serializer)
      ..add(GProjectState.serializer)
      ..add(GProjectTemplate.serializer)
      ..add(GPullRequestMergeMethod.serializer)
      ..add(GPullRequestOrder.serializer)
      ..add(GPullRequestOrderField.serializer)
      ..add(GPullRequestReviewCommentState.serializer)
      ..add(GPullRequestReviewDecision.serializer)
      ..add(GPullRequestReviewEvent.serializer)
      ..add(GPullRequestReviewState.serializer)
      ..add(GPullRequestState.serializer)
      ..add(GPullRequestTimelineItemsItemType.serializer)
      ..add(GPullRequestUpdateState.serializer)
      ..add(GPullRequests.serializer)
      ..add(GPullRequestsData.serializer)
      ..add(GPullRequestsData_viewer.serializer)
      ..add(GPullRequestsData_viewer_pullRequests.serializer)
      ..add(GPullRequestsData_viewer_pullRequests_edges.serializer)
      ..add(GPullRequestsData_viewer_pullRequests_edges_node.serializer)
      ..add(GPullRequestsData_viewer_pullRequests_edges_node_author.serializer)
      ..add(
          GPullRequestsData_viewer_pullRequests_edges_node_comments.serializer)
      ..add(GPullRequestsData_viewer_pullRequests_edges_node_files.serializer)
      ..add(GPullRequestsData_viewer_pullRequests_edges_node_repository
          .serializer)
      ..add(GPullRequestsVars.serializer)
      ..add(GReactionContent.serializer)
      ..add(GReactionOrder.serializer)
      ..add(GReactionOrderField.serializer)
      ..add(GRefOrder.serializer)
      ..add(GRefOrderField.serializer)
      ..add(GRefUpdate.serializer)
      ..add(GRegenerateEnterpriseIdentityProviderRecoveryCodesInput.serializer)
      ..add(GRegenerateVerifiableDomainTokenInput.serializer)
      ..add(GRejectDeploymentsInput.serializer)
      ..add(GReleaseOrder.serializer)
      ..add(GReleaseOrderField.serializer)
      ..add(GRemoveAssigneesFromAssignableInput.serializer)
      ..add(GRemoveEnterpriseAdminInput.serializer)
      ..add(GRemoveEnterpriseIdentityProviderInput.serializer)
      ..add(GRemoveEnterpriseOrganizationInput.serializer)
      ..add(GRemoveEnterpriseSupportEntitlementInput.serializer)
      ..add(GRemoveLabelsFromLabelableInput.serializer)
      ..add(GRemoveOutsideCollaboratorInput.serializer)
      ..add(GRemoveReactionInput.serializer)
      ..add(GRemoveStarInput.serializer)
      ..add(GRemoveUpvoteInput.serializer)
      ..add(GReopenIssueInput.serializer)
      ..add(GReopenPullRequestInput.serializer)
      ..add(GRepoAccessAuditEntryVisibility.serializer)
      ..add(GRepoAddMemberAuditEntryVisibility.serializer)
      ..add(GRepoArchivedAuditEntryVisibility.serializer)
      ..add(GRepoChangeMergeSettingAuditEntryMergeType.serializer)
      ..add(GRepoCreateAuditEntryVisibility.serializer)
      ..add(GRepoDestroyAuditEntryVisibility.serializer)
      ..add(GRepoRemoveMemberAuditEntryVisibility.serializer)
      ..add(GReportedContentClassifiers.serializer)
      ..add(GRepositories.serializer)
      ..add(GRepositoriesData.serializer)
      ..add(GRepositoriesData_viewer.serializer)
      ..add(GRepositoriesData_viewer_repositories.serializer)
      ..add(GRepositoriesData_viewer_repositories_nodes.serializer)
      ..add(GRepositoriesData_viewer_repositories_nodes_issues.serializer)
      ..add(GRepositoriesData_viewer_repositories_nodes_owner.serializer)
      ..add(GRepositoriesData_viewer_repositories_nodes_stargazers.serializer)
      ..add(GRepositoriesVars.serializer)
      ..add(GRepositoryAffiliation.serializer)
      ..add(GRepositoryContributionType.serializer)
      ..add(GRepositoryInteractionLimit.serializer)
      ..add(GRepositoryInteractionLimitExpiry.serializer)
      ..add(GRepositoryInteractionLimitOrigin.serializer)
      ..add(GRepositoryInvitationOrder.serializer)
      ..add(GRepositoryInvitationOrderField.serializer)
      ..add(GRepositoryLockReason.serializer)
      ..add(GRepositoryOrder.serializer)
      ..add(GRepositoryOrderField.serializer)
      ..add(GRepositoryPermission.serializer)
      ..add(GRepositoryPrivacy.serializer)
      ..add(GRepositoryVisibility.serializer)
      ..add(GRequestReviewsInput.serializer)
      ..add(GRequestableCheckStatusState.serializer)
      ..add(GRequiredStatusCheckInput.serializer)
      ..add(GRerequestCheckSuiteInput.serializer)
      ..add(GResolveReviewThreadInput.serializer)
      ..add(GSamlDigestAlgorithm.serializer)
      ..add(GSamlSignatureAlgorithm.serializer)
      ..add(GSavedReplyOrder.serializer)
      ..add(GSavedReplyOrderField.serializer)
      ..add(GSearchType.serializer)
      ..add(GSecurityAdvisoryEcosystem.serializer)
      ..add(GSecurityAdvisoryIdentifierFilter.serializer)
      ..add(GSecurityAdvisoryIdentifierType.serializer)
      ..add(GSecurityAdvisoryOrder.serializer)
      ..add(GSecurityAdvisoryOrderField.serializer)
      ..add(GSecurityAdvisorySeverity.serializer)
      ..add(GSecurityVulnerabilityOrder.serializer)
      ..add(GSecurityVulnerabilityOrderField.serializer)
      ..add(GSetEnterpriseIdentityProviderInput.serializer)
      ..add(GSetOrganizationInteractionLimitInput.serializer)
      ..add(GSetRepositoryInteractionLimitInput.serializer)
      ..add(GSetUserInteractionLimitInput.serializer)
      ..add(GSponsorOrder.serializer)
      ..add(GSponsorOrderField.serializer)
      ..add(GSponsorableOrder.serializer)
      ..add(GSponsorableOrderField.serializer)
      ..add(GSponsorsActivityAction.serializer)
      ..add(GSponsorsActivityOrder.serializer)
      ..add(GSponsorsActivityOrderField.serializer)
      ..add(GSponsorsActivityPeriod.serializer)
      ..add(GSponsorsGoalKind.serializer)
      ..add(GSponsorsTierOrder.serializer)
      ..add(GSponsorsTierOrderField.serializer)
      ..add(GSponsorshipNewsletterOrder.serializer)
      ..add(GSponsorshipNewsletterOrderField.serializer)
      ..add(GSponsorshipOrder.serializer)
      ..add(GSponsorshipOrderField.serializer)
      ..add(GSponsorshipPrivacy.serializer)
      ..add(GStarOrder.serializer)
      ..add(GStarOrderField.serializer)
      ..add(GStatusState.serializer)
      ..add(GSubmitPullRequestReviewInput.serializer)
      ..add(GSubscriptionState.serializer)
      ..add(GTeamDiscussionCommentOrder.serializer)
      ..add(GTeamDiscussionCommentOrderField.serializer)
      ..add(GTeamDiscussionOrder.serializer)
      ..add(GTeamDiscussionOrderField.serializer)
      ..add(GTeamMemberOrder.serializer)
      ..add(GTeamMemberOrderField.serializer)
      ..add(GTeamMemberRole.serializer)
      ..add(GTeamMembershipType.serializer)
      ..add(GTeamOrder.serializer)
      ..add(GTeamOrderField.serializer)
      ..add(GTeamPrivacy.serializer)
      ..add(GTeamRepositoryOrder.serializer)
      ..add(GTeamRepositoryOrderField.serializer)
      ..add(GTeamReviewAssignmentAlgorithm.serializer)
      ..add(GTeamRole.serializer)
      ..add(GTopicSuggestionDeclineReason.serializer)
      ..add(GTransferIssueInput.serializer)
      ..add(GURI.serializer)
      ..add(GUnarchiveRepositoryInput.serializer)
      ..add(GUnfollowUserInput.serializer)
      ..add(GUnlinkRepositoryFromProjectInput.serializer)
      ..add(GUnlockLockableInput.serializer)
      ..add(GUnmarkDiscussionCommentAsAnswerInput.serializer)
      ..add(GUnmarkFileAsViewedInput.serializer)
      ..add(GUnmarkIssueAsDuplicateInput.serializer)
      ..add(GUnminimizeCommentInput.serializer)
      ..add(GUnpinIssueInput.serializer)
      ..add(GUnresolveReviewThreadInput.serializer)
      ..add(GUpdateBranchProtectionRuleInput.serializer)
      ..add(GUpdateCheckRunInput.serializer)
      ..add(GUpdateCheckSuitePreferencesInput.serializer)
      ..add(GUpdateDiscussionCommentInput.serializer)
      ..add(GUpdateDiscussionInput.serializer)
      ..add(GUpdateEnterpriseAdministratorRoleInput.serializer)
      ..add(
          GUpdateEnterpriseAllowPrivateRepositoryForkingSettingInput.serializer)
      ..add(GUpdateEnterpriseDefaultRepositoryPermissionSettingInput.serializer)
      ..add(GUpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput
          .serializer)
      ..add(
          GUpdateEnterpriseMembersCanCreateRepositoriesSettingInput.serializer)
      ..add(GUpdateEnterpriseMembersCanDeleteIssuesSettingInput.serializer)
      ..add(
          GUpdateEnterpriseMembersCanDeleteRepositoriesSettingInput.serializer)
      ..add(
          GUpdateEnterpriseMembersCanInviteCollaboratorsSettingInput.serializer)
      ..add(GUpdateEnterpriseMembersCanMakePurchasesSettingInput.serializer)
      ..add(GUpdateEnterpriseMembersCanUpdateProtectedBranchesSettingInput
          .serializer)
      ..add(GUpdateEnterpriseMembersCanViewDependencyInsightsSettingInput
          .serializer)
      ..add(GUpdateEnterpriseOrganizationProjectsSettingInput.serializer)
      ..add(GUpdateEnterpriseProfileInput.serializer)
      ..add(GUpdateEnterpriseRepositoryProjectsSettingInput.serializer)
      ..add(GUpdateEnterpriseTeamDiscussionsSettingInput.serializer)
      ..add(GUpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput
          .serializer)
      ..add(GUpdateEnvironmentInput.serializer)
      ..add(GUpdateIpAllowListEnabledSettingInput.serializer)
      ..add(GUpdateIpAllowListEntryInput.serializer)
      ..add(GUpdateIpAllowListForInstalledAppsEnabledSettingInput.serializer)
      ..add(GUpdateIssueCommentInput.serializer)
      ..add(GUpdateIssueInput.serializer)
      ..add(GUpdateLabelInput.serializer)
      ..add(GUpdateNotificationRestrictionSettingInput.serializer)
      ..add(GUpdateProjectCardInput.serializer)
      ..add(GUpdateProjectColumnInput.serializer)
      ..add(GUpdateProjectInput.serializer)
      ..add(GUpdateProjectNextItemFieldInput.serializer)
      ..add(GUpdatePullRequestBranchInput.serializer)
      ..add(GUpdatePullRequestInput.serializer)
      ..add(GUpdatePullRequestReviewCommentInput.serializer)
      ..add(GUpdatePullRequestReviewInput.serializer)
      ..add(GUpdateRefInput.serializer)
      ..add(GUpdateRefsInput.serializer)
      ..add(GUpdateRepositoryInput.serializer)
      ..add(GUpdateSponsorshipPreferencesInput.serializer)
      ..add(GUpdateSubscriptionInput.serializer)
      ..add(GUpdateTeamDiscussionCommentInput.serializer)
      ..add(GUpdateTeamDiscussionInput.serializer)
      ..add(GUpdateTeamReviewAssignmentInput.serializer)
      ..add(GUpdateTopicsInput.serializer)
      ..add(GUserBlockDuration.serializer)
      ..add(GUserStatusOrder.serializer)
      ..add(GUserStatusOrderField.serializer)
      ..add(GVerifiableDomainOrder.serializer)
      ..add(GVerifiableDomainOrderField.serializer)
      ..add(GVerifyVerifiableDomainInput.serializer)
      ..add(GViewerDetail.serializer)
      ..add(GViewerDetailData.serializer)
      ..add(GViewerDetailData_viewer.serializer)
      ..add(GViewerDetailVars.serializer)
      ..add(GX509Certificate.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GAssignedIssuesData_search_edges)]),
          () => new ListBuilder<GAssignedIssuesData_search_edges>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GAssignedIssuesData_search_edges_node__asIssue_labels_nodes)
          ]),
          () => new ListBuilder<
              GAssignedIssuesData_search_edges_node__asIssue_labels_nodes>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCheckAnnotationData)]),
          () => new ListBuilder<GCheckAnnotationData>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCheckRunOutputImage)]),
          () => new ListBuilder<GCheckRunOutputImage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GCheckRunAction)]),
          () => new ListBuilder<GCheckRunAction>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GCheckRunAction)]),
          () => new ListBuilder<GCheckRunAction>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GCheckSuiteAutoTriggerPreference)]),
          () => new ListBuilder<GCheckSuiteAutoTriggerPreference>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GDraftPullRequestReviewComment)]),
          () => new ListBuilder<GDraftPullRequestReviewComment>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GDraftPullRequestReviewThread)]),
          () => new ListBuilder<GDraftPullRequestReviewThread>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GFileAddition)]),
          () => new ListBuilder<GFileAddition>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GFileDeletion)]),
          () => new ListBuilder<GFileDeletion>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GProjectCardImport)]),
          () => new ListBuilder<GProjectCardImport>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProjectColumnImport)]),
          () => new ListBuilder<GProjectColumnImport>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GPullRequestsData_viewer_pullRequests_edges)
          ]),
          () => new ListBuilder<GPullRequestsData_viewer_pullRequests_edges>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GRefUpdate)]),
          () => new ListBuilder<GRefUpdate>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GRepositoriesData_viewer_repositories_nodes)
          ]),
          () => new ListBuilder<GRepositoriesData_viewer_repositories_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GIssueState)]),
          () => new ListBuilder<GIssueState>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GRequiredStatusCheckInput)]),
          () => new ListBuilder<GRequiredStatusCheckInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GRequiredStatusCheckInput)]),
          () => new ListBuilder<GRequiredStatusCheckInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
