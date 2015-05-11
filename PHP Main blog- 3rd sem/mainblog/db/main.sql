-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 29, 2014 at 04:32 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `main`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_members`
--

CREATE TABLE IF NOT EXISTS `blog_members` (
`memberID` int(11) unsigned NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `blog_members`
--

INSERT INTO `blog_members` (`memberID`, `username`, `password`, `email`) VALUES
(1, 'Demo', '$2a$12$TF8u1maUr5kADc42g1FB0ONJDEtt24ue.UTIuP13gij5AHsg5f5s2', 'demo@demo.com'),
(2, 'zeus', '$2y$10$M6U8my7X7kHCXTtWixhgNOiJLQ4FdoknuV97.Z8TF7v3jFv9j8LKa', 'zeus@gmail.com'),
(8, 'JAPNAM', '$2y$10$oyk6m3YNB.dgZCLQkroVuuNO7zz.scPamUXJzysPeKMKWxwVXZQDm', 'japnam.singh@gmail.com'),
(9, 'manas', '$2y$10$Ms8tht3jhDzODX3S931eMOfzzum7AzAYzJyFNaDPgNErtQr20b84u', 'manasgambhir25@gmail.com'),
(10, 'random', '$2y$10$eMsT8SECIVLRYBqTQcPt6.1uOiRyZlsk1/q.6sM71svTH3xMUNqVa', 'random.cc@gmail.com'),
(11, 'user1', '$2y$10$vT9sCuoHB.p5anXx69RqjetLI3BxIGSkWf//rufaQU8AUUrYhjIGa', 'usercc@gmail.com'),
(12, 'demo3', '$2y$10$7m0aZ1BKcryiPPcE8KaoTefkh35geidO7zfKifEG8eTScXd74ME7S', 'demo3@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE IF NOT EXISTS `blog_posts` (
`postID` int(11) unsigned NOT NULL,
  `postTitle` varchar(255) DEFAULT NULL,
  `postDesc` text,
  `postCont` text,
  `postDate` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`postID`, `postTitle`, `postDesc`, `postCont`, `postDate`) VALUES
(1, 'New York City is building 10,000 internet pylons for free public Wi-Fi', '<p>f a new standard is being used, it will take a long time for consumer devices to support it — after all, many smartphones still don''t support the 802.11ac Wi-Fi standard that has already been around for a couple of years. Perhaps more important is if the network''s capacity or speeds will be easily upgradeable via firmware updates or minimal hardware upgrades, as gigabit speeds may be very fast now, but will surely be considered slow in just a few short years./p>', '\r\n<p>There are a lot of unanswered questions here, but the initiative at first blush is one of the largest and most expansive of any municipality — and it won''t be launching quickly. The first LinkNYC structures will be operational by the second half of next year, with the ultimate goal of up to 10,000 links installed across all five boroughs.</p>', '2014-11-11 00:00:00'),
(2, 'Electric vehicles move closer to widespread use, experts say', '<p>A new free high-speed charging station north of Toronto may be a sign that the barriers to widespread adoption of electric vehicles in Canada are being dismantled.  \r\n\r\n"I expect that within the next five to 10 years, we''ll have moved significantly along [on] some of them. And we''ll continue to move forward, because the electrified vehicle, I think, is something that''s here," says Charlotte Yates, dean of social sciences at McMaster University in Hamilton.</p>', '\r\n<p>It must be wonderful. Does anybody else feel jealous and aroused and worried? Is today''s hectic lifestyle making you tense and impatient? Soothe us with sweet lies. That''s right, baby. I ain''t your loverboy Flexo, the guy you love so much. You even love anyone pretending to be him!</p>\r\n<ul>\r\n<li>Goodbye, friends. I never thought I''d die like this. But I always really hoped.</li>\r\n<li>They''re like sex, except I''m having them!</li>\r\n<li>Come, Comrade Bender! We must take to the streets!</li>\r\n</ul>\r\n<h3>Anthology of Interest I</h3>\r\n<p>Hey, whatcha watching? They''re like sex, except I''m having them! Well I''da done better, but it''s plum hard pleading a case while awaiting trial for that there incompetence. Yes, except the Dave Matthews Band doesn''t rock. I suppose I could part with ''one'' and still be feared&hellip;</p>\r\n<h4>Teenage Mutant Leela''s Hurdles</h4>\r\n<p>Enter PowerStream, a community-owned energy company that provides power and services to more than 370,000 customers in communities north of Toronto.\r\n\r\nPowerStream opened a new electric vehicle charging station this month in Vaughan, a suburb of Toronto. The charger is located in the parking lot of PowerStream''s headquarters, just off the busy Highway 400, a key commuter highway and route to Ontario''s cottage country.\r\n\r\nWhat''s so special about this station? Well, to start with, it''s a level 3 charging unit.  \r\n\r\n''Maybe when the power goes out or maybe when electricity prices are high, you can use your electric vehicle as an alternative in order to charge your home, to provide power to your home.''\r\n- Martin Rovers, director of energy services at PowerStream\r\nThat means it''s capable of powering up most electric cars to an 80 per cent charge in little more than 15 minutes.\r\n\r\n"You drive up on your way, 15 minutes later you''re moving on again," says Martin Rovers, director of energy services at PowerStream.\r\n\r\nBy our count, including PowerStream''s new unit, there are only about two dozen level 3 chargers in all of Canada.</p>', '2014-11-16 23:10:35'),
(3, 'Android 5.0, Lollipop\r\nA sweet new take on Android', '<p>Material Design\r\n\r\nA bold, colorful, and responsive UI design for consistent, intuitive experiences across all your devices\r\n\r\nResponsive, natural motion, realistic lighting and shadows, and familiar visual elements make it easier to navigate your device\r\nVivid new colors, typography, and edge-to-edge imagery help to focus your attention.</p>', '\r\n<p>Notifications\r\n\r\nNew ways to control when and how you receive messages - only get interrupted when you want to be\r\n\r\nView and respond to messages directly from your lock screen. Includes the ability to hide sensitive content for these notifications\r\nFor fewer disruptions, turn on Priority mode via your device’s volume button so only certain people and notifications get through. Or schedule recurring downtime like 10pm to 8am when only Priority notifications can get through\r\nWith Lollipop, incoming phone calls won’t interrupt what you’re watching or playing. You can choose to answer the call or just keep doing what you’re doing</p>', '2014-11-05 23:20:24'),
(6, 'Apple releases iOS 8.1.1 to improve performance on old products', '<p>Apple''s just rolled out iOS 8.1.1 for iPhone, iPad, and iPod touch. Aside from the usual promise of bug fixes and security updates, Apple says the latest release should speed things up on iPad 2 and iPhone 4S, two of the company''s aging devices. We''ve seen it several times: installing major new versions of iOS on old hardware can often result in degraded performance, making the user experience slower and worse than it had been before. That was true with iOS 7 last year, and now again Apple is working to make things better for customers still holding onto old products.</p>', '\r\n<p>There''s also an update on the Mac side: Apple has released OS X 10.10.1, its first update to Yosemite. Apple says the release should result in better Wi-Fi reliability, improved Microsoft Exchange connections, and fixes for reliability in Mail when sending messages using "certain" email providers. And if you use Apple''s Back to My Mac feature, OS X 10.10.1 should make that work better in Yosemite, as well. You can download the latest release from the updates tab at Apple''s Mac App Store.</p>', '2013-11-05 08:28:35'),
(8, 'Sample post with Image', '<p><img src="http://pamdanielsblogs.files.wordpress.com/2013/03/canada-day-brampton.jpg" alt="brampton" width="427" height="284" /></p>', '<p><strong>Brampton day celebrations</strong></p>', '2014-11-17 19:31:50'),
(9, 'Nexus 6 Review Video Here :-', '<p><iframe src="//www.youtube.com/embed/RoAPTdvgAJg" width="425" height="350"></iframe></p>', '<p><strong>check out the Nexus 6 review video here from mkbhd.</strong></p>', '2014-11-17 19:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `Misc`
--

CREATE TABLE IF NOT EXISTS `Misc` (
  `faqs` text NOT NULL,
  `privacy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Misc`
--

INSERT INTO `Misc` (`faqs`, `privacy`) VALUES
('<h1>Frequently Asked Questions: </h1>\r\n<h1>What is a MicroBlogging?</h1>\r\n        <p>It is the activity or practice of making short, frequent posts to a microblog.This blogging web site provides you the platform to do so.  </p>\r\n        \r\n        <h1>How to login?</h1>\r\n        <p>\r\n            CLick on the register here link and fill your login details. Use those login details to login by filling up username and password.\r\n        </p>\r\n        \r\n        <h1>How to post images and videos? </h1>\r\n        <p>CLick on import and then select images or videos.</p>\r\n        \r\n        <h1>How to Add a post?</h1>\r\n        <p>Use the add post option for adding a post.</p>\r\n        \r\n        <h1>How to Delete post?</h1>\r\n        <p>Use the delete post option for deleting a post.</p>', ''),
('', ''),
('', '<h1>Privacy Policy</h1>\r\n\r\n\r\n<h1>     information that you provide when completing your profile on our website (including your name, profile pictures).</h1>\r\n\r\n<h1>      information that you provide to us for the purpose of subscribing to our email notifications and/or newsletters (including your name and email address). </h1>\r\n\r\n<h1>      information that you provide to us when using the services on our website, or that is generated in the course of the use of those services (including the timing, frequency and pattern of service use).</h1>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_members`
--
ALTER TABLE `blog_members`
 ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
 ADD PRIMARY KEY (`postID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_members`
--
ALTER TABLE `blog_members`
MODIFY `memberID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
MODIFY `postID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
