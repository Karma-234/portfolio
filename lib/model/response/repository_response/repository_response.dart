import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'owner.dart';
import 'permissions.dart';
import 'security_and_analysis.dart';

part 'repository_response.g.dart';

@JsonSerializable()
class RepositoryResponse {
  final int? id;
  @JsonKey(name: 'node_id')
  final String? nodeId;
  final String? name;
  @JsonKey(name: 'full_name')
  final String? fullName;
  final Owner? owner;
  final bool? private;
  @JsonKey(name: 'html_url')
  final String? htmlUrl;
  final String? description;
  final bool? fork;
  final String? url;
  @JsonKey(name: 'archive_url')
  final String? archiveUrl;
  @JsonKey(name: 'assignees_url')
  final String? assigneesUrl;
  @JsonKey(name: 'blobs_url')
  final String? blobsUrl;
  @JsonKey(name: 'branches_url')
  final String? branchesUrl;
  @JsonKey(name: 'collaborators_url')
  final String? collaboratorsUrl;
  @JsonKey(name: 'comments_url')
  final String? commentsUrl;
  @JsonKey(name: 'commits_url')
  final String? commitsUrl;
  @JsonKey(name: 'compare_url')
  final String? compareUrl;
  @JsonKey(name: 'contents_url')
  final String? contentsUrl;
  @JsonKey(name: 'contributors_url')
  final String? contributorsUrl;
  @JsonKey(name: 'deployments_url')
  final String? deploymentsUrl;
  @JsonKey(name: 'downloads_url')
  final String? downloadsUrl;
  @JsonKey(name: 'events_url')
  final String? eventsUrl;
  @JsonKey(name: 'forks_url')
  final String? forksUrl;
  @JsonKey(name: 'git_commits_url')
  final String? gitCommitsUrl;
  @JsonKey(name: 'git_refs_url')
  final String? gitRefsUrl;
  @JsonKey(name: 'git_tags_url')
  final String? gitTagsUrl;
  @JsonKey(name: 'git_url')
  final String? gitUrl;
  @JsonKey(name: 'issue_comment_url')
  final String? issueCommentUrl;
  @JsonKey(name: 'issue_events_url')
  final String? issueEventsUrl;
  @JsonKey(name: 'issues_url')
  final String? issuesUrl;
  @JsonKey(name: 'keys_url')
  final String? keysUrl;
  @JsonKey(name: 'labels_url')
  final String? labelsUrl;
  @JsonKey(name: 'languages_url')
  final String? languagesUrl;
  @JsonKey(name: 'merges_url')
  final String? mergesUrl;
  @JsonKey(name: 'milestones_url')
  final String? milestonesUrl;
  @JsonKey(name: 'notifications_url')
  final String? notificationsUrl;
  @JsonKey(name: 'pulls_url')
  final String? pullsUrl;
  @JsonKey(name: 'releases_url')
  final String? releasesUrl;
  @JsonKey(name: 'ssh_url')
  final String? sshUrl;
  @JsonKey(name: 'stargazers_url')
  final String? stargazersUrl;
  @JsonKey(name: 'statuses_url')
  final String? statusesUrl;
  @JsonKey(name: 'subscribers_url')
  final String? subscribersUrl;
  @JsonKey(name: 'subscription_url')
  final String? subscriptionUrl;
  @JsonKey(name: 'tags_url')
  final String? tagsUrl;
  @JsonKey(name: 'teams_url')
  final String? teamsUrl;
  @JsonKey(name: 'trees_url')
  final String? treesUrl;
  @JsonKey(name: 'clone_url')
  final String? cloneUrl;
  @JsonKey(name: 'mirror_url')
  final String? mirrorUrl;
  @JsonKey(name: 'hooks_url')
  final String? hooksUrl;
  @JsonKey(name: 'svn_url')
  final String? svnUrl;
  final String? homepage;
  final dynamic language;
  @JsonKey(name: 'forks_count')
  final int? forksCount;
  @JsonKey(name: 'stargazers_count')
  final int? stargazersCount;
  @JsonKey(name: 'watchers_count')
  final int? watchersCount;
  final int? size;
  @JsonKey(name: 'default_branch')
  final String? defaultBranch;
  @JsonKey(name: 'open_issues_count')
  final int? openIssuesCount;
  @JsonKey(name: 'is_template')
  final bool? isTemplate;
  final List<String>? topics;
  @JsonKey(name: 'has_issues')
  final bool? hasIssues;
  @JsonKey(name: 'has_projects')
  final bool? hasProjects;
  @JsonKey(name: 'has_wiki')
  final bool? hasWiki;
  @JsonKey(name: 'has_pages')
  final bool? hasPages;
  @JsonKey(name: 'has_downloads')
  final bool? hasDownloads;
  @JsonKey(name: 'has_discussions')
  final bool? hasDiscussions;
  final bool? archived;
  final bool? disabled;
  final String? visibility;
  @JsonKey(name: 'pushed_at')
  final String? pushedAt;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  final Permissions? permissions;
  @JsonKey(name: 'security_and_analysis')
  final SecurityAndAnalysis? securityAndAnalysis;

