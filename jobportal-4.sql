-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2020 at 07:25 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(20) NOT NULL,
  `adm_name` varchar(100) NOT NULL,
  `adm_pass` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `adm_name`, `adm_pass`) VALUES
(1, 'admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `apply_id` int(20) NOT NULL,
  `user_id` int(20) DEFAULT NULL,
  `emp_id` int(20) DEFAULT NULL,
  `job_id` int(20) DEFAULT NULL,
  `status` int(20) DEFAULT NULL,
  `date_applied` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `eid` int(20) NOT NULL,
  `log_id` int(20) NOT NULL,
  `ename` varchar(100) DEFAULT NULL,
  `etype` varchar(100) DEFAULT NULL,
  `industry` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `executive` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `profile` varchar(700) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`eid`, `log_id`, `ename`, `etype`, `industry`, `address`, `pincode`, `executive`, `phone`, `location`, `profile`, `logo`) VALUES
(2, 23, 'Microsoft', 'Company', 'Software Services', 'Microsoft, Bangalore, Karnataka', '456987', 'Arun', '78945612332', 'India,Karnataka,Bommasandra', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `email` varchar(100) DEFAULT NULL,
  `club` varchar(250) DEFAULT NULL,
  `expfrom` date NOT NULL,
  `expto` date NOT NULL,
  `message` varchar(2000) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `final` varchar(200) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`email`, `club`, `expfrom`, `expto`, `message`, `status`, `final`) VALUES
