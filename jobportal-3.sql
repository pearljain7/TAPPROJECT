-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2020 at 06:41 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `adm_name`, `adm_pass`) VALUES
(1, 'admin', 'password');

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`eid`, `log_id`, `ename`, `etype`, `industry`, `address`, `pincode`, `executive`, `phone`, `location`, `profile`, `logo`) VALUES
(2, 23, 'Microsoft', 'Company', 'Software Services', 'Microsoft, Bangalore, Karnataka', '456987', 'Arun', '78945612332', 'India,Karnataka,Bommasandra', NULL, NULL);

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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobid`, `eid`, `title`, `jobdesc`, `vacno`, `experience`, `basicpay`, `fnarea`, `location`, `industry`, `ugqual`, `pgqual`, `profile`, `postdate`) VALUES
(4, 2, 'Web Developer', 'Development of interactive websites at microfost', 5, '3', 'Rs 25000', 'Web Development', 'India,Kerala,Ernakulam', 'Software Services', 'B.Tech/B.E.', 'Not Pursuing Post Graduation', 'Knowledge in ASP.NET, SQL server', '16-04-16');

--
-- Dumping data for table `jobseeker`
--

INSERT INTO `jobseeker` (`user_id`, `log_id`, `name`, `phone`, `location`, `experience`, `skills`, `basic_edu`, `master_edu`, `other_qual`, `dob`, `Resume`, `photo`) VALUES
(7, 14, 'Akshay V K', '7894561231', 'India,West Bengal,Kalaikunda', '5', 'construction , Tax ', 'Not Pursuing Graduation', 'Not Pursuing Post Graduation', NULL, NULL, NULL, 'Akshay V K7.jpg'),
(8, 20, 'Sreelal C', '8943202726', 'India,Kerala,Kozhikode', '1', 'Experience in Php development , HTML , MYSQL, Ajax', 'B.Tech/B.E.', 'Not Pursuing Post Graduation', NULL, NULL, 'Sreelal C8.docx', 'Sreelal C8.JPG'),
(9, 21, 'abc', '1234567890', 'Iceland,Austurland,Bakkafjor ur', '1', 'sjndsnn,mnkjlnlnl  jnn ', 'B.A', 'CA', NULL, NULL, NULL, NULL),
(10, 22, 'jishnu k s', '9526919061', 'India,Kerala,Sulthan Bathery', '9+', 'engineering at kmct', 'B.Tech/B.E.', 'MBA/PGDM', NULL, NULL, NULL, NULL);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
