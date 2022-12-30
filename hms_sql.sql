-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Feb 27, 2020 at 05:01 AM
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
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `Appointment_Id` int(50) NOT NULL,
  `Pt_Id` int(80) NOT NULL,
  `Doc_Id` int(100) NOT NULL,
  `Time` varchar(20) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`Appointment_Id`, `Pt_Id`, `Doc_Id`, `Time`, `Date`) VALUES
(1001, 101, 5, '11:00 AM', '2020-02-02'),
(1002, 101, 1, '11:00 am', '2020-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `Bed_Number` int(50) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Bed_Type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`Bed_Number`, `Category`, `Bed_Type`) VALUES
(1, 'General Medicine', 'Manual or electrichospital beds'),
(2, 'Pediatrics', 'Manual or electrichospital beds'),
(3, 'General Surgery', 'Surgical bed'),
(4, 'ICCU', 'Motor-driven ICU hospital beds'),
(5, 'ICU', 'Motor-driven ICU hospital beds'),
(6, 'Casualty', 'Collapsible medical hospital beds'),
(7, 'ICCU', 'Motor-driven ICU hospital beds');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Bill_Id` int(80) NOT NULL,
  `Pt_Id` int(80) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Amount` int(100) NOT NULL,
  `Paid` int(100) NOT NULL,
  `Balance` int(100) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Bill_Id`, `Pt_Id`, `Name`, `Amount`, `Paid`, `Balance`, `Date`) VALUES
(1001, 101, 'Tylenol', 180, 60, 120, '2020-01-14'),
(1002, 101, 'Norflex', 800, 250, 550, '2020-01-22'),
(1003, 102, 'Allen Gastropep Digestive Tonic', 2000, 1560, 440, '2020-02-01'),
(1004, 102, 'Tylenol', 900, 250, 650, '2020-02-12'),
(1005, 103, 'Allen Gastropep Digestive Tonic', 900, 500, 400, '2020-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Dept_Id` int(80) NOT NULL,
  `Dept_NAME` varchar(100) NOT NULL,
  `Dept_Desc` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Dept_Id`, `Dept_NAME`, `Dept_Desc`) VALUES
(101, 'Allergists/Immunologists\r\n', 'They treat immune system disorders such as asthma, eczema, food allergies, insect sting allergies, and some autoimmune diseases.'),
(102, 'Dermatologists\r\n', 'Have problems with your skin, hair, nails? Do you have moles, scars, acne, or skin allergies? Dermatologists can help.'),
(103, 'Emergency Medicine Specialists\r\n', 'These doctors make life-or-death decisions for sick and injured people, usually in an emergency room. Their job is to save lives and to avoid or lower the chances of disability.'),
(104, 'Family Physicians\r\n\r\n', 'They care for the whole family, including children, adults, and the elderly. They do routine checkups and screening tests, give you flu and immunization shots, and manage diabetes and other ongoing medical conditions.\r\n'),
(105, 'Hematologists\r\n', 'These are specialists in diseases of the blood, spleen, and lymph glands, like sickle cell disease, anemia, hemophilia, and leukemia.'),
(106, 'Neurologists\r\n', 'These are specialists in the nervous system, which includes the brain, spinal cord, and nerves. They treat strokes, brain and spinal tumors, epilepsy, Parkinson\'s disease, and Alzheimer\'s disease.'),
(107, 'Otolaryngologists.\r\n', 'They treat diseases in the ears, nose, throat, sinuses, head, neck, and respiratory system. They also can do reconstructive and plastic surgery on your head and neck.'),
(108, 'Physiatrists\r\n', 'These specialists in physical medicine and rehabilitation treat neck or back pain and sports or spinal cord injuries as well as other disabilities caused by accidents or diseases.');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_details`
--

CREATE TABLE `doctor_details` (
  `Doc_Id` int(100) NOT NULL,
  `Dname` varchar(80) NOT NULL,
  `Lname` varchar(80) NOT NULL,
  `Age` int(10) NOT NULL,
  `Blood_Grp` varchar(5) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Department` varchar(80) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone` int(20) NOT NULL,
  `Marital` varchar(20) NOT NULL,
  `City_State` varchar(20) NOT NULL,
  `Joining` date NOT NULL,
  `Leaving` date NOT NULL,
  `Visiting_Time` varchar(10) NOT NULL,
  `Visiting_Days` varchar(50) NOT NULL,
  `Uname` varchar(80) NOT NULL,
  `Password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_details`
--

INSERT INTO `doctor_details` (`Doc_Id`, `Dname`, `Lname`, `Age`, `Blood_Grp`, `Gender`, `Department`, `Address`, `Phone`, `Marital`, `City_State`, `Joining`, `Leaving`, `Visiting_Time`, `Visiting_Days`, `Uname`, `Password`) VALUES
(1, 'Aradhya', 'Sharma', 41, 'A+', 'Female', 'Neurologists', 'Andheri(West)', 1234567899, 'Married', 'Mumbai, Maharastra', '2014-05-12', '2018-05-15', '12:00 PM', 'Monday - Wednesday', 'Aradhya12', 'Aradhya12'),
(2, 'Manish', 'Soni', 35, 'O+', 'Male', 'Colon and Rectal Surgeons', 'Noida', 1122334455, 'Married', 'New Delhi', '2001-02-25', '2020-01-21', '06:00 PM', 'Wednesday - Friday', 'Manish02', 'Manish02'),
(3, ' Ashish', ' Mehra', 26, 'O+', 'Male', 'Radiologists', ' Hudco', 1234567899, 'Unmarried', ' Bhilai, CG', '2014-02-05', '2018-05-26', '06:00 PM', 'Wednesday - Friday', ' Ashish03', ' Ashish03'),
(4, 'Payal', 'Khare', 32, 'AB +', 'Female', 'Neurologists', 'New Town', 1224567899, 'Unmarried', 'Kolkata, West Bengal', '2014-08-12', '2019-06-15', '05:00 PM', 'Tuesday - Thursday', 'Payal04', 'Payal04'),
(5, ' Ayush', ' Sahu', 46, 'AB -', 'Male', 'Family Physicians', ' Salt Lake', 1231234566, 'Married', 'West Bengal', '2000-02-02', '2020-02-01', '02:00 PM', 'Tuesday - Thursday', ' Ayush05', ' Ayush05');

-- --------------------------------------------------------

--
-- Table structure for table `patientdetails`
--

CREATE TABLE `patientdetails` (
  `Pt_Id` int(80) NOT NULL,
  `Pname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `Age` int(5) NOT NULL,
  `Maritial` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone` int(20) NOT NULL,
  `City_State` varchar(20) NOT NULL,
  `Disease` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientdetails`
--

INSERT INTO `patientdetails` (`Pt_Id`, `Pname`, `Lname`, `Age`, `Maritial`, `Gender`, `Date`, `Address`, `Phone`, `City_State`, `Disease`) VALUES
(101, 'Akshita', 'Baghel', 12, 'Unmarried', 'Female', '2020-01-12', 'Sector - 10, Bhilai', 1112223334, 'Bhilai, CG', 'Cold and Cough'),
(102, 'Bindu', 'Khura', 25, 'Unmarried', 'Female', '2020-01-12', 'Nehru Nagar', 1125367788, 'Bhilai, CG', 'Neuro Tissue Damage'),
(103, 'Aman', 'Pandey', 45, 'Married', 'Male', '2020-01-29', 'Smriti Nagar', 1128587788, 'Bhilai, CG', 'Stomach (Sonography)'),
(104, 'Rishi', 'Chandel', 29, 'Unmarried', 'Male', '2020-02-01', 'Sector - 01', 1231587788, 'Bhilai, CG', 'Fever'),
(105, 'Manisha', 'Sahu', 45, 'Married', 'Female', '2020-02-05', 'Sector - 09', 1231588888, 'Bhilai, CG', 'Headache (Neuro)');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `Meds_Id` int(80) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Type` varchar(80) NOT NULL,
  `Company` text NOT NULL,
  `Ref_No` varchar(80) NOT NULL,
  `Dosage` varchar(100) NOT NULL,
  `SideEffects` text NOT NULL,
  `MFD` date NOT NULL,
  `ExpDate` date NOT NULL,
  `Storage` varchar(50) NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Availability` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`Meds_Id`, `Name`, `Type`, `Company`, `Ref_No`, `Dosage`, `SideEffects`, `MFD`, `ExpDate`, `Storage`, `Price`, `Availability`) VALUES
(101, 'Tylenol', 'Tablets', 'McNeil Consumer Healthcare', 'rg-075-004-12', 'Twice a day.', 'Diziness, Nausea', '2019-06-04', '2021-02-03', 'Dry and Cool Storage.', 'Rs. 60', 'Yes'),
(102, 'Inlife Neuro Care Capsule', 'Capules', 'Inlife Pharma Pvt Ltd', 'rg-586-221-02', 'Directed by the physician.', 'Difficulty Sleeping,Head Pain', '2020-01-14', '2022-06-12', 'Store in dry and Cool Places.', 'Rs. 400', 'Yes'),
(103, 'Allen Gastropep Digestive Tonic', 'Syrup', 'Allen Homoeo & Herbal Products Ltd', 'rg-586-888-01', 'Directed by physician', 'Nausea', '2018-02-03', '2020-09-02', 'Store in dry and Cool Places.', 'Rs. 40', 'Yes'),
(104, 'Norflex', 'Tablets', 'Williamette Pvt', 'rg-005-545-77', 'Directed by Physician', 'Dizziness,drowiness', '2020-02-19', '2022-08-27', 'Dry Place', 'Rs. 168', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `Receptionist_Id` int(80) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `Age` int(5) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone` int(20) NOT NULL,
  `City_State` varchar(50) NOT NULL,
  `Uname` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`Receptionist_Id`, `Fname`, `Lname`, `Age`, `Gender`, `Address`, `Phone`, `City_State`, `Uname`, `Password`) VALUES
(101, 'Anup', 'Kar', 41, 'Male', 'Malviya Nagar', 1122334455, 'Durg, CG', 'anup01', 'anup01'),
(102, 'Madhu', 'Chakravarty', 25, 'Female', 'Hudco', 1234569874, 'Bhilai, CG', 'Madhu02', 'Madhu02');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `Staff_Id` int(80) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `Age` int(5) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City_State` text NOT NULL,
  `Phone` int(20) NOT NULL,
  `Joining` date NOT NULL,
  `Leaving` date NOT NULL,
  `Staff_Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`Staff_Id`, `Fname`, `Lname`, `Age`, `Gender`, `Address`, `City_State`, `Phone`, `Joining`, `Leaving`, `Staff_Type`) VALUES
(101, 'Aryan', 'Mehta', 58, 'Male', 'Hudco', 'Bhilai, CG', 1111222244, '2008-02-04', '2019-06-11', 'Wardboy'),
(102, 'Pinki', 'Raj', 29, 'Female', 'Sector- 10', 'Bhilai, CG', 1472583699, '2018-02-10', '2021-09-10', 'Nurse');

-- --------------------------------------------------------

--
-- Table structure for table `updatepatients`
--

CREATE TABLE `updatepatients` (
  `Pt_Id` int(80) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Ref_No` varchar(80) NOT NULL,
  `Dosage` varchar(100) NOT NULL,
  `Quantity` varchar(50) NOT NULL,
  `SideEffects` text NOT NULL,
  `Company` text NOT NULL,
  `Details` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `updatepatients`
--

INSERT INTO `updatepatients` (`Pt_Id`, `Name`, `Ref_No`, `Dosage`, `Quantity`, `SideEffects`, `Company`, `Details`) VALUES
(101, 'Tylenol', 'rg-075-004-12', 'Twice a day.', '100mg', 'Dizziness, nausea', 'Tylenol', 'For 5 days.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`Appointment_Id`),
  ADD KEY `fk_pt` (`Pt_Id`),
  ADD KEY `fk_doc` (`Doc_Id`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`Bed_Number`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Bill_Id`),
  ADD KEY `Pt_Id` (`Pt_Id`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Dept_Id`);

--
-- Indexes for table `doctor_details`
--
ALTER TABLE `doctor_details`
  ADD PRIMARY KEY (`Doc_Id`);

--
-- Indexes for table `patientdetails`
--
ALTER TABLE `patientdetails`
  ADD PRIMARY KEY (`Pt_Id`),
  ADD UNIQUE KEY `Phone` (`Phone`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`Meds_Id`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD UNIQUE KEY `Company` (`Company`,`Ref_No`,`Dosage`,`SideEffects`) USING HASH;

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`Receptionist_Id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`Staff_Id`);

--
-- Indexes for table `updatepatients`
--
ALTER TABLE `updatepatients`
  ADD PRIMARY KEY (`Pt_Id`),
  ADD UNIQUE KEY `Pt_Id` (`Pt_Id`),
  ADD KEY `fk_meds` (`Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `Appointment_Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `Bed_Number` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `Bill_Id` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `Dept_Id` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `doctor_details`
--
ALTER TABLE `doctor_details`
  MODIFY `Doc_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patientdetails`
--
ALTER TABLE `patientdetails`
  MODIFY `Pt_Id` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `Meds_Id` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `Receptionist_Id` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `Staff_Id` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `updatepatients`
--
ALTER TABLE `updatepatients`
  MODIFY `Pt_Id` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `fk_doc` FOREIGN KEY (`Doc_Id`) REFERENCES `doctor_details` (`Doc_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt` FOREIGN KEY (`Pt_Id`) REFERENCES `patientdetails` (`Pt_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_medci` FOREIGN KEY (`Name`) REFERENCES `pharmacy` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pat` FOREIGN KEY (`Pt_Id`) REFERENCES `patientdetails` (`Pt_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `updatepatients`
--
ALTER TABLE `updatepatients`
  ADD CONSTRAINT `fk_meds` FOREIGN KEY (`Name`) REFERENCES `pharmacy` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ptt` FOREIGN KEY (`Pt_Id`) REFERENCES `patientdetails` (`Pt_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