('pearl@ymail.com', 'music', '2019-11-13', '2020-02-05', 'hey', 'rejected', 'pending'),
('simran@gmail.com', 'dance', '2020-02-25', '2020-02-28', 'hey', 'accepted', 'rejected'),
('pearljainv@gmail.com', 'dance', '2020-02-04', '2020-02-15', 'hey hey hey', 'rejected', 'pending'),
('pearljain@ymail.com', 'dance', '2020-02-04', '2020-02-15', 'hey hey hey', 'accepted', 'accepted'),
('nishantshedale@gmail.com', 'public', '2020-02-20', '2020-02-29', 'beauty', 'accepted', 'accepted'),
('simranjaveri10@gmail.com', 'Dance', '2020-02-11', '2020-02-28', 'Interested in dancing', 'accepted', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `form2`
--

CREATE TABLE `form2` (
  `email` varchar(100) NOT NULL,
  `club` char(20) NOT NULL,
  `expfrom` date NOT NULL,
  `expto` date NOT NULL,
  `message` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form2`
--

INSERT INTO `form2` (`email`, `club`, `expfrom`, `expto`, `message`) VALUES
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('simranjaveri10@gmail.com', 'public', '2020-02-06', '2020-02-01', 'woah'),
('simranjaveri10@gmail.com', 'code', '2020-02-19', '2020-02-08', 'hi'),
('pearl@ymail.com', 'music', '2019-11-13', '2020-02-05', 'hey');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobid` int(20) NOT NULL,
  `eid` int(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `jobdesc` varchar(700) NOT NULL,
  `vacno` int(20) DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `basicpay` varchar(100) DEFAULT NULL,
  `fnarea` varchar(100) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `ugqual` varchar(100) DEFAULT NULL,
  `pgqual` varchar(100) DEFAULT NULL,
  `profile` varchar(700) DEFAULT NULL,
  `postdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobid`, `eid`, `title`, `jobdesc`, `vacno`, `experience`, `basicpay`, `fnarea`, `location`, `industry`, `ugqual`, `pgqual`, `profile`, `postdate`) VALUES
(4, 2, 'Web Developer', 'Development of interactive websites at microfost', 5, '3', 'Rs 25000', 'Web Development', 'India,Kerala,Ernakulam', 'Software Services', 'B.Tech/B.E.', 'Not Pursuing Post Graduation', 'Knowledge in ASP.NET, SQL server', '16-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

CREATE TABLE `jobseeker` (
  `user_id` int(20) NOT NULL,
  `log_id` int(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `skills` varchar(100) DEFAULT NULL,
  `basic_edu` varchar(100) DEFAULT NULL,
  `master_edu` varchar(100) DEFAULT NULL,
  `other_qual` varchar(100) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `Resume` varchar(100) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobseeker`
--

INSERT INTO `jobseeker` (`user_id`, `log_id`, `name`, `phone`, `location`, `experience`, `skills`, `basic_edu`, `master_edu`, `other_qual`, `dob`, `Resume`, `photo`) VALUES
(7, 14, 'Akshay V K', '7894561231', 'India,West Bengal,Kalaikunda', '5', 'construction , Tax ', 'Not Pursuing Graduation', 'Not Pursuing Post Graduation', NULL, NULL, NULL, 'Akshay V K7.jpg'),
(8, 20, 'Sreelal C', '8943202726', 'India,Kerala,Kozhikode', '1', 'Experience in Php development , HTML , MYSQL, Ajax', 'B.Tech/B.E.', 'Not Pursuing Post Graduation', NULL, NULL, 'Sreelal C8.docx', 'Sreelal C8.JPG'),
(9, 21, 'abc', '1234567890', 'Iceland,Austurland,Bakkafjor ur', '1', 'sjndsnn,mnkjlnlnl  jnn ', 'B.A', 'CA', NULL, NULL, NULL, NULL),
(10, 22, 'jishnu k s', '9526919061', 'India,Kerala,Sulthan Bathery', '9+', 'engineering at kmct', 'B.Tech/B.E.', 'MBA/PGDM', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `log_id` int(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `clubs` varchar(200) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`log_id`, `email`, `password`, `name`, `city`, `clubs`, `usertype`, `status`) VALUES
(14, 'akshay@gmail.com', '$2y$10$3/cBmurjZzBYUkaLYE.Y..skkTdBT/YVCZb51Q3yWx73xd.Eyr13e', '', 'Mumbai', '', 'jobseeker', 0),
(20, 'sreelal.c@live.com', '$2y$10$MfycE3o6lgrM92f5sB8kPu7c38XQkT6FeL5YF3pgx/MM/Jy12xM5i', '', 'Pune', '', 'jobseeker', 0),
(21, 'abc@gmail.com', '$2y$10$ZWYhKrFT9B9m0CaysgRy5e1XMZ/e130v0LGkqw4QpkXbJ3WIV.YYe', '', 'Delhi', '', 'jobseeker', 1),
(22, 'jishnnuks@live.com', '$2y$10$VKC/bSdNBZWJ6PrOwnJ6xezAj1aq5VioW9YjFUsjxnAJHUkZHRWBq', '', 'Hyderabad', '', 'jobseeker', 1),
(23, 'info@microsoft.com', '$2y$10$q.xafcSTYUoKtz2FIhrf7OX1x0weMZRzY3beiqoO2NGe0PUKJlzga', '', 'Bangalore', '', 'employer', 1),
(24, 'pearl@gmail.com', '$2y$10$RvVwWRx2R/NFVtWtS3jI1OyhdxiJxirw9YV23LuBdAcLldNml6dBO', '', 'Pune', '', 'facilitator', 0),
(27, 'sourish99@gmail.com', '$2y$10$/io4GRtMzPvom0OUOSr7I.VCGr8j6IWc6zCWVK8Hwu0OCCzXwG6LS', '', 'Mumbai', '', 'facilitator', 0),
(65, 'pop@ymai.com', '$2y$10$kAcEwkxa9GCodQdjT4E1.O2/697JemMhB0QLwGXizUwhfAA3717uC', '', 'Chennai', '2', 'facilitator', 1),
(66, 'popoo@ymai.com', '$2y$10$znQNbNZBSdfiuU80WTuXaO.rNydIKBFM9TxCTGo7.CCp0rZM.vgrK', '', 'Delhi', '2', 'facilitator', 1),
(67, 'po@gy.com', '$2y$10$4s4dp2ELfbMqt8otIylJHuIPXrcY0rLdzChDzqihM8Xnk8K6WWzJG', '', 'Delhi', 'Dance', 'facilitator', 1),
(68, 'pooooooo@gy.com', '$2y$10$M/QMCDxzzNvuCIgqCcl8iO9eHDQ0UocUKgrKibFgQgX5nKCj/B3fm', '', 'Mumbai', 'Ultimate Frisbee', 'facilitator', 0),
(76, 'pearljainv@gmail.com', '$2y$10$UVi8dcZ3bkoA7MBGkUKXB.pfBTPNJYKLqUKBJLXOvTDm/cCM8cWHG', '', 'Delhi', 'Drama', 'employer', 0),
(79, 'pearoool@gmail.com', '$2y$10$3rvToKfUCT3PWldPb92SEuyxv1m2ScI08RbSkbLwdkBtOky.fsSba', '', 'Mumbai', 'Music', 'facilitator', 0),
(80, 'smiran@gm.com', '$2y$10$K2Kvx2H1YBXr7RzgFfmOf.P/Qj0FVlb.iHIYPAPqgeFqqEAymmwFS', 'simran', 'Pune', 'Electronics and Coding', 'facilitator', 0),
(81, 'nishantshedale@gmail.com', '$2y$10$Mp/awprIAA.3hm5BsqGByOWZ06XHhNjSUF9yHgpY1f1EMycd4JLcq', 'simran', 'Pune', 'Electronics and Coding', 'facilitator', 0),
(84, 'simranjaveri10@gmail.com', '$2y$10$OTt22T.E9bPfrgqpU0eu3eSVfKsIGhhlppkGgFl1IqJMn6OUW/p6i', 'simran', 'Mumbai', 'Electronics and Coding', 'facilitator', 0),
(101, 'pearljain@ymail.com', '$2y$10$kW8Ew7rkpmuSaa.ulhuJUOf2zPn9NXbPNfYHt6/.0iNBcjurncv2S', 'Pearl', 'Kolkata', 'Public Speaking', 'facilitator', 1);

-- --------------------------------------------------------

--
-- Table structure for table `selection`
--

CREATE TABLE `selection` (
  `sel_id` int(20) NOT NULL,
  `user_id` int(20) DEFAULT NULL,
  `emp_id` int(20) DEFAULT NULL,
  `job_id` int(20) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`apply_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobid`),
  ADD KEY `eid` (`eid`);

--
-- Indexes for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `log_id` (`log_id`),
  ADD KEY `log_id_2` (`log_id`);

--
-- Indexes for table `selection`
--
ALTER TABLE `selection`
  ADD PRIMARY KEY (`sel_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `job_id` (`job_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `apply_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `eid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobseeker`
--
ALTER TABLE `jobseeker`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `log_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `selection`
--
ALTER TABLE `selection`
  MODIFY `sel_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `fk_empid` FOREIGN KEY (`emp_id`) REFERENCES `employer` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_job` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`jobid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_userid` FOREIGN KEY (`user_id`) REFERENCES `jobseeker` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employer`
--
ALTER TABLE `employer`
  ADD CONSTRAINT `fk_log_id` FOREIGN KEY (`log_id`) REFERENCES `login` (`log_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `fk_eid` FOREIGN KEY (`eid`) REFERENCES `employer` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD CONSTRAINT `fk_login` FOREIGN KEY (`log_id`) REFERENCES `login` (`log_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `selection`
--
ALTER TABLE `selection`
  ADD CONSTRAINT `fk_emp` FOREIGN KEY (`emp_id`) REFERENCES `employer` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_jobs` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`jobid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `jobseeker` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