  const RepositoryResponse({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.owner,
    this.private,
    this.htmlUrl,
    this.description,
    this.fork,
    this.url,
    this.archiveUrl,
    this.assigneesUrl,
    this.blobsUrl,
    this.branchesUrl,
    this.collaboratorsUrl,
    this.commentsUrl,
    this.commitsUrl,
    this.compareUrl,
    this.contentsUrl,
    this.contributorsUrl,
    this.deploymentsUrl,
    this.downloadsUrl,
    this.eventsUrl,
    this.forksUrl,
    this.gitCommitsUrl,
    this.gitRefsUrl,
    this.gitTagsUrl,
    this.gitUrl,
    this.issueCommentUrl,
    this.issueEventsUrl,
    this.issuesUrl,
    this.keysUrl,
    this.labelsUrl,
    this.languagesUrl,
    this.mergesUrl,
    this.milestonesUrl,
    this.notificationsUrl,
    this.pullsUrl,
    this.releasesUrl,
    this.sshUrl,
    this.stargazersUrl,
    this.statusesUrl,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.tagsUrl,
    this.teamsUrl,
    this.treesUrl,
    this.cloneUrl,
    this.mirrorUrl,
    this.hooksUrl,
    this.svnUrl,
    this.homepage,
    this.language,
    this.forksCount,
    this.stargazersCount,
    this.watchersCount,
    this.size,
    this.defaultBranch,
    this.openIssuesCount,
    this.isTemplate,
    this.topics,
    this.hasIssues,
    this.hasProjects,
    this.hasWiki,
    this.hasPages,
    this.hasDownloads,
    this.hasDiscussions,
    this.archived,
    this.disabled,
    this.visibility,
    this.pushedAt,
    this.createdAt,
    this.updatedAt,
    this.permissions,
    this.securityAndAnalysis,
  });

  factory RepositoryResponse.fromJson(Map<String, dynamic> json) {
    return _$RepositoryResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RepositoryResponseToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! RepositoryResponse) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      nodeId.hashCode ^
      name.hashCode ^
      fullName.hashCode ^
      owner.hashCode ^
      private.hashCode ^
      htmlUrl.hashCode ^
      description.hashCode ^
      fork.hashCode ^
      url.hashCode ^
      archiveUrl.hashCode ^
      assigneesUrl.hashCode ^
      blobsUrl.hashCode ^
      branchesUrl.hashCode ^
      collaboratorsUrl.hashCode ^
      commentsUrl.hashCode ^
      commitsUrl.hashCode ^
      compareUrl.hashCode ^
      contentsUrl.hashCode ^
      contributorsUrl.hashCode ^
      deploymentsUrl.hashCode ^
      downloadsUrl.hashCode ^
      eventsUrl.hashCode ^
      forksUrl.hashCode ^
      gitCommitsUrl.hashCode ^
      gitRefsUrl.hashCode ^
      gitTagsUrl.hashCode ^
      gitUrl.hashCode ^
      issueCommentUrl.hashCode ^
      issueEventsUrl.hashCode ^
      issuesUrl.hashCode ^
      keysUrl.hashCode ^
      labelsUrl.hashCode ^
      languagesUrl.hashCode ^
      mergesUrl.hashCode ^
      milestonesUrl.hashCode ^
      notificationsUrl.hashCode ^
      pullsUrl.hashCode ^
      releasesUrl.hashCode ^
      sshUrl.hashCode ^
      stargazersUrl.hashCode ^
      statusesUrl.hashCode ^
      subscribersUrl.hashCode ^
      subscriptionUrl.hashCode ^
      tagsUrl.hashCode ^
      teamsUrl.hashCode ^
      treesUrl.hashCode ^
      cloneUrl.hashCode ^
      mirrorUrl.hashCode ^
      hooksUrl.hashCode ^
      svnUrl.hashCode ^
      homepage.hashCode ^
      language.hashCode ^
      forksCount.hashCode ^
      stargazersCount.hashCode ^
      watchersCount.hashCode ^
      size.hashCode ^
      defaultBranch.hashCode ^
      openIssuesCount.hashCode ^
      isTemplate.hashCode ^
      topics.hashCode ^
      hasIssues.hashCode ^
      hasProjects.hashCode ^
      hasWiki.hashCode ^
      hasPages.hashCode ^
      hasDownloads.hashCode ^
      hasDiscussions.hashCode ^
      archived.hashCode ^
      disabled.hashCode ^
      visibility.hashCode ^
      pushedAt.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      permissions.hashCode ^
      securityAndAnalysis.hashCode;
}
