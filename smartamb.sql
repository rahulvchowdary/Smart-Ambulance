-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2020 at 07:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `excel`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambdet`
--

CREATE TABLE `ambdet` (
  `ambname` varchar(100) NOT NULL,
  `ambemail` varchar(100) NOT NULL,
  `ambpass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ambdet`
--

INSERT INTO `ambdet` (`ambname`, `ambemail`, `ambpass`) VALUES
('Rahul', 'rahulvchowdary@gmail.com', 'rahul1511');

-- --------------------------------------------------------

--
-- Table structure for table `hosdet`
--

CREATE TABLE `hosdet` (
  `hosname` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `hosphno` varchar(100) NOT NULL,
  `docname` varchar(100) NOT NULL,
  `docdesig` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hosdet`
--

INSERT INTO `hosdet` (`hosname`, `location`, `hosphno`, `docname`, `docdesig`) VALUES
('Contenential Hospital', 'Gachibowli', '8328616755', 'Depthi nandhan', 'ORTHOPEDIC'),
('Contenential Hospital', 'Gachibowli', '8328616755', 'Kailas Mirche', 'NEUROLOGIST'),
('Contenential Hospital', 'Gachibowli', '8328616755', 'Joythi Kankala', 'GYNECOLOGIST'),
('Contenential Hospital', 'Gachibowli', '8328616755', 'Meeraji Rao', 'CARDIOLOGY'),
('Sun Shine Hospital', 'Gachibowli', '8328616755', 'Sund', 'CARDIOLOGY'),
('Sun Shine Hospital', 'Gachibowli', '8328616755', 'Adharsh annapareddy', 'ORTHOPEDIC'),
('Sun Shine Hospital', 'Gachibowli', '8328616755', 'Anitha Kotha', 'NEUROLOGIST'),
('Sun Shine Hospital', 'Gachibowli', '8328616755', 'Bhavani', 'GYNECOLOGIST'),
('Sun Shine Hospital', 'Gachibowli', '8328616755', 'Vikram Sharma', 'GENERAL PHYSICIAN'),
('Padmaja Hospital', 'Kukatpally', '8328616755', 'Sundar', 'GENERAL PHYSICIAN'),
('Padmaja Hospital', 'Kukatpally', '8328616755', 'Vandhana', 'GYNECOLOGIST'),
('Padmaja Hospital', 'Kukatpally', '8328616755', 'Rahul Namburi', 'NEUROLOGIST'),
('Padmaja Hospital', 'Kukatpally', '8328616755', 'Lalitha agarwal', 'CARDIOLOGY'),
('Padmaja Hospital', 'Kukatpally', '8328616755', 'Prashanth', 'ORTHOPEDIC'),
('Icon  Hospital', 'Kukatpally', '8328616755', 'Madhan mohan', 'ORTHOPEDIC'),
('Icon  Hospital', 'Kukatpally', '8328616755', 'Sitha', 'NEUROLOGIST'),
('Icon  Hospital', 'Kukatpally', '8328616755', 'Praneetha', 'GYNECOLOGIST'),
('Icon  Hospital', 'Kukatpally', '8328616755', 'papa rao', 'GENERAL PHYSICIAN'),
('Apollo Hospital', 'Banjara Hillls', '8328616755', 'Srinivas Yadavali', 'GENERAL PHYSICIAN'),
('Apollo Hospital', 'Banjara Hillls', '8328616755', 'Priyamvadha', 'GYNECOLOGIST'),
('Apollo Hospital', 'Banjara Hillls', '8328616755', 'Badri Narayana', 'CARDIOLOGY'),
('Apollo Hospital', 'Banjara Hillls', '8328616755', 'Mohan Krishnna', 'ORTHOPEDIC'),
('Aster prime Hospital', 'Ameerpet', '8328616755', 'Satish Reddy', 'ORTHOPEDIC'),
('Aster prime Hospital', 'Ameerpet', '8328616755', 'Raghu c', 'CARDIOLOGY'),
('Aster prime Hospital', 'Ameerpet', '8328616755', 'B.S.V raju', 'NEUROLOGIST'),
('Aster prime Hospital', 'Ameerpet', '8328616755', 'A Ashwini', 'GYNECOLOGIST'),
('Aster prime Hospital', 'Ameerpet', '8328616755', 'Srujan Kumar', 'GENERAL PHYSICIAN'),
('Kims Hospital', 'Secundrabad', '8328616755', 'Ksnth Kumar Reddy', 'GENERAL PHYSICIAN'),
('Kims Hospital', 'Secundrabad', '8328616755', 'Neelima Kanth', 'GYNECOLOGIST'),
('Kims Hospital', 'Secundrabad', '8328616755', 'E.A Varalakshmi', 'NEUROLOGIST'),
('Kims Hospital', 'Secundrabad', '8328616755', 'P.A Jiwani', 'CARDIOLOGY'),
('Kims Hospital', 'Secundrabad', '8328616755', 'Srinivas Kasha', 'ORTHOPEDIC'),
('Aditya Hospital', 'Uppal Kalan', '8328616755', 'Shyam Sunder', 'ORTHOPEDIC'),
('Aditya Hospital', 'Uppal Kalan', '8328616755', 'Praveen Kumar Yadav', 'NEUROLOGIST'),
('Aditya Hospital', 'Uppal Kalan', '8328616755', 'A.Suresh', 'GENERAL PHYSICIAN'),
('Gleneagles Global Hospital', 'Abids', '8328616755', 'T.Srinivasulu', 'GENERAL PHYSICIAN'),
('Gleneagles Global Hospital', 'Abids', '8328616755', 'A.Shanthi', 'GYNECOLOGIST'),
('Gleneagles Global Hospital', 'Abids', '8328616755', 'Ramakrishna Chowdary.Y', 'NEUROLOGIST'),
('Gleneagles Global Hospital', 'Abids', '8328616755', 'R.V.Vijay Bhaskar', 'CARDIOLOGY'),
('Gleneagles Global Hospital', 'Abids', '8328616755', 'Vishnu Manyam', 'ORTHOPEDIC'),
('ZOI Hospital', 'Attapur', '8328616755', 'Hemachand Balla', 'ORTHOPEDIC'),
('ZOI Hospital', 'Attapur', '8328616755', 'Nazia Khanam', 'GYNECOLOGIST'),
('ZOI Hospital', 'Attapur', '8328616755', 'Aashritha Mekala', 'GENERAL PHYSICIAN'),
('KS Hospital', 'Bowenpally', '8328616755', 'Sara Smitha', 'GENERAL PHYSICIAN'),
('KS Hospital', 'Bowenpally', '8328616755', 'Rahul Reddy', 'ORTHOPEDIC'),
('KS Hospital', 'Bowenpally', '8328616755', 'Aluveni', 'GYNECOLOGIST'),
('Srikara Ortho & Multi Speciality Hospital', 'Chanda Nagar', '8328616755', 'Madhu Thumu', 'ORTHOPEDIC'),
('Srikara Ortho & Multi Speciality Hospital', 'Chanda Nagar', '8328616755', 'K.Naga Murali', 'CARDIOLOGY'),
('Srikara Ortho & Multi Speciality Hospital', 'Chanda Nagar', '8328616755', 'Sreenivas Mukkamala', 'NEUROLOGIST'),
('Hope trust Hospital', 'Banjara Hillls', '8328616755', 'Va Prasad', 'GENERAL PHYSICIAN'),
('Hope trust Hospital', 'Banjara Hillls', '8328616755', 'Ashok Kumar', 'NEUROLOGIST'),
('Hope trust Hospital', 'Banjara Hillls', '8328616755', 'Kiran', 'GYNECOLOGIST'),
('Russh Hospital', 'Haifzpet', '8328616755', 'N.Ramrao', 'GENERAL PHYSICIAN'),
('Russh Hospital', 'Haifzpet', '8328616755', 'sharath chandra', 'ORTHOPEDIC'),
('Russh Hospital', 'Haifzpet', '8328616755', 'H.Rahul', 'NEUROLOGIST'),
('Russh Hospital', 'Haifzpet', '8328616755', 'Kranthi Reddy', 'GYNECOLOGIST'),
('Neelima Hospital', 'Bharat Nagar', '8328616755', 'Ajit Kumar Azad', 'GENERAL PHYSICIAN'),
('Neelima Hospital', 'Bharat Nagar', '8328616755', 'Shiva.B', 'ORTHOPEDIC'),
('Neelima Hospital', 'Bharat Nagar', '8328616755', 'Ramu Kila', 'CARDIOLOGY'),
('Neelima Hospital', 'Bharat Nagar', '8328616755', 'Matta Gopi Nath', 'NEUROLOGIST'),
('Neelima Hospital', 'Bharat Nagar', '8328616755', 'Roopalata', 'GYNECOLOGIST'),
('Apollo', 'Himayat nagar', '8328616755', 'Sunil Kumar', 'CARDIOLOGY'),
('Apollo', 'Himayat nagar', '8328616755', 'Deepika Sirineni', 'NEUROLOGIST'),
('Apollo', 'Himayat nagar', '8328616755', 'jagadish', 'GENERAL PHYSICIAN'),
('Gleneagles Global', 'Lakdikapul', '8328616755', 'Vishnu Manyam', 'ORTHOPEDIC'),
('Gleneagles Global', 'Lakdikapul', '8328616755', 'R. V. Vijay Bhaskar', 'CARDIOLOGY'),
('Nakshatra', 'L B Nagar', '8328616755', 'Vijaya Lakshmi', 'NEUROLOGIST'),
('Nakshatra', 'L B Nagar', '8328616755', 'Archana Reddy', 'GYNECOLOGIST'),
('Nakshatra', 'L B Nagar', '8328616755', 'Krishna Tulasi', 'GENERAL PHYSICIAN'),
('Citizens specasility hospitals', 'Lingampally', '8328616755', 'Gk Sudhakar Reddy', 'ORTHOPEDIC'),
('Citizens specasility hospitals', 'Lingampally', '8328616755', 'Hari Varma', 'CARDIOLOGY'),
('Citizens specasility hospitals', 'Lingampally', '8328616755', 'Aparna Vijay Kumar', 'NEUROLOGIST'),
('Citizens specasility hospitals', 'Lingampally', '8328616755', 'Radhika', 'GYNECOLOGIST'),
('Citizens specasility hospitals', 'Lingampally', '8328616755', 'Sandeep Ghanth', 'GENERAL PHYSICIAN'),
('S.V.K', 'Shahpur Nagar', '8328616755', 'Anjani Kumar', 'ORTHOPEDIC'),
('S.V.K', 'Shahpur Nagar', '8328616755', 'Varalakshmi', 'CARDIOLOGY'),
('S.V.K', 'Shahpur Nagar', '8328616755', 'Matta Gopi Reddy', 'NEUROLOGIST'),
('S.V.K', 'Shahpur Nagar', '8328616755', 'M.R.Rao', 'GENERAL PHYSICIAN'),
('Aware Gleneagles Global Hospitals', ' L B Nagar', '8328616755', 'Ashwini Kumar', 'ORTHOPEDIC'),
('Aware Gleneagles Global Hospitals', ' L B Nagar', '8328616755', 'Rajeev Garg', 'CARDIOLOGY'),
('Aware Gleneagles Global Hospitals', ' L B Nagar', '8328616755', 'Suresh Reddy', 'NEUROLOGIST'),
('Aware Gleneagles Global Hospitals', ' L B Nagar', '8328616755', 'Santooshi', 'GYNECOLOGIST'),
('Aware Gleneagles Global Hospitals', ' L B Nagar', '8328616755', 'Ahmer Ali Khan', 'GENERAL PHYSICIAN'),
('American oncology', 'Lingampally', '8328616755', 'Kishore B Reddy', 'ORTHOPEDIC'),
('American oncology', 'Lingampally', '8328616755', 'Shravani', 'CARDIOLOGY'),
('American oncology', 'Lingampally', '8328616755', 'Radhika ', 'GYNECOLOGIST'),
('American oncology', 'Lingampally', '8328616755', 'Koteshwar Rao', 'GENERAL PHYSICIAN'),
('Vijaya nursing home', 'Chanda Nagar', '8328616755', 'Kiran Mayee', 'GYNECOLOGIST'),
('Vijaya nursing home', 'Chanda Nagar', '8328616755', 'Saritha Kumarapu', 'GENERAL PHYSICIAN'),
('Bhaskara ', 'Shahpur Nagar', '8328616755', 'Sanjay Dutt', 'ORTHOPEDIC'),
('Bhaskara ', 'Shahpur Nagar', '8328616755', 'Sanveer kumar', 'NEUROLOGIST'),
('Bhaskara ', 'Shahpur Nagar', '8328616755', 'Suvarashila', 'GYNECOLOGIST'),
('Bhaskara ', 'Shahpur Nagar', '8328616755', 'Uady Nilla', 'GENERAL PHYSICIAN'),
('Mannkind ', 'Abids', '8328616755', 'Bharat Kumar ', 'ORTHOPEDIC'),
('Mannkind ', 'Abids', '8328616755', 'Vshnu Mannaya', 'CARDIOLOGY'),
('Mannkind ', 'Abids', '8328616755', 'Ramkrishna ', 'NEUROLOGIST'),
('Mannkind ', 'Abids', '8328616755', 'Sirresh Reddy', 'GYNECOLOGIST'),
('Mannkind ', 'Abids', '8328616755', 'Ramkrishna ', 'GENERAL PHYSICIAN'),
('Laxshmi', 'Himayat Nagar', '8328616755', 'Sri Ram Chandra', 'ORTHOPEDIC'),
('Laxshmi', 'Himayat Nagar', '8328616755', 'Pushpalatha Reddy', 'NEUROLOGIST'),
('Laxshmi', 'Himayat Nagar', '8328616755', 'Mohammad', 'GENERAL PHYSICIAN'),
('Sai neha', 'Haifzpet', '8328616755', 'Venugopa Ragi', 'CARDIOLOGY'),
('Sai neha', 'Haifzpet', '8328616755', 'Sri Devi Ragi', 'NEUROLOGIST'),
('Sai neha', 'Haifzpet', '8328616755', 'Shanthi ', 'GENERAL PHYSICIAN'),
('Gems ', 'Lakadikapul', '8328616755', 'Saba Syed', 'ORTHOPEDIC'),
('Gems ', 'Lakadikapul', '8328616755', 'Sayed Shujjaudhin', 'NEUROLOGIST'),
('Gems ', 'Lakadikapul', '8328616755', 'Abdul Gufur ', 'GYNECOLOGIST'),
('Gems ', 'Lakadikapul', '8328616755', 'Rehman', 'GENERAL PHYSICIAN'),
('Seha', 'Bowenpally', '8328616755', 'Raghu Ram', 'CARDIOLOGY'),
('Seha', 'Bowenpally', '8328616755', 'Ankur Sangal', 'NEUROLOGIST'),
('Seha', 'Bowenpally', '8328616755', 'Mangesh Doundey', 'GENERAL PHYSICIAN'),
('Oliva', 'Attapur', '8328616755', 'Vijaya lakshmi', 'CARDIOLOGY'),
('Oliva', 'Attapur', '8328616755', 'Narashima', 'NEUROLOGIST'),
('Oliva', 'Attapur', '8328616755', 'Shiva kodeyti', 'GYNECOLOGIST'),
('Oliva', 'Attapur', '8328616755', 'Neha', 'GENERAL PHYSICIAN'),
('Prystin', 'Secundrabad', '8328616755', 'Shivaji patil', 'ORTHOPEDIC'),
('Prystin', 'Secundrabad', '8328616755', 'Dhanujay ch', 'CARDIOLOGY'),
('Prystin', 'Secundrabad', '8328616755', 'Srinivas rao', 'GYNECOLOGIST'),
('Prystin', 'Secundrabad', '8328616755', 'Muralidhar', 'GENERAL PHYSICIAN');

-- --------------------------------------------------------

--
-- Table structure for table `patdet`
--

CREATE TABLE `patdet` (
  `patname` varchar(100) NOT NULL,
  `patsex` varchar(100) NOT NULL,
  `patage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patdet`
--

INSERT INTO `patdet` (`patname`, `patsex`, `patage`) VALUES
('Varun', 'Male', '18'),
('Manish', 'Male', '18');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
