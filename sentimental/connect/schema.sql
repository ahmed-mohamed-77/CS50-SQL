CREATE TABLE IF NOT EXISTS `users`(
    `id` INT AUTO_INCREMENT,
    `user_id` INT ,
    `first_name` VARCHAR(20) NOT NULL,
    `last_name` VARCHAR(20) NOT NULL,
    `password` VARCHAR(35) NOT NULL,

    CONSTRAINT users_pk PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `schools`(
	`id` INT AUTO_INCREMENT,
    `school_id` INT,
    `name` VARCHAR(35) NOT NULL,
    `type` ENUM('Primary', 'Secondary','Higher Education'),
    `schools_location` VARCHAR(35) NOT NULL,
    `founded` year NOT NULL,

    CONSTRAINT Schools_and_Universities_pk PRIMARY KEY (`id`)
);


CREATE TABLE IF NOT EXISTS `Companies`(
	`id` INT AUTO_INCREMENT,
    `name` VARCHAR(35) NOT NULL,
    `company_industry` ENUM('Technology', 'Education', 'Business') NOT NULL,
	`company_location` VARCHAR(35) NOT NULL,

    CONSTRAINT companies_pk PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `connections`(
	`user_A` INT,
	`user_B` INT,

    CONSTRAINT connections_pk PRIMARY KEY (`user_A`, `user_B`),
    CONSTRAINT connections_user_A FOREIGN KEY (`user_A`) REFERENCES `users`(`id`),
    CONSTRAINT connections_user_B FOREIGN KEY (`user_B`) REFERENCES `users`(`id`),
    CONSTRAINT connections_check CHECK (`user_A` > `user_B`)
);

CREATE TABLE IF NOT EXISTS `users_schools_affiliation`(
	`affiliation_id` INT AUTO_INCREMENT,
	`user_id` INT NOT NULL,
    `school_id` INT NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE,
    `type_of_degree` VARCHAR(20) NOT NULL,

    CONSTRAINT users_schools_affiliation PRIMARY KEY (`affiliation_id`),
    CONSTRAINT user_fk FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    CONSTRAINT school_fk FOREIGN KEY (`school_id`) REFERENCES `schools`(`id`)
);

CREATE TABLE `User_Company_Affiliations` (
    `affiliation_id` INT AUTO_INCREMENT,
    `user_id` INT NOT NULL,
    `company_id` INT NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE,

	CONSTRAINT User_Company_Affiliations PRIMARY KEY (`affiliation_id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`company_id`) REFERENCES `Companies`(`id`)
);
