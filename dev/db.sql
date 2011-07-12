/* core site database configuration with tables for customers, projects and utilized web technologies */

CREATE TABLE `webtechnologies` (
	`id` bigint(20) unsigned NOT NULL auto_increment,
	`name` varchar(100),
	`content` text,
	PRIMARY KEY (`id`),
	UNIQUE KEY `id` (`id`)
);

CREATE TABLE `projects` (
	`id` bigint(20) unsigned NOT NULL auto_increment,
	`name` varchar(100),
	`website` varchar(255),
	`online_date` date DEFAULT NULL,
	`description` text,
	`customer_id` bigint(20) unsigned DEFAULT NULL,
	PRIMARY KEY (`id`),
	UNIQUE KEY `id` (`id`)
);

CREATE TABLE `customers` (
	`id` bigint(20) unsigned NOT NULL auto_increment,
	`name` varchar(100),
	`website` varchar(255),
	PRIMARY KEY (`id`),
	UNIQUE KEY `id` (`id`)
);
	
CREATE TABLE `screenshots` (
	`id` bigint(20) unsigned NOT NULL auto_increment,
	`img_path` varchar(255),
	`project_id` bigint(20) unsigned DEFAULT NULL,
	PRIMARY KEY (`id`),
	UNIQUE KEY `id` (`id`)
);

CREATE TABLE `webtechnologies_projects` (
	`id` bigint(20) unsigned NOT NULL auto_increment,
	`webtechnology_id` bigint(20) default NULL,
	`project_id` bigint(20) default NULL,
	PRIMARY KEY (`id`)
);


/* blog database configuration */

CREATE TABLE `posts` (
	`id` bigint(20) unsigned NOT NULL auto_increment,
	`name` varchar(100),
	`date` datetime default NULL,
	`content` text,
	`user_id`  bigint(11) default NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `comments` (
	`id` bigint(20) unsigned NOT NULL auto_increment,
	`name` varchar(100),
	`date` datetime default NULL,
	`content` text,
	`post_id` bigint(20) default NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `users` (
	`id` bigint(20) unsigned NOT NULL auto_increment,
	`name` varchar(100) default NULL,
	`email` varchar(150) default NULL,
	`firstname` varchar(60) default NULL,
	`lastname` varchar(60) default NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tags` (
	`id` bigint(20) unsigned NOT NULL auto_increment,
	`name` varchar(100) default NULL,
	`longname` varchar(255) default NULL,
	PRIMARY KEY (`id`),
	UNIQUE KEY `id` (`id`),
	UNIQUE KEY `name` (`name`)
);

CREATE TABLE `posts_tags` (	
	`id` bigint(20) unsigned NOT NULL auto_increment,
	`post_id` bigint(20) default NULL,
	`tag_id` bigint(20) default NULL,
	PRIMARY KEY (`id`)
);
	
