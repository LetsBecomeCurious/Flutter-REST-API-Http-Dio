import 'package:flutter_api_integration/models/user_response_entity.dart';

userResponseEntityFromJson(UserResponseEntity data, Map<String, dynamic> json) {
	if (json['login'] != null) {
		data.login = json['login']?.toString();
	}
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['node_id'] != null) {
		data.nodeId = json['node_id']?.toString();
	}
	if (json['avatar_url'] != null) {
		data.avatarUrl = json['avatar_url']?.toString();
	}
	if (json['gravatar_id'] != null) {
		data.gravatarId = json['gravatar_id']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['html_url'] != null) {
		data.htmlUrl = json['html_url']?.toString();
	}
	if (json['followers_url'] != null) {
		data.followersUrl = json['followers_url']?.toString();
	}
	if (json['following_url'] != null) {
		data.followingUrl = json['following_url']?.toString();
	}
	if (json['gists_url'] != null) {
		data.gistsUrl = json['gists_url']?.toString();
	}
	if (json['starred_url'] != null) {
		data.starredUrl = json['starred_url']?.toString();
	}
	if (json['subscriptions_url'] != null) {
		data.subscriptionsUrl = json['subscriptions_url']?.toString();
	}
	if (json['organizations_url'] != null) {
		data.organizationsUrl = json['organizations_url']?.toString();
	}
	if (json['repos_url'] != null) {
		data.reposUrl = json['repos_url']?.toString();
	}
	if (json['events_url'] != null) {
		data.eventsUrl = json['events_url']?.toString();
	}
	if (json['received_events_url'] != null) {
		data.receivedEventsUrl = json['received_events_url']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	if (json['site_admin'] != null) {
		data.siteAdmin = json['site_admin'];
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['company'] != null) {
		data.company = json['company'];
	}
	if (json['blog'] != null) {
		data.blog = json['blog']?.toString();
	}
	if (json['location'] != null) {
		data.location = json['location']?.toString();
	}
	if (json['email'] != null) {
		data.email = json['email'];
	}
	if (json['hireable'] != null) {
		data.hireable = json['hireable'];
	}
	if (json['bio'] != null) {
		data.bio = json['bio'];
	}
	if (json['twitter_username'] != null) {
		data.twitterUsername = json['twitter_username'];
	}
	if (json['public_repos'] != null) {
		data.publicRepos = json['public_repos']?.toInt();
	}
	if (json['public_gists'] != null) {
		data.publicGists = json['public_gists']?.toInt();
	}
	if (json['followers'] != null) {
		data.followers = json['followers']?.toInt();
	}
	if (json['following'] != null) {
		data.following = json['following']?.toInt();
	}
	if (json['created_at'] != null) {
		data.createdAt = json['created_at']?.toString();
	}
	if (json['updated_at'] != null) {
		data.updatedAt = json['updated_at']?.toString();
	}
	return data;
}

Map<String, dynamic> userResponseEntityToJson(UserResponseEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['login'] = entity.login;
	data['id'] = entity.id;
	data['node_id'] = entity.nodeId;
	data['avatar_url'] = entity.avatarUrl;
	data['gravatar_id'] = entity.gravatarId;
	data['url'] = entity.url;
	data['html_url'] = entity.htmlUrl;
	data['followers_url'] = entity.followersUrl;
	data['following_url'] = entity.followingUrl;
	data['gists_url'] = entity.gistsUrl;
	data['starred_url'] = entity.starredUrl;
	data['subscriptions_url'] = entity.subscriptionsUrl;
	data['organizations_url'] = entity.organizationsUrl;
	data['repos_url'] = entity.reposUrl;
	data['events_url'] = entity.eventsUrl;
	data['received_events_url'] = entity.receivedEventsUrl;
	data['type'] = entity.type;
	data['site_admin'] = entity.siteAdmin;
	data['name'] = entity.name;
	data['company'] = entity.company;
	data['blog'] = entity.blog;
	data['location'] = entity.location;
	data['email'] = entity.email;
	data['hireable'] = entity.hireable;
	data['bio'] = entity.bio;
	data['twitter_username'] = entity.twitterUsername;
	data['public_repos'] = entity.publicRepos;
	data['public_gists'] = entity.publicGists;
	data['followers'] = entity.followers;
	data['following'] = entity.following;
	data['created_at'] = entity.createdAt;
	data['updated_at'] = entity.updatedAt;
	return data;
}