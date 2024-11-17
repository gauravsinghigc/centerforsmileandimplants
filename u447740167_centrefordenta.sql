-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 17, 2024 at 09:10 AM
-- Server version: 10.11.9-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u447740167_centrefordenta`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `AboutUsPageId` int(100) NOT NULL,
  `AboutUsPageName` varchar(1000) NOT NULL,
  `AboutUsPageImage` varchar(1000) NOT NULL,
  `AboutUsPageDescriptions` longtext NOT NULL,
  `AboutUsPageStatus` varchar(10) NOT NULL DEFAULT '1',
  `AboutUsPageCreatedAt` varchar(100) NOT NULL,
  `AboutUsPageUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`AboutUsPageId`, `AboutUsPageName`, `AboutUsPageImage`, `AboutUsPageDescriptions`, `AboutUsPageStatus`, `AboutUsPageCreatedAt`, `AboutUsPageUpdatedAt`) VALUES
(5, 'MlRVaEFhbHlXTmJlSFpjR09NSVVNQT09', 'Q0pMOUJQeXIwaW0wNURFdTR6SkdrUT09_Sub-Page__16_Dec_2021_10_12_05.png', 'anJUZHlVallQaU9XQ2NwRDFPbTZmVVYwRExwQm01TnZsaWVTd3FMcGIrY2h1c3htbjRGNS83VFJ4QXEwKzlkeXpUc3hWeEZHaTcvSUcvK3RrdFBqSTFVSXpRSGlxZzQ1NHF3OVRsekdyV2VxUHZOeGtKaVRCVjBTKzRIWHZrZk02Z3VrVUhYeFB6REMrVll3VENNL29ibXFSSHFDZ3dTajRZRTRkYlFEWlhJYk5TS1hidVlUYkpZRGlEYUVKMTlWNlpIZ2pxVStzUmZjVE0xMUgrbDBHZUpPMExvSnFBK3hDOHFXQ2h3ZWI5K3hwMGRpYi9GQ3drZ0lBU0ZIZEJaYVY5VUNIdk1UbEdGdVZiSFJ4aGZlVlFWeVl4STUySEgwdVFKMTBuNnpLVVJabzRpRXpWS2pRaG9odTcvYjFyOTNkVXQycG9icTdnbC9lblJaY01lbms2bTQzazRHZnhzTlg5OGhKT1hiWkNoKzJCWDdQWnRaeVQwUCtYYXlOTjJja3h4OTQ4WnRFNURjeENJUnJweXN2ZmNMQ3U1bEY4ejhtbmNOUGMrdGxVdVZhbjhBNWJubjJ4VHRLVXVXNDM3cDNpeGtlZ24xWXNPUXVIbjdBNWo4Y0JUUk0veld2cDcwTWZoZStnb3pVOU1jYkxZcW1Mc2lxQTcwdG1Qakw4UE1rUks3dzZFWVJ1OTIvT3RJY29kV2FRPT0=', '1', '16 Dec, 2021', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `AppointmentId` int(100) NOT NULL,
  `AppointmentPatientId` varchar(100) NOT NULL,
  `AppointmentSpecialitiesId` varchar(100) NOT NULL,
  `Apppointmentdate` varchar(100) NOT NULL,
  `AppointmentTime` varchar(100) NOT NULL,
  `AppointmentNotes` varchar(1000) NOT NULL,
  `AppointmentCreatedAt` varchar(100) NOT NULL,
  `AppointmentUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_contact_details`
--

CREATE TABLE `app_contact_details` (
  `AppContactDetailsId` int(100) NOT NULL,
  `AppContactDetailsName` varchar(100) NOT NULL,
  `AppContcatDetailType` varchar(100) NOT NULL,
  `AppContactDetailsValue` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_contact_details`
--

INSERT INTO `app_contact_details` (`AppContactDetailsId`, `AppContactDetailsName`, `AppContcatDetailType`, `AppContactDetailsValue`) VALUES
(7, 'Qnh5NkFUekx2VjRtRERINjZVQndmQT09', 'dWJGSFd1U1FKVWVoTUNzc3JnVkRCdz09', 'UHlQQlB4L2R3WUtxck84MlpRU003UT09'),
(8, 'Qnh5NkFUekx2VjRtRERINjZVQndmQT09', 'OUtHb2Rkbyt5QnlVYStRZG5NYy9NZz09', 'bXJVVU5VWURuY3g4ZTFhc1UrWXpBSHV5VmVqUDFCaUVNN1ZQMEJIK2pTRT0='),
(9, 'OWtsV0pUVzlwNkxZL3ZDaS9POU0vUT09', 'RHdCa0lvazBhVWdkWEFCQWp6V0VyZz09', 'aDdZaDdMWS80YXpGaVMxZWNnKzFteGZjUzJwL1ltdHEzOWlHQVByMmU0az0='),
(10, 'Q2MvbDdoR3ZqVlI1TUJkdVJHQlQ5QT09', 'OUtHb2Rkbyt5QnlVYStRZG5NYy9NZz09', 'UGU4cUVUeWp6Z1p4RjJjdzQ5bkVwQT09');

-- --------------------------------------------------------

--
-- Table structure for table `clinictimeschedule`
--

CREATE TABLE `clinictimeschedule` (
  `ClinicTimeId` int(100) NOT NULL,
  `ClinicTimeDay` varchar(100) NOT NULL,
  `ClinicMorningTimeFrom` varchar(100) NOT NULL,
  `ClinicEveningTimeFrom` varchar(100) NOT NULL,
  `ClinicMorningTimeTo` varchar(100) NOT NULL,
  `ClinicEveningTimeTo` varchar(100) NOT NULL,
  `ClinicTimeOpenStatus` varchar(100) NOT NULL,
  `ClinicTimeNotes` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clinictimeschedule`
--

INSERT INTO `clinictimeschedule` (`ClinicTimeId`, `ClinicTimeDay`, `ClinicMorningTimeFrom`, `ClinicEveningTimeFrom`, `ClinicMorningTimeTo`, `ClinicEveningTimeTo`, `ClinicTimeOpenStatus`, `ClinicTimeNotes`) VALUES
(1, 'SUNDAY', '10:00', '17:00', '14:00', '21:00', '1', 'Occasionally open'),
(2, 'MONDAY', '10:00', '17:00', '14:00', '21:00', '1', ''),
(3, 'TUESDAY', '10:00', '17:00', '14:00', '21:00', '1', ''),
(4, 'WEDNESDAY', '10:00', '17:00', '14:00', '21:00', '1', ''),
(5, 'THURSDAY', '10:00', '17:00', '14:00', '21:00', '1', ''),
(6, 'FRIDAY', '10:00', '17:00', '14:00', '21:00', '1', ''),
(7, 'SATURDAY', '10:00', '17:00', '14:00', '21:00', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `configurationsid` int(100) NOT NULL,
  `configurationname` varchar(50) NOT NULL,
  `configurationvalue` varchar(9999) NOT NULL,
  `configurationtype` varchar(30) NOT NULL DEFAULT 'text',
  `configurationsupportivetext` varchar(1000) NOT NULL DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`configurationsid`, `configurationname`, `configurationvalue`, `configurationtype`, `configurationsupportivetext`) VALUES
(1, 'APP_NAME', 'Centre for Smile and Implants', 'TEXT', 'null'),
(2, 'TAGLINE', 'one stop solution for all dental problems', 'text', 'null'),
(3, 'OWNER_NAME', 'Navix Consultancy Services', 'text', 'null'),
(4, 'PRIMARY_PHONE', '9999103668', 'phone', 'null'),
(5, 'PRIMARY_EMAIL', 'rohitsaini1903@gmail.com', 'email', 'null'),
(6, 'SHORT_DESCRIPTION', 'V1BabkVhMFF4TXBHWXpCMzZjQzVTdGJNRUlOYXplYlBHaHZhZ0dwNUVVN2ZITnVoR2tJUHpmTjlBVkIvU3NKcDlwc2M0ZFh3QldWYXF0SWRuemViSWR3QTZ3ekVJSjF6NEEzeUxlVnZPekNFZTJpMVhBTlBBVHpidTZTRXN5UDNoN0Q3TmxDaFNaVzFtUndJNGRadmJQNGNKQWFOaFhpakd0ekMyaWVVL2pNd2RxbXFLYVhBWVRlcVR2Ny95cDdHci9sdFdUWGp1VnlwL01uY2J6eWdEY1cxcUUzbXBlNEtmT3hNd3NOcFU4WVpGcDY5TWdNN3NsalhmVEc4dEgvc2VyRStxbjBwT1E2WUJsUWxpaXlZOTRhRDI3dEg0bzV2TjRlcnFIdUU2Y2ZXQkdQdXE3VWd3MUFjV3BZRFVhUUNlNlRDTEx5NWtRZ0JRWUJreFlLZTI3TlNzQ0VKSEhXdDVROVR1YStCMlBJN3FUR0UzUzF0VXNZZE12cUdjMHV3bENYUHZIWXA2MS8rM0I5U0JCdmtIa1JoeVlRTDRiNXNKOGFSZEM1RzhIK2o0QnRvOXdxS2VpRGx1S04xbUwzVHdSVGorQ0xKNU1NUHlnNGxlNitpcENGbnN2Z3BiOVJvUEtCaFVTQVFSVVpIUlRSZjZZa2lkeFlLUnNKcEdHNFhTcVp1TGdPWW1pZjhQVHlKWUZZRnRnPT0=', 'text', 'null'),
(7, 'PRIMARY_ADDRESS', 'dVkwQ0xFenQ4dFAzUERhZWpkcjFyNUQvQWZVWnNScjNYeE1aM05CaVB3b0FhQWdvWTJoc2JaZFg2aTNQOVpRcVREZkRpVTI3ZHRreVZTUFRNUDNtcmc9PQ==', 'address', 'null'),
(8, 'PRIMARY_MAP_LOCATION_LINK', 'M3N6cEE1V0syMjBKWE9JamJ0d2dERVk0aGNLSGw4cW5SUjYyKzY1NWNvQzVtcmZuc1JkVS81dTRsbFZCaGFuU0tUN01JejR3aktJVXgwakRINnVBRTBWcXJLMUI1U2lsVlJNbkVyZ2s2UnJEWXhIeFdTd0RaRXZpSlJQMWdudWUwWmNYQkFuVUkwZTRXbmZqczkzS1ZORFBmUGQ4a09MdzduaTNRZ3lpVVFVTWV1YldHVHVNR2RVOWdPOFZzb0lQdEVRcXFqVmU2SFBleVREd25zTWZDKy9zQWgyVlBTMzducHUrbHBvQmdxdUsrbDlFaVFvWG5LaWNPWTR1KyswTHpxMmJLQzJybjZwQ2lHaU8zelcvSFpSbXdSY1pNNDR1YWkvaE5aZGFNamQ3dXVWSWFsQXEydDlkclZaRkdnYVd4TThJY3YvaUE4MlY5WE0wd2RPVmJpb2dUU2tmbHRTdS81UncvcCtCQmxKU2lpU2EzaktiWXVrUDloZUNoYXZDZFcxVUg4Si9pWmRwaC8yZlNRbTdOUT09', 'map', 'null'),
(9, 'SENDER_MAIL_ID', 'not-reply@centreforsmileandimplants.com', 'email', 'null'),
(10, 'RECEIVER_MAIL', 'rohitsaini1903@gmail.com', 'email', 'null'),
(11, 'REPLY_TO', 'not available', 'email', 'null'),
(12, 'SUPPORT_MAIL', 'rohitsaini1903@gmail.com', 'email', 'null'),
(13, 'ENQUIRY_MAIL', 'rohitsaini1903@gmail.com', 'email', 'null'),
(14, 'ADMIN_MAIL', 'rohitsaini1903@gmail.com', 'text', 'null'),
(15, 'SMS_API_KEY', 'null', 'text', 'null'),
(16, 'DOWNLOAD_ANDROID_APP_LINK', 'not available', 'link', 'null'),
(17, 'DOWNLOAD_IOS_APP_LINK', 'DOMAIN', 'link', 'null'),
(18, 'DOWNLOAD_BROCHER_LINK', 'DOMAIN\r\n', 'link', 'null'),
(20, 'CONTROL_WORK_ENV', 'DEV', 'boolean', 'dev, prod'),
(21, 'CONTROL_SMS', 'false', 'boolean', 'true, false'),
(23, 'CONTROL_MAILS', 'true', 'boolean', 'true, false'),
(24, 'CONTROL_NOTIFICATION', 'true', 'boolean', 'true, false'),
(25, 'CONTROL_MSG_DISPLAY_TIME', '2000', 'number', '1000, 10000'),
(26, 'CONTROL_APP_LOGS', 'true', 'boolean', 'true, false'),
(27, 'APP_LOGO', 'Centre for Smile and Implants_Logo_25_Sep_2023_09_09_17.Php', 'img', 'null'),
(28, 'SMS_OTP_TEMP_ID', 'null', 'text', 'null'),
(29, 'PASS_RESET_OTP_TEMP', 'null', 'text', 'null'),
(30, 'SMS_SENDER_ID', 'null', 'text', 'null'),
(31, 'PG_PROVIDER', 'RAZORAPAY', 'text', 'null'),
(32, 'PG_MODE', 'TEST', 'text', 'null'),
(33, 'MERCHENT_ID', 'null', 'text', 'null'),
(34, 'MERCHANT_KEY', 'null', 'text', 'null'),
(35, 'ONLINE_PAYMENT_OPTION', 'false', 'boolean', 'true, false'),
(36, 'CONTROL_NOTIFICATION_SOUND', 'true', 'boolean', 'true, false'),
(37, 'WEBSITE', 'true', 'boolean', 'true, false'),
(38, 'APP', 'true', 'boolean', 'true, false'),
(39, 'MAX_ORDER_QTY', '10', 'text', 'null'),
(40, 'MIN_ORDER_QTY', '1', 'text', 'null'),
(41, 'PRIMARY_GST', 'null', 'text', 'null'),
(42, 'LOGIN_BG_IMAGE', 'Centre for Smile and Implants_Logo_25_Sep_2023_09_09_25.phtml', 'text', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `homepage`
--

CREATE TABLE `homepage` (
  `HomePageId` int(100) NOT NULL,
  `HomePageName` varchar(500) NOT NULL,
  `HomePageTitle` varchar(500) NOT NULL,
  `HomePageDesc` longtext NOT NULL,
  `HomePageImage` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `homepage`
--

INSERT INTO `homepage` (`HomePageId`, `HomePageName`, `HomePageTitle`, `HomePageDesc`, `HomePageImage`) VALUES
(1, 'HomePage', 'MFlvVGZ1dEIzWFFVcnFqTWZkUTJTdz09', 'Zy85dlJ0cHFIbUl0eDlQWGU5TEZ3bnpIdkVMdWw0ZmFJTUI3aklNR0NqdWxHYVZva25VYTVyUjZvWXNkQzRqL21MNWloVlZMWkdvMDc4eUFNVm11cTRnSzlqdmlYcFFCTHByZDRQTm9Xc3Urdk95V1NFLzJrczI5cGJyMDFhL01pZGU5OGpQRzlTZ1kvQ25NVlIrMDRsbDhVYW0yNU15TWptZ2dCZWNXNW5PcWpDNWkrWHF5YjhsL1lYWWVqWm85dHVXQXpxNVYyWm1GbVdRczNHWUxBRTZsRmJGaVI3Um5KN243RkNDa1g1c0tuTXU3QkVZaHhmT3hFU2RnTDZ6VFBjMmhmbnY2VEwrekowWEdGVk5uYVZtUWhOb3ZqYjZoV0RRSFZEZ1FCU1V6TUF6ZVVTY2MrVlVKMUVCZFhWNzMzMTlWSk9EM05HODlrS0RoVGlPaXlKYlFZbm5RamhuWG5hME10cXB3NnY2THhuMVNaTElDNVUwejBrMDBhbnFKdFMvMGlWOW5lYUZleEdyUVRRZ1dKWXlTYTRXcG9uS0FlMndCeHNsdFBCbUI1bzlhZkpMckpqRVZYQWtHMFRRZUZML3o0b0pVeXNkdXFXeEk2cTcrU1hNMGttejFFankrNnFlQkZ6a2orOFY3Q1FkcTlTZ01RT0RobkdicnFuWnBwdXRTMGhDNjJMUjlMeExTU2dyUjZIRTBKUWNjamF5TUVQc21WbVRFQWw3cDVVa3hJczhEc1phN0RRTUV6UDZR', 'HomePage_1_25_Sep_2023_09_09_30.png');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `PagedId` int(100) NOT NULL,
  `PageName` varchar(100) NOT NULL,
  `PageContent` longtext NOT NULL,
  `PageFeatureImage` varchar(500) NOT NULL,
  `PageDisplayName` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`PagedId`, `PageName`, `PageContent`, `PageFeatureImage`, `PageDisplayName`) VALUES
(9, 'RnJQYXpRN1FDOHptWWpSUlFSYkVNSXpzYWtZb0JwdlIrbFJDbmRISEh4ST0=', 'OVRtNkJTckJJZ2F3c2gxODhoMFhKcHo0cWdrbHlldFR6U25YR01KV2kxK0ZRdDBIT2tzd3JYYmxrSTY5MkIweQ==', 'RnJQYXpRN1FDOHptWWpSUlFSYkVNSXpzYWtZb0JwdlIrbFJDbmRISEh4ST0=_p__16_Dec_2021_11_12_38.png', 'WDNFNkd4a2E1WEREUHFTR245bGR0U0RDUHo5aUtlZXVmcHJlTFRDRXZkcz0=');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `PatientsId` int(100) NOT NULL,
  `PatientsName` varchar(100) NOT NULL,
  `PatientPhoneNumber` varchar(100) NOT NULL,
  `PatientEmailid` varchar(100) NOT NULL,
  `PatientGender` varchar(100) NOT NULL,
  `PatientAge` varchar(100) NOT NULL,
  `PatientCreatedAt` varchar(100) NOT NULL,
  `PatientUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients_address`
--

CREATE TABLE `patients_address` (
  `PatientAddressId` int(100) NOT NULL,
  `PatientAddressPatientId` varchar(100) NOT NULL,
  `PatientStreetAddress` varchar(1000) NOT NULL,
  `PatientArealocality` varchar(100) NOT NULL,
  `PatientCity` varchar(100) NOT NULL,
  `PatientState` varchar(100) NOT NULL,
  `PatientCountry` varchar(100) NOT NULL,
  `PatientPincode` varchar(100) NOT NULL,
  `PatientAddressStatus` varchar(100) NOT NULL,
  `PatientAddressType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients_doctors`
--

CREATE TABLE `patients_doctors` (
  `PatientsDoctorid` int(100) NOT NULL,
  `PatientsDoctorPatientsId` varchar(100) NOT NULL,
  `PatientDoctorId` varchar(100) NOT NULL,
  `PatientDoctorCreatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients_documents`
--

CREATE TABLE `patients_documents` (
  `PatientsDocumentId` int(100) NOT NULL,
  `PatientsDocumentPatientId` varchar(100) NOT NULL,
  `PatientsDocumentName` varchar(100) NOT NULL,
  `PatientsDocumentsFile` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients_notes`
--

CREATE TABLE `patients_notes` (
  `PatientNotesId` int(100) NOT NULL,
  `PatientNotesPatientId` varchar(100) NOT NULL,
  `PatientNotesName` varchar(100) NOT NULL,
  `PatientNotesDetails` varchar(1000) NOT NULL,
  `PatientsNoteCreatedAt` varchar(100) NOT NULL,
  `PatientNoteUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_contact_details`
--

CREATE TABLE `patient_contact_details` (
  `PatientContactDetailsId` int(100) NOT NULL,
  `PatientContactDetailsPatientId` varchar(100) NOT NULL,
  `PatientsContactDetailsTypes` varchar(100) NOT NULL,
  `PatientsContactDetailsDescriptions` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_treatments`
--

CREATE TABLE `patient_treatments` (
  `PatientTreatmentId` int(100) NOT NULL,
  `PatientsTreatmentPatientsId` varchar(100) NOT NULL,
  `PatientsTreatmentName` varchar(1000) NOT NULL,
  `PatientTreatmentdatetime` varchar(1000) NOT NULL,
  `PatientTreatmentNotes` varchar(1000) NOT NULL,
  `PatientTreatmentCreatedAt` varchar(100) NOT NULL,
  `PatientTreatmentUpdatedAt` varchar(100) NOT NULL,
  `PatientTreatmentFees` varchar(100) NOT NULL,
  `PatientTreatmentStatus` varchar(10) NOT NULL,
  `PatientTreatmentFiles` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_treatment_payments`
--

CREATE TABLE `patient_treatment_payments` (
  `PatientPaymentId` int(100) NOT NULL,
  `PatientTreatmentId` varchar(100) NOT NULL,
  `PatientPaidAmount` varchar(100) NOT NULL,
  `PatientPayMode` varchar(100) NOT NULL,
  `PatientPayDate` varchar(100) NOT NULL,
  `PatientPayNotes` varchar(100) NOT NULL,
  `PatientCreatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photogallery`
--

CREATE TABLE `photogallery` (
  `PhotoGalleryId` int(100) NOT NULL,
  `PhotoGalleryName` varchar(500) NOT NULL,
  `PhotoGalleryFile` varchar(1000) NOT NULL,
  `PhotoGalleryCreatedAt` varchar(100) NOT NULL,
  `PhotoGalleryUpdatedAt` varchar(100) NOT NULL,
  `PhotoGalleryCaption` varchar(1000) NOT NULL,
  `PhotoGalleryDetails` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photogallery`
--

INSERT INTO `photogallery` (`PhotoGalleryId`, `PhotoGalleryName`, `PhotoGalleryFile`, `PhotoGalleryCreatedAt`, `PhotoGalleryUpdatedAt`, `PhotoGalleryCaption`, `PhotoGalleryDetails`) VALUES
(178, 'cEtqNEVTWE9sdDQ1V2tVQTB1czJEcTZ6Ukk4ZmlHOVRQQmZacGJUYjhnT1ZaODVFdGRjSmZ5c1llRzZKWHgrVQ==', 'Gallery84750698667394_0_12_Jan_2022_08_01_55.jpg', '12 Jan, 2022', '', '', ''),
(179, 'cEtqNEVTWE9sdDQ1V2tVQTB1czJEcTZ6Ukk4ZmlHOVRQQmZacGJUYjhnT1ZaODVFdGRjSmZ5c1llRzZKWHgrVQ==', 'Gallery37266412682093_1_12_Jan_2022_08_01_55.jpg', '12 Jan, 2022', '', '', ''),
(180, 'cEtqNEVTWE9sdDQ1V2tVQTB1czJEcTZ6Ukk4ZmlHOVRQQmZacGJUYjhnT1ZaODVFdGRjSmZ5c1llRzZKWHgrVQ==', 'Gallery10799501051232_2_12_Jan_2022_08_01_55.jpg', '12 Jan, 2022', '', '', ''),
(182, 'UG1mWXdaNE9uU2lZSzlWb1R0T3VsQT09', 'Gallery4485814009054__25_Sep_2023_09_09_40.Php', '25 Sep, 2023', '', 'UlJhYlVONGpNOEVLbFVLUHNDakc5UT09', 'dHlsRml5V2pSK2V4dytxQ0pSTUZJek5VRnpSUzZ5bDRmczk2S1E3S1hlZz0=');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `SliderId` int(100) NOT NULL,
  `SliderTagline` varchar(500) NOT NULL,
  `SliderName` varchar(1000) NOT NULL,
  `SliderDescription` varchar(1000) NOT NULL,
  `SliderImage` varchar(1000) NOT NULL,
  `SliderOpenUrl` varchar(1000) NOT NULL,
  `SliderTextUrl` varchar(100) NOT NULL,
  `SliderCreatedAt` varchar(100) NOT NULL,
  `SliderUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`SliderId`, `SliderTagline`, `SliderName`, `SliderDescription`, `SliderImage`, `SliderOpenUrl`, `SliderTextUrl`, `SliderCreatedAt`, `SliderUpdatedAt`) VALUES
(1, 'MUtzZGMwU0Y2ZmFBUzdldHVoRXRSVWYvUGxqTUhzT1BWUVIxUnFtRElqRGhsZThQU0JMWWFVREhqN1dnVjg0akhBWjVsZ3NGcFdyZzlkYlp6b0xFWHc9PQ==', 'V1BabkVhMFF4TXBHWXpCMzZjQzVTbDlDaEc0MWgvQVFhTm9EcWVWeWhhWT0=', '', 'SXdUTys3dXhMK1NBazVCVnBxbXFJR2lHZGVJMFA5Qmcwb0RyNDhhMkJOVThpcnY4aTcyaWxMdVAvcHVRQjd2ZC9yd3l2aTB3RTBFZEhFTktpRlpvdHc9PQ==_1_25_Sep_2023_09_09_04.php', 'RXlaVCtUMk85U0diV0RpcnhBU3BFS3dpVm9zdU54eHhLdXZ5TUFiV0lEbHhKYXRkRFpyK3lyZ0Vtckl5U09OZw==', 'Q1BmTnRuczRuWVMvb1lTN0VqZVNaZUZrWDloYWkxYzYrR0cvOWFWd2FQUT0=', '15 Dec, 2021', '09 Jan, 2022'),
(2, 'Vk1Tdmg1TUlRTDdKTUc0VjJJTUkzUT09', 'LzlUYXpkM1QzN1pyWStWRHlyUXdwQT09', 'bG5UK1IvTUhuSFY3RFVXYjR1amFzN3VwQ1E0TzkzcFpRcUpvbUF1YVM1cURKWDJhZFRLOUZyWFIybHhjZ0Q5YXpHaEpEU0tpam9ZWjA3VW0vSTQ4b3c9PQ==', 'aUxNRzNsUFMrRG5WWXVNQkp4VWluQlFhWHJreUdtU0w4WFBaV1VMWHcwWGhyRVdoV284Q2JrWXVaczdpR2cvZQ==_2_21_Dec_2021_11_12_13.jpg', 'RXlaVCtUMk85U0diV0RpcnhBU3BFS3dpVm9zdU54eHhLdXZ5TUFiV0lEbHhKYXRkRFpyK3lyZ0Vtckl5U09OZw==', 'V1JDbmtFb21jeEFnOFFKVWs3bFVnQT09', '15 Dec, 2021', '21 Dec, 2021'),
(3, 'SFR1TE1uY2ZMcVpsa0ZMMW5xZ1kxbmRSSzNiZmsxZVdMUm1MSG9CaThwMD0=', 'UWVxb1FoYU9kTk9XbU9MQWR1a1RGdz09', 'Rkx4cFhOM1l4YVpWR1hIMjQrQU9aUGk5RTYybHozaHVwL09VVllMbjlyUVBUY0pnWGVtV0tQZzZhcDhCZEFNYg==', 'UWVxb1FoYU9kTk9XbU9MQWR1a1RGdz09_SFR1TE1uY2ZMcVpsa0ZMMW5xZ1kxbmRSSzNiZmsxZVdMUm1MSG9CaThwMD0=_30_Dec_2021_07_12_51.jpeg', 'V0MwRENXanExcFU0Ukc4VUVmck9uc01LN2dOQWl3b1JoTTBNSnZnaEM1T0ZNZHZGbVlHQnhtQnEveU1hSUdwbENpVnBzejZxRVV3YlJsZTF6Rnh6dGxZdTBkYVdkanpYbHZqT0JycGJMa1hIOXlyTkU1VDJlWCtiWlRPSno2SEQ=', 'Zk5NRm9vT241QWpYY09pLy90U2x3ZnpUQmVUS2tyZTF4V1JhL3luTmoxQT0=', '30 Dec, 2021', ''),
(4, 'V1BabkVhMFF4TXBHWXpCMzZjQzVTbXk4blNiM1hKek5UeXBFTE5LUldGZz0=', 'SlNqMWxZeWpLblZ5VEpTTmtKVm42dz09', '', 'SlNqMWxZeWpLblZ5VEpTTmtKVm42dz09_V1BabkVhMFF4TXBHWXpCMzZjQzVTbXk4blNiM1hKek5UeXBFTE5LUldGZz0=_30_Jan_2022_04_01_06.jpg', 'dVFVK0FIOXJzanEvVlg1Q1g1QWFNWG5QMXk3SFg4Vlp4a0poUXhaVmFzSzhyakNRTGxmU24vWXZCVEVLOEVtMQ==', 'SlNqMWxZeWpLblZ5VEpTTmtKVm42dz09', '30 Jan, 2022', '30 Jan, 2022');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccounts`
--

CREATE TABLE `socialaccounts` (
  `SocialAccountid` int(100) NOT NULL,
  `SocialAccountName` varchar(100) NOT NULL,
  `SocialAccountIcon` varchar(100) NOT NULL,
  `SocialAccountUrl` varchar(1000) NOT NULL,
  `SocialAccountOpenIn` varchar(100) NOT NULL,
  `SocialAccountStatus` varchar(100) NOT NULL DEFAULT '1',
  `SocialAccountCreatedAt` varchar(100) NOT NULL,
  `SocialAccountUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `socialaccounts`
--

INSERT INTO `socialaccounts` (`SocialAccountid`, `SocialAccountName`, `SocialAccountIcon`, `SocialAccountUrl`, `SocialAccountOpenIn`, `SocialAccountStatus`, `SocialAccountCreatedAt`, `SocialAccountUpdatedAt`) VALUES
(11, 'VjFQQ3RzMUg0Z3BZYVAxZElXa3JDUT09', 'OVFzcGNxNEh3RlJySkEvT0diZ3dxSzRxMFlhR0dEOTFVY3p6bTc1SnRRST0=', 'THhzVGNQZEIyOVlLZXVjMldqbUxPZ20rV0xOWmZpem1aNmxuSXd5bWJmZz0=', 'TXREZmR2OW80cFZpakVjT2RIN3E2UT09', 'bFZHcDF0alhzWTYvZGtYZTc1ZyswUT09', '16 Dec, 2021', ''),
(12, 'bUs4eWtQZ3hhL3VPWDRpWUdvbzNjUT09', 'cUhTTmNTQ3doT1llQXZNYnFBOHZ3dz09', 'cmVQWDVMU1JWdFBETWJobkQ5Y01kT0FJcE5GTFFlaTUzb3NzVGtEam1TeHhod2RvUy9GM0MrUXRUUmxJMjFUVw==', 'U0poc29xU1Q3WEl2alVKZ044a0grdz09', 'bFZHcDF0alhzWTYvZGtYZTc1ZyswUT09', '17 Dec, 2021', ''),
(13, 'endOWTlYcHVqQ0hNMXo4c1ZXalRxdz09', 'ekVRelVmVC93b0t5a0ZXQkhqM3lzdz09', 'WlFBbG44Y1BlL3dFQ2piWjBVaFVUa0kvdWJqYy9mdGx5MUpEVGNKUW5wQT0=', 'TXREZmR2OW80cFZpakVjT2RIN3E2UT09', 'bFZHcDF0alhzWTYvZGtYZTc1ZyswUT09', '17 Dec, 2021', ''),
(14, 'eitNWFdrK0R3STRoTFZzbi9TbkJzdz09', 'QVRPM2JIcjh4RkgyOVEvdnZJaml0dz09', 'SHBDL293ck16b1pORG9FeGlOdE8xcWZyeEsyWkRyeUdMK3J3K2VscEtvRXRFbU1nWk1rNWpPbWsrekYxWWdSMw==', 'TXREZmR2OW80cFZpakVjT2RIN3E2UT09', 'bFZHcDF0alhzWTYvZGtYZTc1ZyswUT09', '30 Dec, 2021', '');

-- --------------------------------------------------------

--
-- Table structure for table `specialities`
--

CREATE TABLE `specialities` (
  `Specialitiesid` int(100) NOT NULL,
  `SpecialityName` varchar(500) NOT NULL,
  `SpecialityImage` varchar(1000) NOT NULL,
  `SpecialityDescriptions` longtext NOT NULL,
  `SpecialitiesStatus` varchar(10) NOT NULL DEFAULT '1',
  `SpecialitiesCreatedAt` varchar(100) NOT NULL,
  `SpecialitiesUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specialities`
--

INSERT INTO `specialities` (`Specialitiesid`, `SpecialityName`, `SpecialityImage`, `SpecialityDescriptions`, `SpecialitiesStatus`, `SpecialitiesCreatedAt`, `SpecialitiesUpdatedAt`) VALUES
(5, 'OEpiK1lneDBZSjdibzkrYTVUVkVLcHpGbmRIYytNcjVubTlHTDJCSUo1Zz0=', 'RFF2L0M1WlNYUnNtY1NMQThlVnhCbWxaOXhPUGVSQUlvaDF4RmhnaU5ONUJiRjZiQW1ZN2NhT3IzV0F4QkQ5Y3BkSysrNlRsN3ZXV25SNDF4ZUlKTmc9PQ==_5_09_Jan_2022_03_01_00.jpg', 'c0Vhc0IzWkdESGJucXJNcEdOemxUN2pvZXkxV0VSK2FQY3lyNE9XVHpGL1JwVVYyK0ZUb3g4U3lPSXh0QVloLw==', '1', '15 Dec, 2021', '16 Dec, 2021'),
(10, 'UGoyVkpVaXc4ZzhVQzI4UDZNOEdMQT09', 'SWpvZkoySitvK2h4T0xMaGdyUjk4QT09_1_09_Jan_2022_03_01_50.jpg', 'Rnd5NlgzNklQdHBlWXBSUm5pVG9KSU1IS3NSZVdQejMwYmoxWDgySHdlSVpZUEVaWnFXU3VQdzhLOUFEYVJmbklHKzB3YzhvS21BcnZXVmF1WkVFcVB1RE1mQUYrVUpONWpLbWZJZmF3ZzZoUDJ3NVNQNXJtajlNdTVnelpJZjNKMXlJbWtYL01TSGFDeEhNVjNVQlhnPT0=', '1', '09 Jan, 2022', '09 Jan, 2022'),
(12, 'RHBQSzk2TnFEN0xBbEJ5UTlTUlRabDhNbGZwSE0ySEFSTFkySnp6NUdXVT0=', 'UTFIV2RRL3hWQ2dBOS83Mk5ocVZnbE93RHBIM0YxSTN3RVN6aTZrK2I5OWFjQnhBUzJidXI5Q1FkazlDS05RWWZMdm5obldGMy9lWWsyb0NqRkxqQ3c9PQ==_12_10_Jan_2022_08_01_39.jpg', '', '1', '10 Jan, 2022', ''),
(13, 'd0I4KzVzME9TbFRVR2h6N0VHcE40dGFhMDJWdEpYQys1Z2x6L2V1eHlzRT0=', 'd0I4KzVzME9TbFRVR2h6N0VHcE40dGFhMDJWdEpYQys1Z2x6L2V1eHlzRT0=_1_10_Jan_2022_07_01_38.jpg', '', '1', '10 Jan, 2022', '');

-- --------------------------------------------------------

--
-- Table structure for table `systemlogs`
--

CREATE TABLE `systemlogs` (
  `LogsId` int(100) NOT NULL,
  `logTitle` varchar(200) NOT NULL,
  `logdesc` varchar(1000) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `systeminfo` varchar(1000) NOT NULL,
  `logtype` varchar(100) NOT NULL,
  `logenv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `systemlogs`
--

INSERT INTO `systemlogs` (`LogsId`, `logTitle`, `logdesc`, `created_at`, `systeminfo`, `logtype`, `logenv`) VALUES
(120, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2021-12-14 20:31:42', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbnN5cFloQTJsRlNaSzkvNHpSZTRYZ21DZ1pudUtwODh6YzZva2NDQU1FbmVrWWVBQytkZzBuT0ZPQVN4TWhIZDZMTVZBTnVkK0hIZk1xMStBNW1vem9tK2Z1REo3QU9XZGVsSzBrSFVkMENyODdZbVJnREsxNFM2dUhDb0NIMkpOQWZqenYzU0IrU09MNk5qYjZvcXJmMHoxdnZ6OFhuRTRpeWJudDNKS1FBMlY2VG5iNTcyV2FCOEVPZWI3ZWl0M0x4cU5wN1k3eGtOVFhleUlxMDVYQ0VuamlnSUs5YWlQeVFPUUVhTUdXOERCanJ6UEh0clM2TnptenlUazhqemRHYmg3NlNVT0NFNEZvYmhtRkVBTWpFdFZUNzVpcXF4UDdJR1ZiTkprOFp2N3Ribmk2Q1pSRkpOYzZrSFFraFgrRXNMOWRrSFo1M2xnOEg2cGU4d1RVOHlCaVVTUVZLYm5JRXhJaktIeGU2VGdkSW5HWHpxOUJ3WmxjZm96a1M3cFkxUWMvdG94Qy9LY1RVd29wRi9pemJ5SzMwekZvVnhrcXpFQVN5K1hSSFV4SXh6S2dwNUx6aHFoZEJkUFgrWURCUnJBckprUmxBMmZhUU03RlJMWnRpOEkwY2lsMDZiYjVuVWNUdVlkQVIxVWxyaDdsbWZSakdOa3B3bHFQY2EwSnJEekI5SVQzSitwSUFmYkJ0YWxtSzNwQ1VTYUhyL09ISm9UQko4MjdYdDR1UDBITkZ4U0J0clBDWEMvSm9rd0N2RDUzZDltTUlXdW13S3EyOXd1d04zdVJhejZnSFhWU3JmMlNoWXMwZm5ZVWVwR3BKUDBuOXNxY0RpdkpJcW9SV2pXbG1BVUNobDNFMkhrZE9ONCttRkhYTXF1WWZ4Wlh4ZWNGVnhlR3pabUpkVzRGbzhuN25GSnI3eXBzZ0l6ZisreVhqVE13bXovYkdSemY2cmlVPQ==', 'LOGIN', 'DEV'),
(121, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2021-12-14 21:11:32', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbnN5cFloQTJsRlNaSzkvNHpSZTRYZ1J2ZmwrcHVsdW5yVkl4M2YrYjdoKzhMNzFsTHRCaUF3cEJHb1MxY3k2b1o0eHdxRDNwckpQT2ZIV1JDdGxCbFBoRVQydTMvV3lKSDR6QmdIOWwvL0pzY0haa0lyK1dyTVBQeGdtYWRXUUhwNjdicUQ4MExPL1Vta0x1ZWZlUDkvajNXbTRuZ1NyY3hQK082K2I3NHZMTzBJcHF5TVpOWlIwSXZZYmVJQ0hQOEp4QTBwcUlvdHliUkJQOEV3cWJVeTdEY3NQMWFtWlhadWdVSCtQNllhMEFyUDlqaitEOXNlam5zOW1KMEdmNzZIL20ySk9jeHFoUkZOQUt6VFh5c0FZVlp1bStaNFYzTTZhTXNpVS9FOEpHOXZsTVduWXljTGlLRGhyZXJ0R3hsalQ0amFUSFpHU3lRMENmZ3kySTZiU2VtUWg4SHNEaHpSdkJ5dnorM0NJdUYrdzJDbzBlK0pTZFlrVHY3TDY4S3lOd3Nud1VJaUk1VnpqNnU4VlRUSmRrb0IvczV0L3hYVUVBT1dMQ1RHMWNHQWxWeWpVaDZZeEJnZGZIUHcvMXRyRjh0UEVqTzZ0cHFDTVRhUkhSd3J3NUl0R1BVRUJPd3ZFWmlNQlNNaExTYjRRNllPdDlWUERlWlFkSlV5RUVERkx2VHlLTktDaVRkNHpFbVprMCs3VlJDTWFiTGczVUVjY25ZYXV4TUd0aTc5LzdsV0hzSk1ISXpCOUZuVjBxKzhteU9pRGNEa3ovQTY4bldkRWw3U2ljalROaEdXdjJMd2lBVDBSbFhWRURHQVlPYzNlT215WG9VS0RRNEhEN2RMLzNsTXcvNDFGRkVFaXpKQTJjeHBlRG5PWk8rR3g5NGU3L050RUpQNERXV2pTci92MjRhZTJud1dnU0FkR2JkMml3VW1aQ2pUZXNDWjVsTnlLbjZjPQ==', 'LOGIN', 'DEV'),
(122, 'Qm5iMjNMSlNJalc2c2RldFBZeHNzdz09', 'cHpIc3FNVE0yK3NtcUcxdEJ6ajRBNUxQNEZRQ3I5TTMyNjBSbHloZmFzRFhFYjdYNTczcnhuVkxJVktVWGYyZg==', '2021-12-15 00:04:18', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcWVFWVVUeG5LSTNIMUUzRnBhMzNnQjRmQWxpMGo5WXppTHhOaC9ZU1UzL25Bb3ljZ29LaWJ2aitrNDFYWjFmSHRRbE9tZWxPMUhBS2dHeDI4REM2MTl2Z01qWUtvYmRsWFpjUm5KZmt3YmoreWVIYVVjNzJXbGhQb0dlSlVsbGVLVW5oeE8zRnRaY1ZhS1JDSmJaeVFzaGdYSWNsUTdlQXFMMTZhdEszbmVQUDlvVzQ0NlQ2czVoUHpmOWFTMEpiamwrS2dROGltUjhRUFRmeU9YVEFjUkt4TG9QemUxMGxIbGVGOFdHcEJyVGRSQlVIS2NyVzA1NzN1b3ZXS3ErYW0xSWNKbm5rdXRBM0lhbkVMK1VQVGFlRG5PT1BWZU5jVnBJZVJaUDRQczcrdUtheS9QMFdaU1BQcVZ5SkxuOUZmQ3ZGU2hsbmtKMTZVUyt3RmJVaFVYTTY3ei9LSWg2OW4yT1dRcFFZOVBsRmtZV3ppQmllSHhYZWx5K1YrNURVcjRRcmFIc2tWK0dHY0RTeHV1c3M5Y08xaWIyU0xnaTB5QWFNb2FXM3plL1crdXZUOXgzSU5EOGcrdjVPOWJGRTNVZUxUdG9WYU41c1BaK2FjUXVXMUJvZW5sU2hBd0UyUUFpUkZ5dG95L3M3Z05sL3ltSCtmd0RMQ1NaRGRBbGFGdnI2VnplM1krUXVhR0lNaUVXWkFBTHYrM0lMcjRIOW00RjNGU3FPOHhyemFVWm5FREN0Nk9rMjJvbjZlTFEvWmx2NTIxaFhDb3YxU2lFcFV5MDV4M2RSWXZ2aGh6Rm1hNlRUTjQxUGdhSjQvTUNWMjlMRGlWa21HOFJhM1RCclZ6TmFNZko1eVYyNFFQR3dsMGpkRE1rSlRBQ1NWdCt3R25ZcjEyUStQaHZQUGxJeG5kSVZQRUZyRXZ5Q0EyRUkwQlZQbFJ0bGkxbVFjSFh3ZkNhU3kwPQ==', 'MAIL_SETTINGS', 'DEV'),
(123, 'Qm5iMjNMSlNJalc2c2RldFBZeHNzdz09', 'cHpIc3FNVE0yK3NtcUcxdEJ6ajRBNUxQNEZRQ3I5TTMyNjBSbHloZmFzRFhFYjdYNTczcnhuVkxJVktVWGYyZg==', '2021-12-15 00:04:21', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcWVFWVVUeG5LSTNIMUUzRnBhMzNnQ2phckdRYTFpU09weEJybldSWmhXdWt6T0NmN0lmTlBqNml2T1IzWW0zL1czYWdtcGlCTGs5RUhlMEI4bDhrOE41QWRCV0paYk9HcGNwNW11ZXpVSVp0MG5LdXNYak5rMWpmK1JIQ0MyUVBhV3ViYWdKODIwaUxmb1NjenVWUmJicWpEMkptZVhPZmdYckIvV2ZJZUZxSjBPc1psNHRDSUlMeGJLYUQ5TXR3Y3pRcGZxVEdhZTEwd21uN1BmRmdkK0lTcHIzSnNuWEpWTnhMOGI3RGduRkU5Uk9rU3pMMTREMnliczA3TWF4RWk2UEtoYlJRaGRJb291MWtQZ1B1dXZJYmFtWHVEWWNveVR1cE1lK0lsMnFEVkNEQ3lwdlJ0R3BCTEduT3c1eHRNRmpFMWZlaDUvdzlsVzZtelhxZmVZc0RROEhzVjlTSFJaSTN4RVIwV1F3UGVHR1hiZ1BRR2ZKTlpFdHNwS3FOdmJVbG1SZWdjNmpuV3lkUmRFYzI1T0dGK3RZYVp5dkYxV3JVckh3b2JlSzVRZ0JONWx0aFhUQnFvWUxsTW81bzk5emxUTW1iOUIrUkdXbmNuYnBjSmo5SVg1cCthNHVGQ2JncXh3MzgzUGsrMUl2b1ZodFNaeGo5UDZzblJLUW1UQm81TEdiNGVnM0N1UTVpakIvbUtOcC9aN2RLQXJkTVR5N0ZzVW5VbWltVXNScVhTY2JwWFhFRVhxT0RUeHJOcG0wSVZvcWk5b2RwU1Y2VTRTVHVjYkVWR1NMN2tJNWltTUhjRSs0SGVVaDk3VkU5TDE0MkpTZmtBZDljanYxK0ZMdjRSR1RPVVFYbUsxNDl2WU9xdTd3eTczMHIrdWJ6VlRDdXpEQ05oNWRZSXZodlQxcnQwVU1xZHB0amg3aXI5eHoxUWl2c25vNEovMi9QWXlBaHZJPQ==', 'MAIL_SETTINGS', 'DEV'),
(124, 'Qm5iMjNMSlNJalc2c2RldFBZeHNzdz09', 'cHpIc3FNVE0yK3NtcUcxdEJ6ajRBNUxQNEZRQ3I5TTMyNjBSbHloZmFzRFhFYjdYNTczcnhuVkxJVktVWGYyZg==', '2021-12-15 00:04:27', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcWVFWVVUeG5LSTNIMUUzRnBhMzNnQzZmTmdRWFVRTHB0MjNhZHdSS1h4L0JicDlxeUh6Y2hOSmZIdjE0V1hZbktST1h1VzZFdmRnUkZoQ1Q5TnVaOFY3UVFqSmJwQnBpREgxRmE5dlpGVUNCS0dQSjEycnBiei9EckVJWDhRY0U2S2RKdXNOV2F2U3RZOTVwYmxlQ1N6elcyWHN6WE04Q0pKQzhHM2FnMXcwQnhCalY2bUtyclp4RVpORXlIR2swQ0dvK0E2dmhmcGEzU3h5eTBPUGppR2xwckZlenRzcS85c0ttMjh2SERtdG9IdjdiSmtmNEtxaWZpZzcxbVllL0FjYjJ4emgwQlZ5aERtTkNyM3hmQmpBRksyQ3lVWDRrS1VKT0tlcm9FVUFUbmZzRUVyNVUrK1RodkpFSHY0cklpMEQ5NEVaY2x5cHZmeWlsRnZKVDNHRzNOTWRoTVU5ZWNqZmFLMGlMYXFPK0E3SS9FeEtuMWFRWkw4cWpoeCsvcFYrNWxXV2U1K05DcVpRbjJHdGZlMG1GNVBSTW5FallzYjJETXRNZWN3bTF3K3RZcVJQQUxQcXJwUGF5c3JTK05VaEJyMGNZMGZPOGJaVWMrUHk3RGpTRGxUV2cxV09yNThEb0RhcXVBZ0kxaWV2NzdiYzRFUkRLdzU0dnlxNGsvYUw0MFlqOEhZUDNob0ZOOFVjQWd5WnowMDRHK095V2szL01WS0VINjJGZDAxSElVamdpZm9obkhwTU1INkI3ZElWSGFla2pJZThrb2x5YmNPZTZhVzExN0ZQV1lwSTRNMXE4OW1yQ3dHYlEzS0REMWtlRFpVK1ZneXBwL25VN01LdmpNSVZwdnEweTdzZytNSmtNeEtiMWVHN2lIUCtRM01sSkhBajR2ZUU2MnJwT2RLbjN5Q1F4WVVBZEtvNStXaXFEWFhWVFZ3NUVLWGdHTW85TTNrPQ==', 'MAIL_SETTINGS', 'DEV'),
(125, 'Qm5iMjNMSlNJalc2c2RldFBZeHNzdz09', 'cHpIc3FNVE0yK3NtcUcxdEJ6ajRBNUxQNEZRQ3I5TTMyNjBSbHloZmFzRFhFYjdYNTczcnhuVkxJVktVWGYyZg==', '2021-12-15 00:04:42', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcWVFWVVUeG5LSTNIMUUzRnBhMzNnQzdJWHcxczVOU2x3MGduS25WRFUzd2M5b3U3SlArZ3kxVkpmdkVjVzhXZ2Zkc3JHSUQzbWVWM3hmc2NzMXhpK204Q3JFNGErYUswZ2paTzIwUWFsK255QVlha0V1TE1IREFxU0ZBQkhBcXJOa3NMQ3lNcWh2TjFEeEVSQ0w4eE5ZQUdBOTZtUWRjc0Y3bFFnRFRZaUFPVWUzVlhuR3VDcDdOSmgrakVST3MzZVJia0N6OXcrN0ZYZm9haXRiaTZjVnZZcDdTNEN0ZWZwMEhoLzNvaTBFV0NPYnR1VTZkNldsREppWTM4UkxWUGZhclYwMjVDR1paRXFoM28wUVdVQUh6RUNzaTZPMHJtbFNQWGJLalhibFBJdlZCM0FiSlZlWHFrTllWVXNLUDlmUHgwejZtTitKNFJMT0JCZlJzZExkZXdWVGVTalJMOTJ3UFRyajM3QVdTeDlSRGI3Z2lVWmlRNnJ6RllCZTR4aFRlOUNGNzlaTDQ2MldQdlJ3Wi9VRFNsQnZYNDh5YjduVmQvRXk0ZmZtaVlJRWRWKzlUZ0tkUktROFY2VkdFUk5iUGxONTNjNG1RYWEvRitNL1lqS3Iwemd5dmJuQXlEMGxmNmVwSVJ5eVREK2pIZVdLTTBBZlprRndMSkt6czVFSnRob3dSdmZKb3VvQzlKQUJFSUVpR0ExYXJOcU8vZUFRcUhJVEFDN1ZTdVBNK1E0NzdmaThleVJ5ZXFJWUsvbE1ESDlXbW5ucEQyRUNWdlQzQXVuNHZyTlI1YmJOSExGaDYvSGdwYjMvbnBibzlka3VjZy82c2k4S3FzVFltaGdEYU5wd1Z0YzZlb2NxWkRTb0h2TCtvSFZKM3A0QUUrTm1SOWtiK1F6TkZrTnpWZkRzZDB4Y01VSHRWWkJZU0VZR2NtMVdMMkdkeERESkZpS1NEcW1jPQ==', 'MAIL_SETTINGS', 'DEV'),
(126, 'NnhGUG5wbW9aTUE2Vmxxb0hYY3E0dz09', 'd05BVFhobFkxeVpLOEpaOTVUeU5UNi9XempxU2hVcjdkMjhpTjlYamdGODJ2T2kyM2w5ZmtBZUM0WGxNWHhySmxuZ0k0VDRHY0ZNdXJ5cDdXNFRhSWc9PQ==', '2021-12-15 00:28:51', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcWVFWVVUeG5LSTNIMUUzRnBhMzNnQTd5amtuUzBNV3FXbEphOUIzZXlmUjlEenp6eGljdlJObVJYNUFqTmhvNEc3ZXcwNTgvSkJuTXNqRnBGMWFOb0IzZW8yZkE5NnNMMTNMb01EeUUybDc4UUdUS3BlaVdFdmhtQU5Ddmd3Sno3Wk5iTnZrNmFocjQwT1MrNGltMFAzeitwSk9NTGF5OElCSS9QRXhhVjZRL3NhYklkYXBKTGQrbGVVcDhLcWpHM3F5WTRUNFJnOHBNSEI2b1BnMVVyZGR2VUp4aTR5TVRpVDQ0WDVGWTRRMW43R1RFYjdKcEF4djFpdzVEUk9VTitrVHlaVDhDdzcxS1RhVTVzUXcxd00yMWxuL2tUME5SMnMzM3ZvVnh2b2ZBQ3hXYS80WkJtR3lIWGpra2xsVzFPcnVnQS95SkdXelZvSy91MWt5ei85bWV4TC95UWxWOFU5bDdvd3djT2daZXlUV3JiSkp0Q0N4SFBQNVpkTnNhZmtjS081M2RyV1dyY0JrOUVXZzl2V0pFTEkwQiszTGdBYkJsNjNtOUE1NDFDYWxqVStudldtZGlvWDkweVMvYlJyam90QS9NNTU5V3RERkoxdS83ZjNXd0FTTUllcnFJYXZLcHp2UENuME45dmFxRmFicUtQWTlWR2VObGErWjFmclY5YnpCSXJoTzJMZS9hQUozMUtXVzBMeDFyZC9lb2dRVko5aHJlUHM1QjQ2azFHQWFOdkNOSkVaRDk2OXRRVHpXVHlHVStSVzc0M3lJS0JOZnNOQTFvbmcxWkNjZGlyYnlPaVlPWWpEaDJDOGFjVjRKYk1PRXFKS1R3c1pCN002SUdhcFRDWkxjSUN2QUs3ajMxWGdYdmRjeW1WWG96VUljQ08wUlAzQ21ib09lSnM1MVp4YUhTNVo3enUyV0gwbTFhWlZqOFRYYnkvUDNyRHBqNHY0PQ==', 'FEATURE_UPDATED', 'DEV'),
(127, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2021-12-15 09:36:13', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcWVFWVVUeG5LSTNIMUUzRnBhMzNnQi9sR2U1VzRBZkl0ZjBhck1jZlM4RWFZMSswWTBYQjlZcGRENy9vMUdPQ2hJbEV5azVxNkNiYWNnazIwWUZ4bFdIZUY4NEFXY1NBU0pVTXNZNC9mT2hsSTVnU2t6Y2s1eDVxWkh3Mld6aHU1UEZCdDA1bGtYTnpIbGs1UElERVVHMER3enNCV0VaRE5zYUUxUGM2SmJUOGU5UkkxUHdGSWI4Q28yNmdIQnJzK1R4dDNRai9Rc014cU45ZzNIV2pqM3lhTmdNOWhWSlZ0THA4QlpDVEdGalhXalpWTlE3RFM3RjRJcGpXdUlnektpRTBqU2p1bmVlL3E1N0JPNjRvZHJCQXJKMmlZbm9GZmtHemF1WW9pd0l1VVdSYUNqVlIxQ3V3UVcvQjdxZGIzdmI2VlROSW5qMm1lVko3VEdKb2FVNFM2VHE3WG1JMVlPTW5Ud2IyWkt2STZTZkcvNElGVVYxM2dKN1NTUWVPNVNZK0hieFNYVThpTkNFT050UTlaMFBvQW9TUXFCTFBRN0czVm9xU29PZVNWNlR6d2VpVGo2c2VVVHN4M1J1eEhZVm1HajJpaFFidi80UXdIZ1pQZjBjNzFwVlkzcE85ZFdXOVM1TUJNczBOSkxvUVR6bm9aTmpYMTJNVDE5SFlWTzBFUmErWml4UHdYVEtMbGNtWHBhNXFQSjdDQlRxRzhyaUY3R3pNRytiei91TWNEZ3UwZUZSVi94b3F1TkgwSEFFUjFMOG05d2dZR1F0RTVtR1dsQlNHWXhxSFk5SU0yZzMrMHBzdU92VFZQbnRjRVBHQnpUMng4MWtqdUJtNnlNRmhKSHNQaVJQaXNCYVFzOTlTWFJxVTdxNFpUeDhvTmZNNGlIUllIT3dwMExHYXIyZW5RbzNnVkxsUEJSeDFNNDNoYWE2MjNDOVJCZGRNdElDbDU4PQ==', 'LOGIN', 'DEV'),
(128, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2021-12-15 10:11:49', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcWVFWVVUeG5LSTNIMUUzRnBhMzNnRExhaWx3TmRYc1lBUm9kVDdXczdNMXhZWWhIWm1OT202TlFuTndydWN1c0d1bmVaWkE2N3Q2TzZQdHgvZ1hET1gydVd0Vnp3cVVIN09Uc0hxUk1YWG9nN05yTHJMTmxNRks2bGswWGVUM1F6b2VuNDZPclVzTHV3Lzlna05jNnJsUGVhS1JMTjluanlYUHU2c1RCMmRLcWJiT3hyREtmWERra2JSSmdCc0QvdXFpd3ZSUnRJakwwdHJ6YmxVQzVLNWVRN3gyK0JHOU5XSmMzSGQrcmRJanN2K1hGUE9IVmZUMlZ3TDZhOWZmZWY3cVd5WWl3QTBCai9TWFlZS1kyZVJLNmxlWlFIaVVUL1J5RURVUHZqUTRjc1RoSlRuVHJVQzc3ZW9YcFh3MTdnNXlSSXhYMUo5TFRhM3BZWWxQNUtrK25SS1ZMNkEwSTJHYlpISHNZNEJjL2ZTaFNjT1B0VzZZbHRuZlF3NW9FU0tOU3EzcXJoeXhYcFNRSjdMZ2JaR3llVGVweDZVc3pidVJtVk8yckVDVGVLT0szTXFiWktmZG1GK1cwYmJJWm5QbS9OYTdMQ2lQeVYwaVcyd09qbVZJY0ZJWWp0anZ4VVVidGliaGRIYXZPLzA5bmcrL01aK2I5a282a0tlclQxdjVOTE1uUG5aa2hXZmRCcGJvbGdNc1luZDlreGlLWitIK2xVejllWnZKK0NCL2c0RDBtdkYxVXl5emM4MVVWUVFLZEdydlRmWjk0TSszSUU4My83NmhwRzQ1bkFwNUtDMElRNzVYVzV4MVBSdmRQYnJWL0VhSlI5bkszRy81UWZ0MTNrWENYenprTzh4NkcrczF5WHBkTjNXYzhMRUFsTFpMVVRDczEwSE5DZE9uKzhwR0NVcER2WUQyZURqYmRvQkliT0ExRzk5aFh2UFBzZVFJaEFnPQ==', 'LOGIN', 'DEV'),
(129, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2021-12-15 12:44:47', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcWVFWVVUeG5LSTNIMUUzRnBhMzNnQ2pUcSs0TnJzRHFjVzFuMVcrM1lsMThZY1BEQlZSVTM3MEVOWCt4Q2hBV0kzQUpUb2g1RzlxOGwrY0lSamJMZVUzSGdoTnpuUSt2T2l6NjJpY0lNRzdkb0tqeFhPZUw2cGxBbk1SWmFpRk5OZ3RCdk9IOVNwblFjWUpaRmEvdlpvaUk3ZlVhdlA0cmpBTUl5SXlFZXRSNUw5NU1yc2lzQllocE84MTBlV3hqSm82NkdKWVNSWEt5U2tjMXlBdjBjcDVGV1ZJQk1NS1BaZzlSN3dwYlZ4VGhMdUt0ZitqNlRESDYwUXQ5dUV6UW1Ja2FSczdjY2t2SnNyNmhTVWFJTGd6NTlaU1FWMVMram9ScTlnNktaQlE3NGJLT2xsTEpYWXVYSXVqWkVzNE95eVB6ZFRZUDdraU10ZGl2V1hMTmk3TnhpVy9ldFBpdmY1ZDJyZW5LbmdOaG5NcWR0UUlESEFZYk8wSHpRNWl6S08zQVNNekRmSndYUXlnSlhBWmx0UTd6YXlqZVIwUUNiYVRFMUpseGlseWF2UUE0eXFGUHA4RkVXUE1TSlkwT21RU2dUd1B0SUVWdjY0QWU0a1JvT2N0U0VkS0FYS0hDOWZLbzJhS2RIdFFKTlhGRXJBWFF1b0IwY29Zb1l4YVlNZFVFa3pXeVNyL3UwN3htc1RYTnZsUSszcVd1bHFaUWZIblNnbnlaNzdvTnB4VUZ2YWhYa2VHUnc3bkFoMjhjRHJKWkJEVE5Ia3ZvZXZYUnNlTFBMbnNVR2lMWWZ0dUhEUVNSR2JkWm80TUxWc0dOb0Q2dDR3VkJNalJ4dTVOSkgvdWdxdEtxbEhiazFVdXAxckNMRGp1Uk9zZTdMYWZCaDFJTmFmVC8zb3puZXFRakNqb2VxUm96QWdRM3RHa0JRbjFUZ2FvYzd3R3F4aFIwdzAvY2E0PQ==', 'LOGIN', 'DEV'),
(130, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2021-12-15 14:41:21', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcWVFWVVUeG5LSTNIMUUzRnBhMzNnRDFxYUpkc2RiZXdMWFlhQmtGeTRwelBnTDJJUDNXdFN6WVJsZ0hVUzN4YUJmd2tnakJxSlE3OENIakxjSkt4VGhmK1JKSHB2M2c5TTA3WVBHSzZkdkxxQ3ZzVVFSS1U4MnN2ZE9Qb2FTR2xibG03YlpybWRsNkR5MTErd1dERHRNZklxVmp2UWZSZUxJM1lNSy92NTJ0M1JCMDF3SSs3MisxRlJNZkFob0pubUZKWXMrZGgwZFFPZ09HSXhaOTYzMDZENVNmSXA2N3JPb0UvMXhPbXF1bzdtbzJ0bHhTUmJiVFBrYVhPOTJCd3dmMlIvL2lsVlpSbnY5eWJWVVpTOFRQalBsWlIyQ1hiRHJNd2VESFFzQkFUWDR5SUoyM3c0K3Y0MTExRHJKYWZ4VHBrbkM0eXlNRFd0SHpUcityUkM0RHdEdHZRMmNsWFJFdkVJK0ZMaWVKY1dZYmtwZi9IUGNBOGtOSURibVVpYXllY0FJNklzb0xsMHRHclBqOVhOVC9hM0cvUnNPNDZEWVAzZDJDVHRHNERILzRwNmRzWnRNcFVXRm5VeHIyZldzOXo3WFNzMlFVKzU5NlFkU2c1SnBPZk5qbWNIMXFNOURvdTJNbmhMVThWdE9MWGJlSitXMWJSdUhzci9RNUNFZ3Q1b2hUUFp5VHFqNzNzTW9ObGRWNkM5dkpCNi9IMG9GdWFrVjM1YUpncUFERUZFWDBqNHVNa2FIZDNGZ3Z5QkxxTUd6OFVzTjhDbTBkdm13M2tFbU9RV2pQSTN4dDJlalZaNkMwMVFzNU9BU1gyMm1qRWxWRDFsUUZnL3Baa0pwU1lBdkU5Q05zRnRLeW8xcUtWcEV2Mndza1lFZDNiR3p6SnpreElpUm5lQzk2MkdQS3FyR0NFUk9GWks3aXRHUkRnT29oTVU3Wlh5bTJqSDVpeGE4PQ==', 'LOGIN', 'DEV'),
(131, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2021-12-16 10:10:04', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdDhCeXZjTmlTWnZYTXlEdkFxNDhGMWowS0VvNkxLY2JnYWNMQVlNd08vcTFndVZaNFBPN09LVTlFS3VlSGFseExHOWYzR3dka2c4UkxqVUk3K2FrY0phR29VdWVSQzZVeTQ2RHpxeUJkU3RSSDlwa0JZRVpxMWF3TGNtZGkvS2FMaWM3MTh0Zjc3MllJczB1SElJNmF6UHlRVmZTS1hLNjRzNmR4SXpJeHRGT0RZV1VXZitabWk3WFQzTU5BTUZPMmk1SDlvOGlvWWl5aE51YlpmZFJXQys0dHZGK3ZOZWU5a3BGUDVUYzF1WTJuQWp1bFU2UHl0N09PVkl1eGJ1UnRwU281elY1V013ZzNWYnpLcEdpOVlVMkJFREdjNFFXdmsrREZ4dWNnWkp4aElGbFRreDJjeG1GZnBBVHRTYlA3aWNXcFJRVS9zeG9qTWtXZjhxYXA1OTIwRHA1MVRJYTM3SmFheTZQeXI1VE5DV09kRzZVOWRJWlpkc09uRTViRFdPRmdIUVhxYVJ1ckVWK0lYRDE3bWZFKzRoRnhac0F5RklQb0RvZUhGNSs5VWhlQWhrOFNFUXdDTjlEZTI5dm1uL2NpZFZRaUg2THlUVStqRE5ncVJUUk9PZE9aWXMwTHBuekI3QVBSZzRLWnBLcGp0cFlNWVROUUNlZ0ZZY0M4ZmZxUjU1TW4vdkR6Q3grV2RnUVFpN0pYWVNXenVhR1U5aThSR1ZnWS83Z0U2S0dlRTlIeGNRTFphY0RWSEtPYW1wdWtvV2doRWQ2L2ZPU0tubFo2ZFRkSTNETXowb2NDSmljenpsUGg2THJ4ZXZjdGpqb1JDT3QrUTBIdlRXd3lZUGdDdXhRbEZZeXdZQ0hnNG42dUc1b1NwcTVvek1pemZOU1pXVXBKbUF1WElRVTdLV2FSR1FMeURKaVJsUjFkNDZVa2JZWEYrTU1xQlVhQWkxMk5JPQ==', 'LOGIN', 'DEV'),
(132, 'QzBKSmxBektsTjB2YTA4eE4yRWUwUT09', 'TkJEUWgyS3daWmhZeUpkeCswZUY5RmwwMTIrcmw0ZTNxM050NS8reHhiU1lrWGdXOFkzZFRCYkRKbXZUb0N6WithcEFDV05mQ09sV1d1Tk50YVgwSlE9PQ==', '2021-12-16 23:06:33', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdDhCeXZjTmlTWnZYTXlEdkFxNDhGMGNSOVd5RmQwWlAvRkI1K3JoRDQ5UFBoK2F5UEJxYTRJQ0VTL2VGb09qWFVtemllcnhEeDZvTmJMUDBTVlBNN1VFWWErQnFJSmo3MFlUOXROOHNHOStQVWlETVdiOWlxcERyRHZvei91My96Q3FzeG5yNXhQWnlzVTRQaXUwY2pWaHhmcHFueGJ2UCtCZ1NOelN6OWNOU1ZuSEJqTVZaclZUTFo0WDJQTjdRV1EzKzBhZmNPNjlLUERkSENtR0dhRS9OUFlOTXdnWFVDQUhsSTNZVjZPd2ZjbUFWNlAyclNDMGZRalZ2RjZYaFpjNG9WZllhRXpuY0dDYkZndHNVVmpuTDR1TTZqT2RpVTVDbWpzSnJXTUtSRTc5SkJZS2pQckQveWtxT0xxQTFReVYxQklvVHZLcE5aV3JrZTl0NmNtUW1BUVdML04wakcvelc3N0drcUM4NHI0QVVwZUp4N2JaVjVwaDNyNytvUnhlQmJhNVVOaUY4dFdkaFNWME5qNVJ6Wk5TUUovc09GTHg4WE8wblVMaFVEb2RTdjNEMElzVlkwUE5JTGd4c0dEYUlFL0ZkRWlKOWxwcjk0ZXVRTlRwMGlJR240c3REaWVSRVQzZUg4RFd1OXN3WjVxYkhRWkJ3RkdZZmRjRUphMHNEdEZGQmFWM3hNRlJMRGdnY2gzUkJRWWdaUHdYdUREY2pJUzhpSDA3Ykhld1dsdGJVbWYzZmFGcFFXd0tYK1dvaTdSMHZkdXhkOGxTV21pVlJLUFMvQnpXSUFHY1RvQU9QVi84WUFLKzJheUtVSUx1VUw0eFR4UE9CTEJCLzlkdGpzaXBGbVZxZ1Z0RDBHM3NkTDFZQ1c0Qm9YaXRoY0xXck9qVzNPdmpUMkhla3VEQ29KZy83blBqcjlNQ1ZuenBPU3dSWTdkZmd0emZiVG0rb2xRPQ==', 'IMG_UPDATED', 'DEV'),
(133, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2021-12-17 13:06:13', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaU4wM21KcWh1SW1HWE90WXZXTmRpdTdNbnZMLzMxNW92bmxJdEFscktPN3NXd2VZTTkzUGRYOUdGZkdBSFlKOElpTUhQTkRXa1JpVmxYcUZMSEk0alE5UWhMZFRLWXFuTGJLdUJmSERVLzR2Wk5OM3Evd0FLMGpydzRscHBvaFNxeXNXUy9KbHlBd1ozOUx1VStjM1A3RmZOKzFFTDgvMmo4M3NVVXA0aGV3MHY5eGQ0bk1POXlEbXhuMDArMzNYQ01MeE84a3Ezc1hsYldrcnVxRTdIczJmM1hhMmdDVVl1VzVVczdqTGM5QmRTa3BPNGc0eDcybWtIL2dqZlZSOVZ1QXBUSXl2MFFHd25BSDZSV1dlbnpER3BBdnRIaUozZjFqeHlvQkR2Z2gxVDNSWmtRaVh3MkhrY0NaNWRkTVNxb1N3dGJBdWNIb05YRURmVlB4a0JYc2drTUxyOWhaeG54bzNkZEhubU5zS1lLTnNjTWtBc3JrT1FySytOTWxiU2M0Y2trMmR6M21CREVkSzdueHZHY2tiVUd4QVFpcXEyVDlkUDRNOFZoVG5PWXRQRTV2dW1pVjNtcHA2QmEwOGRCZ2x3ZzQ5L2s3TlNKM0RnVElOWnFpRUE2d1pWLzZYWVdEbWlGQW5yZHJvSFd0SFloUE00SjdrMDcrZm9wRWcvTUdWVFhlbjBJeGp5d0J2b09zc2JaR015WE5Da21tT0IzSWt1MkVVYkFtQzFUNHFpbXhwSlV5ak9ndVNUbTRDYU1CZE4rN3lSZ1d5RUFjY1hqZXMvdVduT1lxT0gyRVhZdmFpbDRTTUx4QTExUzFaNGN2MVZCcTB6NzJMMW5tS25rVC9wZ0J5UW9WemtPNlZrSlgwYWlKeENmS2x4QXpwM1lIT0NjSk8yYmdjSko5bVh6T21qVDNXV3F3QWVtakNNM1pJWDN4OG9lSElCMFVSU3FQLzRvPQ==', 'LOGIN', 'DEV'),
(134, 'U3JLUHhEVVV1dGU4OGhqMlFHOWk5dz09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPLytTWmI2RjZYMlk1eUViNFdjNS9GUTh4YWV0YVFWQlgvaEtJaEpaa0YrM3hDSW9NM1dMdHRFUjkvQXlKUXhXRktxR25GM3BSNVREYmQ4cjVKNUU2ZUU9', '2021-12-21 05:31:31', 'YWpRVE95SXN0VXZUMHkvb1pISXNqa1krdHFpemU2b3dtajM4d2w0YndMQUEzOWNEYStuaWdjbk5zTGZwaDltclhFTDZHTkZaK1RIdjhiOWpHNUZaRDhDVk00TWVVQUlzY1pXUUdHNTlKdHJHaHB4QjVoaXZLTGwxNTBmSDN6NEliSUhndlhETTR2NHRWdW9vZVV2RGMyL0lCMGwvejFVWjVlVVVWVlRqU0ZZdExSUWxSd3JJREloUTV3NVJZdmVIaGFMQ0t0ZFFzT1pIc3dMNVVzVmY4WDFmNWc2dnZtM2tMY2JZYmFOS1RFbjIyRTgxQjFRNG5vZENUSHZTdUtjTzJIMTRZcFI1MloxT3ByYjNYU0V0WUVrdU1SS0xMZ1QrVk0wbTl0cmxUNTBxbDMxN1FLdCtiVXRRaTR6Z2tQeGJ3dzEyTXZyYjBMaFoyUW8rTHNidXFFbjZhZ0FBaW9oWXA2OGRDWDJaZUFJNWZvZUgxeXl5eG51Wis0RUdla2tkWW1mRjMwQUFZVVRxNGpoaXZ6dFB3VEF6cnZLZHJDTG9PTFlHRG84bGhzUllJMi9JeTZ1NzBlZ01rNk5xWlViMk1iQXBYZE1KOGlMc09kUWxTL2duN3FOYnBEYm9mRDd6MzcwbVlnQ1dsNDd5ZFphc1BIQ0VPVjdlN21QUkVCTjlKS2Eya1hWNHN1dC9ONHh1eVd3YVRZclhnRSt3dlBUTmlWbm1vT29uT2JVZ29DQ0llK1VhbDBMYlU5TW51c3UvMWpxWmpyUmVpT0JVeFUrTmVQOW9JSnY0TnI5ODloVzNwSWx5TitoQWtzMFZuT3lDemsxcXZESHlGR3NyeUw1WWxibVpNNlp4bDFBU1JJOGM0UXpqdGdNYVZQTkNpb21iZlY5TmVqdXY5N0wrdGNTNXUvSUxtM1pRakxGRXdxbmV5N3ZseTJ1ZXhQVnc4M3RYc1FqUCs5MnZaenpMdXZPZFY1Z1duTDVOZnFkWHNl', 'LOGIN', 'DEV'),
(135, 'U3JLUHhEVVV1dGU4OGhqMlFHOWk5dz09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPNWt6MTZTSTNGQWJITFdIM3c4WTM4TkJ6eFdrbFl1VmZjSVVHQVA2VkxqZC9wUytic0lHUDUvNzBmZU5qalFDV1dHQU1aajNYZzlwOHVjSHlKZzFydFE9', '2021-12-21 05:31:43', 'YWpRVE95SXN0VXZUMHkvb1pISXNqa1krdHFpemU2b3dtajM4d2w0YndMQVhOaTdSVkh2MXJIOS9XM2c4bGY2eGwvTjYycnNkTy9QN2liZVNCTmxmODlHVXAxK3I2dURFVDE2SFMzU1dsN3VuRlBRSHllTVhna3NNZTFpTENnVVNVUUhGT2x5K0VFMVpid1NMbjRtRlhsSWgwYmVBNGNZOU05OWxxVDNxaVJKTHRWNmw1ZE9sV1J4eHJOeVJzWWFKWjRrTEFIeDE2ZnYzcklRM0ZkNi9PVHVJdWVoR0pyS05sTnNVRnNYNnhKU0t0VzJpWFNhaW1PWTQ3TCtyNnU5ZEZUT2V5NGw5TDEzelV0RktpQVBvWlUvZ2Y2clFwZTVFL1NBUkliLzhZejVwR0dDSFFMSmtMODlqbGRQRFNidDJGM0l3dWh4eFBGNy9KMXpKTDdlRzFkUWswQVVSY2hmTGpNV2ZCZUFlNCt2SXl6MGRsMTRjZ241VXkzeDVxT3djek1CV3VoQ1puSjVZclEyVGZlcGdKdVFKbVo5YUhKTEgzUHFYdW5MYlpoWlBucCtzSTJROGxHL1haZDM1cDluVUFuL3Y3dXU3Nkdxb1ZBZFFkRGVyZjVYMk1BamNoNkRqT21vSldnMU82c2p0bXByR0JOQ0swQzRySjZWYTRsN3VmNTEzbmgrMERCbFZLRFI1OGFpOFM4ZDl4T3JJSElnQzBNS252UFBaU3hRdE05QTdXdHpWSUk1Tlh1RUhFbkNZbE5pbWczV1Z2ZVdpWmFRdm56ZSs2cC9KcThQZURXWXFNSEJmK1VlZHdCWFNoeWl6QnRNRVl0RFNxcXVUZWJraXppYm13MXBMMU1EWU94NHRaU242bFNGYzBObm83c1orR0xxV2dnNUpUMEN5d2MxcVNicW4zUXprVkt1eGhBZmNicHU2Z2Rpb1hpZlRqcWliNkxWR011UTY0bzBrTkU2MHVVUEw2eEdWbnhXUDFQ', 'LOGIN', 'DEV'),
(136, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2021-12-21 05:34:16', 'YWpRVE95SXN0VXZUMHkvb1pISXNqa1krdHFpemU2b3dtajM4d2w0YndMQ3c4TzNreC9jcytPSlNUZ2JtbnZUM0hBZDljNUVHQnhNZi9BcTZ6VTVJSnJZazd1YzlpTm1jMmpTM3RZMWNTdUMyQnRXZ0NadkliOUxDRFc1NmN6YkhMV0pObUNjS0gzTHVuZ3BPOUpBV21LTDFLUWxxZ2lvMStaSGFPb1h5V1M1MnFmWDljNE9MUW1MQTVGSTlJVkRXL3MycHI0MFlPZ0dWeHFYZVNvNk5RNjdXYzF2blROWDJpVWZBRXdNcFY4Mk0yTS9zUWN5VnFCc0szL3ppMCttTGVaWSs1TTFqNmJ0Z0FoNWFGdkx2cWxLd3FTZFVUUXloVDhhUUc2Q1hXc3dzWnlvMWlCR0lRVjV6cnFEcHdrRDlZeFRsQTc3QXlzdDl0cUtQVWFWKzd2MWFRb1RYVWtMSTN4WnBRY2xmMThiZ21HdmlZcVNpWkkySDdoRGtPaC91TWJkZDk5VkgxRFMwNkQzRjd5Nm5wTjVtUllPbG5McEo3Z0Q5Y2Z1Ry9iQmRqRWJRZU9MZC80OHJ6MDhoa25aeWYzc0ZNY2E3WVdrMmFLcWd1QjdYYmRKeHpDUmI4ODdTWkdXV3RmY0prMXc5Tk1NaHhUL0g1ZC9PdUo0TERHR1NxZTlqa1VFdlQ1bUsxQVl0TTBDRUdtdWVpeEpkbFZqQTRoVUdzUzdZSGw3bmlNMWJIL3VnbWhJaWhIUmZTVzQ1cnZmL1NqRnVOV0gwY3VJRkxEVzR0QlQzUFp4T1B4ekZlSDBBY1hyaEk3L2plU29IakxlTGtQOEo1QlBLckNQWnNra0ttenVoYmY2aUxzZUVWM1JCd1BBRUYxQytCWW54MzBUaG1HMTdaMjd0UlorRnlaTjJmVGJTRFA0c3ltbWpiTTQ3QVlKdFgrNUw3WHNNQ1FFZkh1WkF3Y3dTSE1WQ3VuT1dUS1BkUEhKVzNY', 'LOGIN', 'DEV'),
(137, 'U3JLUHhEVVV1dGU4OGhqMlFHOWk5dz09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPNWt6MTZTSTNGQWJITFdIM3c4WTM4TkJ6eFdrbFl1VmZjSVVHQVA2VkxqZC9wUytic0lHUDUvNzBmZU5qalFDV1dHQU1aajNYZzlwOHVjSHlKZzFydFE9', '2021-12-30 14:12:42', 'YWpRVE95SXN0VXZUMHkvb1pISXNqblJVVDBsTFRQblorcTdJQm5rZXJOb2M3TGFkakVhN0ZITWdtREMza0FsTjRuOUF3S1lxeWlFK1o3eXZDNVFUTUJvVU1BLzBkNHQxUzFFRDJiLzRhOXVMVzByNlNzcUkxOFYvbllMZFY5UVVja1VYZW5XUE9DbmlETFFsS1J5cEFuUXB3Qi9IdVZ1RlAzRjZIMmRnV09SV1dZTVMwN2xUVlFDcExrSTh5ZFZnSnRoQU1heFdiODgxeklkRXgvbVZZKytRQmwvZ24zMnZZNURvMVZPM1c5ekxDRkxlQWZQTUN2Q1I0NW1iZHJFdktJRFlLaHIwNktJNm9zVmFFUU55RjduMnkzYUVSTDhHU0NzOWVuTkNxaVlhaEhmdDhLR3JONUNxWFhLclRBeFp4aXVGT1dkZlBFSmhIVElxdUZYVFIvcnJPKzAyUjArejVjR2lXRElHaGhOWnJyTjhyOHBCSnBaT2l5c1dncVJQcWNHRlRsbFl5YVVEQXM2SWRIbE9xdG5ybmxFaXJDeDkzeGdDTWFPSzNvOSsydlRHbkd1YXArSWVmMUNNOGRlVzIxcFZMY0dRSkIzbkk1K2k2d1VjSXlDOTdyRENOWXFoZWlwSEM4SmFZNXhDU3ZPQUw2Mm53UGVOMmh0Sk5iekV0MUc1RzhIL1h5Y0F4eGM1Y2dIell0eUtXRE1FSFZzRFpXVGpzMzZXU1dHMnRvd2hsSyszNTRVU3lEVWw5RHlvQ2hHc25aYm1nelBLRHRSbHNWN1FiQWpWS0VuMTFHb0pYTmFwZ0pBelhnUGkvY1phY2pQd29rZFFVTzduTzAzU3FySmVOUU9hZlZJK0trazRHbC9JT1loeks5T0ZCd0VYMDVvSitzTVV0SE1KR3dRV1lOcTJIRFNMZi9BVXNwOHVITVNrVUw3WGdoN0p3VVFaejMvNkdmYWx3RXo3cFdXbkNvL3F2dXJsUVFpYW5u', 'LOGIN', 'DEV'),
(138, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2021-12-30 14:13:55', 'YWpRVE95SXN0VXZUMHkvb1pISXNqblJVVDBsTFRQblorcTdJQm5rZXJOcmJ6ejAwQStld0VUYThhcFRhNlV2UmIybmNxbm01OUhPQmpxMGFhTUk0T3J4QTI5RGFSODQ5VzVLQ3cvRjlxY0VOeUdCZFN0OFRRRHhYRDgwaHBNRUZXcEU1VlREOHo2YVRrcDlxQXVCUzJMLzFtaTlraHUyUEc0cTZBMUQ4dlRCRm9SeERNbzU5Vk9HeWNlYjBodmREQ3g5Y1Fud1haVi9lSnZzeGRVWVFneWl1ZGpTRTZPVnlsUjE1L2FzTzlxVnRHaU9ISzE5Z210WmlGSUlyKzk5cEJKL0d5QnlqcG05K1VZMVZwRnlWWU9FNjRUODBSMXQ2d0ljS2RqTUdXTk9LaGtoOEs0c0FVQ0g1WUJEWSs5YVB5emx2ZHA1YVFvZGtjdEZGdklPQXdQWHczOXo0SUZ2WWZGTjRLMmVpRHVKRXVMOFQyajNaSGU1b3c4NEtaYW9iWXZobUlZL3dxYUNPN0ZNL0tpQlIrTmFodzZQTkljQzBXOHRVTkdOMzRPU3duT2hTZmtPWGp6VWlxcmszdGJjZGQwNDBkMGk0NGU3S1Z3RnVKL0ZscFNqT05iOWdsOFh5eEVUSXl0NHRTU3FFV3UvQXFPOGFhbmx4U3AxNnVrMUU3R0EwdlBvdmlpSFVXTVRINlNVU3JrT2plY09OOHFhdDZ1WkhDNC9HMmQzZjJDSG9nN2hTN3BIVXVvbkVXY0JXN2hvazdEV1RUTnlvS3J3QXJSVGF5cGpiUUJvMm04Ky9wZzNna09uajUrWFMxaHZ2cWYrbzNoYlFXQmZHRDdWNDdoQSsyMmNCc24wc1BWcHVlMjhZQ1Vrd1RNZ0RrcjV3N1RmK1dJdW9oWUhONm5WdHJFNXJFMlhpOWgyekpCS1l4R1BVYUxZNUFJZXBFZGkxSTJPS2d1NE5abWV1R2o5S0ZJM1p6MUtFUkt3cVFz', 'LOGIN', 'DEV'),
(139, 'V1VSMklNT3VuWThWTDRuSFAvVDgweFo0ZVo4WDZQMUJGaWx5TTdVM250ST0=', 'emJ5emVlc2JieUpCZm9Uc0ZDR0tXQktGTGdEZnNtOENMT3piTURCRStFQT0=', '2021-12-30 14:14:46', 'YWpRVE95SXN0VXZUMHkvb1pISXNqblJVVDBsTFRQblorcTdJQm5rZXJOcHZNeXMxZ0F4czAwRUpCMHVGaEJWc3NQamtjYXNRTlpza2x4ME94UmNzaS83OHFnd0l5OE53UFRqdG1YME9zbFZ3R20vaU16aDNsZG5GemRlL2lhWm02eHNDVm1zWWRNc3JXSTI2WkVRZUZqTXlxZmQyeTdRajEwWEE1c0tUS2dZY0cxZm1WSGptNWpIbzFoRnFFSS9sVmRlaGFMVzZqMHNXRlpWYzFuMjZmYWhwMFNsV3dJbkZtc0d3dkZiM3prbXIxdjZoTXQxdDhQbVZzemxteG5nSVlSaVZXUy9HS055SWdWV3FONVp3VnN2M2N3TkZZRlk3Y09lYUttVUN6UWhQM1ROWFg4N210YUlPOVhML28xekVWY3BhZXAvTVE5eGJsN0llMzd3dVBsNUk0NzNYVWE3NmFOcEhESXNlTUxNMTJVZHI0UnRKb0lUSzVjTWRsVURzZlcvVlFDR0pzSGEzRE1YeEpoM1VUWkZqRUJCd0FzeDB4cGZMLzhjRVd2R2RnSWN4SWkyRXNzRVBiTzJYTFNTREtrWWw1SUFOWXdydXN2UE00RDdEYURKMHBVNjRjejdVREp6UU5PMnJkYVRIWGpPVTBSaHUxeENMQVVjcFIzYndyN3AwVFIzanNLRURERkg5YjZLdmF5cHg3d0lsUDQyYXVFTnRneDNjZjY4cUE1ZW1jeGdGMitWUnlwSFBhaGlHd1N3dGUzYVAyRGFSSzFYMllrSytJNW03bUpMa05MYzU4Um5XZS9DcCttbDRxRytFbGJWUmdEdkNCR3gzMC9OS0xSNVRkVUJaRG1HZXZDb1NTUjhtWHdENk44aHJyTWd6U00wNG1nd0Y3MjFXSkwyYkxrMU5TYitUWmdFNHNWL004SGRPTmNJVWJTNjc4ZFVaSmZsSnA4VUZvMWsyRTVhWklQZmJhZUd3UjJqRUZC', 'UPDATE', 'DEV'),
(140, 'V1VSMklNT3VuWThWTDRuSFAvVDgweFo0ZVo4WDZQMUJGaWx5TTdVM250ST0=', 'emJ5emVlc2JieUpCZm9Uc0ZDR0tXQktGTGdEZnNtOENMT3piTURCRStFQT0=', '2021-12-30 14:14:58', 'YWpRVE95SXN0VXZUMHkvb1pISXNqblJVVDBsTFRQblorcTdJQm5rZXJOcE56ZWg5cUhJSU9DcTBZOEpJTEtNQjF1OWlsSm9BamxLSS80Y1JNMmxPdkZnT2NnTnFqNDFNSVRiQnVkYldsOEtwd2FjeDVPci9BRUxIRjIyVi9CaXMrZWNQNm5UL0h0ekVmLytMdEIreE5EbUJyVmFLb1hvQ0QwbFVhVWwyMXZQRDlZaXQ3YzJhc21LNW5TVkdWMzY1SU10NU9NdGJKSWlzd2lRQXYyS0FiVks5VldkUzFXci9NWTNMQm1TNDM1NmpRTXlwSjQ0L3I2Y2VaN003MGNBcEFqSXNBWHFteFU2enBYb2lwU1pacjFBWkd5NXdWaHZPNnQzYzNIbUN5L3pWNWFTeDhscCsxNFA4ektIQ3AvYk1VVW1NTzQrRFIxMXI5WWJMcCtwMWVlYUxnYi9TVk0xcGUrLzYwdDNJbVZjUUNTSVRSN1dxMVFsQWpNNEV2Tnk2VHI3dTg4MlFLU3d6OUsxUzdhS2VBVnBhaGN3RXFYdXF6SFZwRGtqMUkrUXNISFFBUzdVMFpUTXVjNzhDL2UrVGdtdDQ2SFZIemdHY3JSUGtPYUNsUU9ZL1o0RExUM3lHbmJ6eENxa2R3d0I4MXlUTkNkUkVGajdPOVluMjlLZElNWnJUTmNWSGI1S09yeGl0dWc3TVFkMUlNWG42cndNUURkQk53THRTTG9VNHpOZVhxLytJWjEwc1BUZGlSRjdiTGVUZTFMU21wVy80RG1nM010V1JlYnRuTmorR1VEbTdMSG5ZSnAxZTM4czFQdDg5Tk1LRmttZG1RMkdkQWZBUGFZRlpFRlkvclV3OFROU1hLcHF0NWdJRkhhU1pCaElXMERrL0ZpSi9oMGVZcE52c0pXTzF0bVZlN2ptMkQ0ZThjRGZlci85Q3hlQVA5c0tzalRiTkJsUmEzMk5aNGFKUFRadklONEtTRkJKd0pX', 'UPDATE', 'DEV'),
(141, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2022-01-06 09:57:05', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaitZRk5zRWx6L1AxVEZaSzdLeVczSDNRL2RqelZNTjRrYU15bEIvVEpZeUNVY2w0MWpJSUVPRWxIVyswRUhOM1MzbUJrT0hhSnk0dWhqSjZJZ2RHUWJyUndIU3JORmswZ2FQb0Z3eDdQRzdEd1VXbThLWk8zWlBkQnBZdHpLNW9pUkp4ampOUFYxMWNmTURJQnN5YVdIdEwvL1lhVE9nMThkSVRWS2FzMGQyYUxDZVdUSVZPdXdvM2lIQnc0QzhucDErMFcydzJqOGQrTHpCc3prazJxZnp6MmlMTjlWLyt1WW9DcDlWVVNpZlBpcFdWWERrZ2JiVTFhSnFTY1I0VFV3RHdWUWJQbVp6dVFZMGNHdk1QOHRmV2xaOFBRYTNvRGRTMnVoVzgyeHUyY1hMSk94a1NVc0pvRXhDc3JSRVJaNktIZWlOaStCSXdpVjBhTE1rOW8vSm55Z3hJUkJRMDFHMXZjVHMrL1BPSEZVNnZ4N2hYNFN3MkJHODJrM1h0SWJNb3NkVGtEeTVkZzVEUUZ4aHk4aXFoZlJOWWk5djFobDVrTkcvdGthbVpJYm1wNjJYRDRPYzBmYjJadDFrcEtiQUs0WHBQelB0MjNVUmsvVC80T1ovYlR5R1JrWG9CYVFTNFZjQkE0V05NaXlxQUZUV29jYVQ4R1N6ZFhxck9aampTeTE2TWY5R0ZkUXovZTIvTit6S1Q0MHVWcnJjdjZMVFp5Mlk2Uzcrc253MWd4MjdsU0Zkb2Y2T3VhVHlOQ2czUXZjYTRtU1hRc2xMNXRvbnVROUEreVB3eE1nU2tQc0k5dnVSWENNZnpZSGhtSGdUeDMwWi8wWHVHcld4RHNXbGE0R3NZN1FxVkRtSURhN2xCSUozWUpoTzNORWdiWHAwc2NIeEhCNnRCd3NZb3UzcDVpd1lXSGFZay9iOGd4MnhpM204T2NvRnY5enRxRUpBQnljam1r', 'LOGIN', 'DEV'),
(142, 'V1VSMklNT3VuWThWTDRuSFAvVDgweFo0ZVo4WDZQMUJGaWx5TTdVM250ST0=', 'emJ5emVlc2JieUpCZm9Uc0ZDR0tXQktGTGdEZnNtOENMT3piTURCRStFQT0=', '2022-01-06 10:00:25', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaitZRk5zRWx6L1AxVEZaSzdLeVczRmtvVEcrbW5tUkowTTZFbk96dlA2eWJuRnoybTRtS3hjcS9vY2RzdDgrSFZnR1ROS3ltcEF5YzRtNHJNZVZLVklJeU1Oam5Ld3R2YTdML1RMakN3YmlZdmllT1dNS1VSUTdIYlJweGFVWndXS2poZzNqa2lINjMzaFZlUnpNTGxXa3U1bEk0d2cwTEZIbTlkOElXeEpYbEpKR1BxZENHU04vOC9PVGEyY2NrNHNTa294Qmd4K3hSc0h0b28rOTh2TGhjN0p0MXdORzRFaGx4dVRtbG5OQWRSdmhkdjRiWG5mRzZRdUFWVTBMWmlZRnRiRFFkNEJPTUtjcUQrUHhKNU50K2NraFRCeHYrdjJUQjlaU2lUYUs2bzJWbkRERWNpeHRWNndPeE5XaHgrdGh3MXJFTEJ1b0x0dmJ6OWRzK0YrTG5naUZKSmQ1STRFZEh6Zzl2NmxLZHNGK1V0NHBJbDdqdEYvbWd6QVBTVUVhQnIwVFM4ZjFreTVvWDY3WXJuY2MvTEpLNjM5NWlBeURHWlZMNXBldzUySkxyQ1dkeXdMU0tMNjdBR0tqYUdqeGJpVkJvQVlxckJ1cHdYTkdDS3JQTCtXR2l4R2NwaTBRMDlJU1Z6UmZBTHZSY3dwRzFsR1N5M3BqbGo2THhvbjNyMjhkV0NibmRFZlpkRFYyZFBuMW1rRlNIb1hMbjhRT1VCYS93dU5JMEYzQ24xcTMxWS8yY3lUcUVnMkUrSHFtMi9BY1NpWERTaW5pU2EvUjlFUG4vQnYzZDViQ1p4aHhxYkNCcXlxVDYyVTh0UHN0bE8zZXphKzYxN1B3N2ttTW1EM0ZxUGFKNTlieVpvU0d4c2o2NFpzOE42cFd5NXNYRFkxM1BqZ2h4dzFwVXNUVk1uanYzVVYrNFY3NjVsVEtFem1wcmlpY2JtWFpUby9wTC9sSGEr', 'UPDATE', 'DEV'),
(143, 'V1VSMklNT3VuWThWTDRuSFAvVDgweFo0ZVo4WDZQMUJGaWx5TTdVM250ST0=', 'emJ5emVlc2JieUpCZm9Uc0ZDR0tXQktGTGdEZnNtOENMT3piTURCRStFQT0=', '2022-01-06 10:03:15', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaitZRk5zRWx6L1AxVEZaSzdLeVczR3BzWStMMWpNQVUxNzh6ekxIcGQ3Yklib3FYUFhQQXhxdFhBaWtJS1VYVzVwbWdkRmdwV1g3OWxyRkhYYU4wTEVrckhQSnR4ZkJWblBtMS9KQUcxMEhvR080RFZGNHB1S3lma2hoUUNKVkUzSzRvYS9NYXVycnZQeSs0b1NBNzFNc3NoZC9zMVh4bWpGbWl3VXNoK2tiNzRGR2R4cllTV2RNRkxPYnJBcktBMTJ1UllUUW92dG14RHlPTklINHdrcGVyY21yV3lRMkVMbHI4VDNPYmpCVGVCcmdTcjVHVnVIVWdkQUZVWjdrWWZEM0dDcW9GVlZvdEdCVGdhWjBEdmdIcHVlRVBLc1lSUDhmOXp4cHUrMkp6bU1YNDMyRmp5Y0RDdWxTM0R5andBY0ZYcjNUM2FYUlU3L2pjMHFwZ1NRUlRVY2xsMldiOG1TMHVVVFdYUURKcks1dm8zcHdqR1RyUWM3YU1jU1hJWnVqeG5RUlBjTllkS3luZkkxQWFCc3JEOC9RUjZxWVUraFN0Zk8xSldTMEEvL0Q2VWpXVFFWUEhKUGNJWmtGQXBYenVyNTJQVkF3bnlVLzRBd0NyREx2MzBSTWRRSmQ4cEl5dkwvM3JVOERaN0dVcDdTQnJDYnFqQmRSdncwaHR5OWRsSmxXNWRYRVlWSlYrM3NwTUV0bXk5QzVnbWQzZWJXdUJjSTBBTFRKRTFQdmpKTnNKK2xvS3lPOEJyVngvRUQrVmVGNUlMTUJtdUJyWm1zV0pFcEwwc0ZZWVZiRkxDVjErWHJNMXRSVGZadWRIVHRadW4wZnZIZFl0cFZTY2N5eDR0QjhiQUxISkpBZ3dqV3RLODV0VzlrV1BwWGVBb3N6a0VHUHJJZk9FRW96TDFmN0FUaDJQM2FhZnFad0RaL2lkakl6dkkvL1NoMzdmUjZDUTRBenFw', 'UPDATE', 'DEV'),
(144, 'V1VSMklNT3VuWThWTDRuSFAvVDgweFo0ZVo4WDZQMUJGaWx5TTdVM250ST0=', 'emJ5emVlc2JieUpCZm9Uc0ZDR0tXQktGTGdEZnNtOENMT3piTURCRStFQT0=', '2022-01-06 10:08:55', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaitZRk5zRWx6L1AxVEZaSzdLeVczRnVnbDUyMGVuQU9CTEhINVZkbzBwYkNjSllkQ1RLTyt5ZEFiVXcwdDJXOS9jNDVuNVBLZ3dGYlQva2ZKOHZVYmdmVEExNGFKSHN1RnI0WEVhYWpGZDYwb1UxSDE0K2FTM1FuWlNIT09qWVd4c3dXQXRkT21hc2pyenVxS3o3ckNTVzdCT0hCK0RJMVZHMGFOYmUyOXRJOVBvWVlwOFptSmpHNHp6MWw2RGIvQ2RRWmhJUkpMNUZSbTlQMGpqWTRQcUx1UUNGeGdOMUVrTHl1eEp5VER0d25aZ1NSZHhrMjl4OGJFU01DNm1KK2F6Vlkxbm9YU0RuYkU2b1pTQ1c4dTRPN0JTall1WlJXVDJ5em9CRndnaG8zY0phck1Rbi9QNTZFNmpJaTJzd25zTXFJemtHWGdxNnVwVVJkbmFiaVg4Tm5PWWR2bWRXWURIdTBkdWRLb2lJbC9kUWxRL2dIbUp5YVBMQURhU0VtSGE5eTQ1SyttZTFLc1VhQkZhUFZvQzl1bHZJeXcyaENuMFV5dUtpSjRkUElNcnIzL1dScWZqQWRUSWNhY1Qvd1g4T2gyTXJ2U1Jsd0Z1ajNYcS9kVFpsem9VT3FPRFJMTVBVMStzejIwZ2tKS3U3a2kwdkpPcjFZSEtMQjN5UnNHY2gvUUNCdm81RUw4SHBoSWJtMFF0VVJKcDNtZDNhT0duWUk4MkpsV2lJc1k2VEdKVExBbFpGeVdoMG1yQzdadW1jR2N2dDc5b1V5T3pnSzJwRmNMMFpHYnoyc28rRmJqYXZpQzE2WDV2a3JzM3pHNVZ1Nm1kTmk2azE2Tm5BV2g5ZmUvRWNwQ1BNN1pBQjUvQ01Sb3A4ZVlpN21SWmNtUERhRDY3Z29Edk1ZNVN5N0VCczF6bEJ1V2FML0M1K2p1SzZuMnJDREx5ODU1VWhFRUpMYWplMGdP', 'UPDATE', 'DEV'),
(145, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2022-01-06 14:21:32', 'YWpRVE95SXN0VXZUMHkvb1pISXNqaitZRk5zRWx6L1AxVEZaSzdLeVczR3dGbU1xNnQ5VnJDNlpMTTYxbTJIL1B3elViRzVrSm1LdFRPaDNIcUVGbWFDMjhYYWdoaWZZY0hvdWJTY2Nac3hiNWYwekpJRFVSbm9wWVRuVGp0SVp3Q3NweVlXVnd5U3NKYS85OFhJMFJrTkNyRE1JbEk4WG1FeE5BSllQZGg2SXdyQUpPZEpUaDlickN1VjN4eFloSEM4V2VheitJL2lDQlhQbjVoNkFoSWpVN01qZllPYzNTR29ZK09BcVBWUjAvWVBrdDJiWHhJanMxeFd6MFRHZXRzY3lZS3VuNjFiU2tkRWJEZ1RWaStwRFZKU1g3UE5OU1JtYi8zOEVSOVFsZ1dHOC9kWkNrbGpjVGU2OUFrWjJBTDdIcHRybEcwRTVwUTYzZmdyQTF0a1BtcHFqZVFINmZqZnFSOGQvWnA0MGcrd21rcGVWU3haeU9xVjY5RE5yOER1NzNQdU9TZXpBZFltWEV4bmNoT1NlNUZNNGJsT2NlS01ZZnF6eXBCa2tlNS9GNTNiRU8xYUtIekExYzVUUjlEYmtIRDFFY01TMHJzb3R3S2NLNk81akxxS01LVHU2cm16T2xqZWN6MkRDTXluWFEwSkRocWFlM0tDY3kvcFNjZzRHTkFMUzNrN2JRRS8yL1NrNi8yaDlGM0NmbytrcHVXM2dsK2ZPZmdBZUwrMjQwNW5YVXRpeTdES1d1Y1g2WDBrZFB4WXI4K0NSejl6dEZHWkw1dUJGOTJWQ1NZcnBBWWRCbGJtd0FBWk4rL1R4WVpNSkFkRE5UVGVSMkNIbnBlS0tZUXhYaGN6dE5OaXJCTG9mZmZtcEVOcWJ2bUQxSW9IaEtHRTQ5aSsreUkzak9NQUJsbkZwd0RqeFZlU094YXhNejhSbTBRUFFIdXZDUUgwZzhLYTg5dTZGRVo4Q3oxcUJheE5MeVZTU3Ju', 'LOGIN', 'DEV'),
(146, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2022-01-09 09:31:41', 'YWpRVE95SXN0VXZUMHkvb1pISXNqbkdETStNb2t6aWdxNmRQVWhLN2o3ZFBOYS9pYXROWk04bERKaGk5STdHT0xlblZiK1B1MWVPR05KY3ZEbFE5dWdiTlhvMkp6eTFwUGp1bHZ3Z0pYcGVZbFU4cHBFOHdmcFJ2NWVLSEI5ZjdDdXJIRElINmpOV0F6RUhxUWYvWStXbk56S2VqN2RCQnRQN2hubm9FY3NUWGw5K0Y4c0pxQnZjT3VPMlB6Q05tQjZtQ0VNQUVEZStiNmFkbU05UURXUDI3WFNVdWRhRTdlYzFuWlZrNFNxV0N0Uk1saEZNMGoyOFhBRHJNVk5TMHc1ZWVmeU5FVzl0SnVUaExPM01pQ0R4VGNwREM5akthTTFIQml3SWU2Q2xLb0VmNXlnWGJBaW1tYWNudmRVd3ZFL1VKaUZVeDdqOXNHTUNRUEJySnRlS1d5Z0VhVjkveG1oTHpTb0s1TGxxNFk4ejV2NVhWQWxpbGgxOGt0eXFJYUVuR2t1N3ZFUmZjUzhXNTlFN01ETnVBSXhLTmhic3JzZmU0R2JQZzUyRnJibmhqVjMzNWtET0ZtSmVPaEdmOXVjN2hSZ043NnczT3duY3hPOWZaTWV4cCtkY1I4eE1FME8xd3RKazFYbWk4ZnoyTWl1VzRhMFZkWlJESjJ6WExDRmwzUWR1UjdZeS9LaUpnYW83RU1wQVU0MDBRb053L1dpTzZWOUtRcVZlaEVtQkZ3TU54RngzTXViWTVlY3V4akJsSjFtcFRhMDBGMzVvdG5JWjUzVDMzYXp3cXNjUk5zL1MrZnlkeXk3TVNKSTgxTnJDYVBNWVl1S05sbHZDOWhnOHRMK21RR1c5MUZrTXZHUWZQelhDQnpRQUEzeExnYmZpWVNvU0U3S2RsdjJGbkcxZmxuUnJwMWJPV0FiSTNzSTVmQVlXWVRMaXQ5c0ppQUprK09MU05oRnI4USt1NXA3b3lkM0tSMWxQQ2lO', 'LOGIN', 'DEV'),
(147, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2022-01-10 13:57:30', 'YWpRVE95SXN0VXZUMHkvb1pISXNqajh5ak11RzRkTzhmTndWS0szczV1YXNuZUF4aWRFc1h5dzJzRDl2NHN4bWRvYStaMnZLOTRvTk9UQjI4SzVGR3pOT0FFcnluVEs3ZVczcFBzY1FSL0F4NU5xNG9zZ1VlQjRqR3NQU01OVVBJQ09HQnFkbXVlaVhHd1ZQU004RHpYcDYwVXZHalc0Q3lPV2VxaG9HQXRQaTA2YVVyWStxMnlNaWEyMXowRTVxVTdHVzYrMUIrdmZYOGdhWU5yN0ZsRGFqbUE1Y1lla3lCSXEzVXJvbFE5clZma3F4YXBXRWI4TE5VNzdHS3I1NzBKNU1MK2RQM0Zzdmc4RjJQRjlyTzhtRm4ySFRtRWRxUWw4TGozSkVENXh5OFoyOExaN1B5MGxRRmp4Sm0vaW5haVoxZFM1aFFiS1Z1L1ZBM2EyWmhHTkdNR0Z4cElmaHVja1htZjBhSWZlaVUzMGE0cWZwMjcvNzdyM3BWT1g4NXUvczhVUGdyZFFBYktEallJaFloVFZ3Ri9vdHJiMC91OWVYV3JlTTM1S0NSdTgvb1o1QTFVUncyOHh3Y005cnBLQlNodkRESzNWcjRiY09KZ3J3WnZ6VXFvVFlyMkM1WmVzelFEQzE0RTh2SEVvcFpIMTFyK2UyM2c2azFxWG1mNnUrK1BKTDRlNUxwaCtlNjFNYVQrMS9renBmcDE1cElpancxYVpQU3lvWTdybkdGUVpINi9Fc0FhSi8yVEVxVEUrbWloT3lmSkRmbnVyV3VLUTVDTUJOSjdxZHJ6a3lNZ0Q2bnVzYnlWczg3NkdaTlprWTN3a25LdkdaWW13NHBFd2EwRE9ybDh5TmptWXVDL3BKZ0hRUVdzMTBZd0xMRXJpcWtvdFMra3JWUTd0NzAxRFROUElPUW1hcGRzY1k5cXpQckVSNXVuY09EeDAvb1I3MFlUYkVNaHFwTHlHWDFLR0NLNVp6dTFBSXlQ', 'LOGIN', 'DEV'),
(148, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2022-01-11 14:02:11', 'YWpRVE95SXN0VXZUMHkvb1pISXNqc1U2RU0wY3RhRUd6MFE3bXZDTGNveFFONjdCZjAxdkxmK3lLOHZXb1dFVEtEdFVmYzY0RDVFOGwya3hNeEgwVy82aGMxNVpjdnAxVVFvL01QZExnTUNVVkpVWjc5RXlhVWE3QXJOTm83aUwydlBOdjZTUTI3Zkx2M1krcDVydWhJdjc1R1JBTlZ4YWU3RGhuKytORXBBWm94YmNoVFFkaVhORFR6ZkNuNHVJelF5S2N2TmxabjBUNnNmTFdIcFVTY1NEcXlUWVJCQ25mY291eElhZDM2cVN6eFlqdjlEYjlEemlDTnQxVkZNaXNBaFdiU2Q3OEgrVTlMNURlRUVlVnJxaURQd0tEMHE1eFRNNXEzUTZUTktiVXc4QnRHZHJCb3RadmYvNGF1WUF3K3VlSmxtTUNxUlo5VFF3eVluY3VhU1hZRkx0dWVlRytIakR6SXVVMElRNXZ0UE9TQWVpbzR4WFZKNmE0ZUtBWFpDV0h6Mnl5bVdEZlFMRi8vaS9wY0k1RTNvWjVRRHM2N2ZQZDJWdTg5eDFRVWkxN3pBWHdiWXNWbm5IMm1WWmdVNWNGc2RmZm9WS1QrL3hEb3JhRC9UcjVBVi9Ha0htVS93Umk2STg5a2pxZGt2SVlNR3ZPbkNVcUhYRzJOL0xabE1wSndSSUxFR0VBZWQvTE52QTYrWnRDRXg2QzB3TEFMY0NUQ09uUldLaU1CalEyZDVrQ0ZBZ1pFRStwQkJYQ0xjVDF6U1BNSXBVT3RyMit6ckgvb2R2TjVHTWdzTU1pdHV0amlEYmUrcytIZndUakhJbDFPd3VIRzBJRXF5Yk40STBqODhoNFFzbVRoRWtiWFIyYlM3NG05UkNWcnhxSDJ0YzNZTGw2c3hnT0hRWUdyNFFyRG9tOTRpSG5HY0hCVmxjSEZvN0czcm5EVFplVlZmdXBSN2JEVitodXdaOGlqZml4MERRNWlpblJ0', 'LOGIN', 'DEV'),
(149, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2022-01-12 14:34:01', 'YWpRVE95SXN0VXZUMHkvb1pISXNqcXUwZ3dIbkZrSzZpc0d1b1l4b1dBdmx1YU9EYmdHVHNzV29qMmlOdUV6RDhWSTZlaHBRUG1QbUlmenNwbjNYYmF2WmxKZ0Yvb2RGTUJiTmtpc3ZUWlFQVE55cllyVFN4aTJrSWlBdWI0OFhnSXlJODFHaDViNnJaVE05WjZiSm5IQUo2ZXprYlpsakxVQVMrWjhybnFUT05oZVpaZTd2eEFyYmU5WWN4V1B5Q2Y1MDRzSVVTZnptSSt6SmZya3lFQVAvU2tLUzFVMDhDcmNhS3Rtcit0bGdYN0pUMWJidWtEYXdKQkZYWUI1VUxiMTI2U1FIV2djVXdTMGxQVWJyRTVjTm1vRkgyczlmVVpRUC9lQ1E3aHFMZ0lkSTFlRkh5TVJtdm9sek1IS3NBK3k0akVwUmhZUXd0Y3lCWlpuZzY0UE44SWxSYjNkUmVmSEY2UkRFN1h3YS9oWlpnTytCMXlHUEN2ekJHaFhQTXZqTVU3WWp4RmNuYUprNCtER2NCaGNZMDVRb0wxaWZpWXhrMFRoZEdJWDQyVlcrb2ZxUWI4VmlxcGo3WGhzSGc1bkdVU3R0Y0JLR2tMQWhkTVdwbFFrRkNFaUJXdW1OaGlJa05NY1NQSGJmK3pjdlpaWnVPRk1Rb1p5bCtQNnpsQ2F6RS9ZNS90M2VGakVCTEg0dVZDRWJKV2dHQ1RoUjM0YjlBNDBoS2kvcG9vRkVpeWh3RVZ1cFdSeUFFd01CeW5JeUlvdWxzaUFNa1FuYW5iQTQ0TVpTN2ptaE9RNC9Rd0Z4ZUV6WmtiZEd2eUh0R1NNT00raUVlSWlSZlAzNC9kekRuOUpRSGJ2dittZ1ZIem51LzB3N3VRRzlQQ2l1NGhReThReVU2dVdPT2dqNE9BZGdMMjVFWEtOdlFuYS9BZFJuSVhmK005di9oUGxGanVhNTUrRjdsSmowbGYzUlp3ZGNQcWgvWVU1Um1O', 'LOGIN', 'DEV'),
(150, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2022-01-30 10:50:26', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdERYMVZONnhWUCtjOCt2L01xVWlORWQ1bzBJZFBobkdzUlQxdzFBK0YyYkVzYkdQcHVaNGxmV1JYV3ZqVkZRL0NjcGFuSGl0N2hqZllUOUpKSzIyeE15ZHB6NDNEKytDWWRSaisyNEk2OE0rMDhla2lpa0hxN3duUkVtdkZpRkNvUDBUS1NwU0FiTGY1cUlCU2dmNmRIeE5UMUQxdVFLWlRVR0RJbHlNOGFwazRuWDVNWFRJRnUya1dzOXJYK3h4YkxJSDJKelRwQW5xOWdxSkpMTzUvYmJ0aXhvV01VWCtxUU1kbzdna3VtREJSVW95SW9hUkUxaVhQWml3YWlGdW9KYVpMZVJYakx0UmVtOER2UFdLdWw1bkVlVllMWC9TV1JtQWlqNHFQQlpQSGNMTmVsMy8xUk1ZVG1ueFcxMFZjZmR3THoyRXZ5YWNyMTBlMjI3UEYxTVJQbG91OXdvbXBvZnhGSHRZVnFUTmRUZmZTM1l3bndvdlhPSmJsazB3Ly9SSUo1Yk9BZDFQR1lUQXZBSEJoRzd3WGhDampKY0o2c0dyY1dwdzhJYndiUVQyeC9SSWZRb1NrYkREems3cUJ2TFdGYWdxTFg2Mm9vRktlb2cyRXRweFZlYUptUFRqdFIzakFKbDhQRktNeTdmRWh0SVU2N0JkQWhaYlZlSTFHR21RQllvekxncmVRU3RLV0dEUFVFYWp4Q2EvWW53ck9hYUZSK2NuaUZUMVFFZmR3NlFTNnNNaEd4MnpkMGxicFg4cGp5YnlkdEluVW1TOExSVWQwM2UvbkVadHlsVGxNcHR1M3BjalRZeTJ1L2JieDgrSFdLeGpmUS9qb0NXMGJ6U3c4QlpaSFdaWm5VT2pQU00vdXZRYVpjSHVibG8xTEpoWStBVUd2V3NBUHhZNFZYUUlVRWZOSTg0ZHRnakNtOUlOTCt5Q21wY2lid1Q3YmVQNE16VFVj', 'LOGIN', 'DEV'),
(151, 'U3JLUHhEVVV1dGU4OGhqMlFHOWk5dz09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPejFvOGRqV0RnQlpPb3Z1bnc3cGxWcVltNGs1ZDJ1Ykg3ektjK2lEWU1jMm9wcnoxYTdPSHhOTGVvcUJiWmN1Rmc9PQ==', '2022-01-30 10:51:37', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdERYMVZONnhWUCtjOCt2L01xVWlORmExaHBQS2tJOGlWcTN5Rmxwc2U5MGoydTcycWdpWVFrRGdGWVRWUnY1UkhMcDlaMCtWbzNCdTlsUHdUdncxendXWmE3Z29rck8wVys5ejFtekhxZ25CMlArdU0rMXJreFp3ZmJZS0FVNGlUQU1VYWVDN2hRM1JwcUZrVENFNWVTVEZYUTNsNXBvQnk5WkY4c2dVbGN5YjB4N04vWE05WFZIUktBZUVQSm1yaDVNSnBOd0FWNDFBNTN4SGxEYVpKeGJhMURKNTZVV3pxTDQzNmNHZUpSeDllakxVNnozYlRXRUtUQmlFRHQxQVN3OExubVp5NkVyTW1xRjVDSTFpQVE2aGRnMTJZQ0ZYTW45NURVVTdSL05xU3VrOURWazI4ay9BOFg4UXByeXpVOE9hTlR5cCtpNkUvMzlQV2d2MkFiVnhZSlUzbFNzb29PQ1k2dWtNc2RScGUyZFU4alozdlJxa0wyR0FRRzgwVkUwQVdXR2M5MHA1MitCSktZa085d3ltanphRHNNYVB2eUNPNm5xU2xUUGlrSDRDaXlZM1VaYTJscDVEVEVhNjU0bUFyVnhodjJFZFZpZFVEY1RFT2w3NEg4S0V2Q3F3dkJkUlB5RkM0RHMrblc3bWtVNS9MZ3QrZzhOcWZEWHVvbUpmV0pqUGM5UVhzbThoRU45dFhpQ2NBWENnazBhTFE4NzZVcityZWZWRWlvOTBSVm5laUdxV3h4TDFRZGw2dFc4ai9mZDQ1OVRlRXVUSVRSR0ZNSVFNeEJmVW1vMCttOHA0YzJGSVAzTDZvc2M0N2FDNmxWSUxjdDg3RzdTWEdqc2ZBa0xrdUUrWVR0OXJUN0Nrem82NWdnSTFaNHI5aTdPUTZtT0lpZU9Eay85QzIwRWkvcUNsZGZEU2dhSGFiMjYyWGpCWnRJb1V0enlybGxvVWpkN0Fx', 'LOGIN', 'DEV'),
(152, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2022-01-30 10:52:29', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdERYMVZONnhWUCtjOCt2L01xVWlORlFodU5VNk5mbW9mcmFoK1QzWXhRMFRCdDdCSmREc0tRcE50eVlJUGJoMFpmTnpLTVE1RWpSd0hHbms5M2F5UFdhNjBTVUtxbHNuYjBmQ29KaG5MV3pBVFFjSXQ3TDFTQ3g2NUVGZ0VmQUtDQ1ZuODRYZkNOS1kxY2xvdkJRbEUzRVI2RXE0M0hGUXFwc0VvTysrQnREMDdaU2E5OUZoSWN1QmxSTzM5WFE0YXpCTUx5MXRyS2o5UWJJTFZhN0VKRVFob2xxMkZCZHBYajNmT2NteTE0Zi9iaWNUdFo0N3JwTG0xZTFSdmNTeFFXbjFQZWRDcTI1NWNsSjh6T3F1K0VJTUR3UjNqMzN6TGdnS1NNT3Y1LzlpRlczUG5CU0p2all0aWZrY3crR2hhY0sxS2JhTG1zQW05NDJvbldmTGYycExpbWhoTGdYYnptOFFidTN2Qmt4ZUFlSEJNYmdSU01oMnA2SGhodFhQU0tmUU1BVHgzM0xzRXM5MHNnVUFGSys4YlFwY25rSWdSSzBEem1ia3RXVy8ycWVKeCs0ZVc3WHhmNkdCTFBGWlR6VEJRM3BsWlcxOE9sdWQ2VjNZYUJhM0VLcjRFTTkzbzh1aDFYM0tPY1ZqU0RvaUZreng2dTFOSTVUaDhVNm1YbXU2Q2xiM2pnbmZLQ2lIMlJuSHFlSWtqV2JrZXo2U291bmVhV2dqOTNTemIxRUczYUhDK0U3Q3kzNkxKZWZpa0lEVUFqa052NVJEY2hydWtFV2h4cVlwTmZaSnpCQmRRY0o4SXJBVkEzeFZ0b3MvT3RTWXFDUE5UVWZ5a2c4ekFZblVpbXI1dkNEV3lDZjhTUTBKbWZlWmJpV1NUcFJ0TWxqS0IvYWJtdnJBWUxVVk9ScnBkQzZBdWU4VDhtL2xJa2J0SkhucTUvTE5MUVZoZW5Hb2VZYm15', 'LOGIN', 'DEV'),
(153, 'QzBKSmxBektsTjB2YTA4eE4yRWUwUT09', 'TkJEUWgyS3daWmhZeUpkeCswZUY5RmwwMTIrcmw0ZTNxM050NS8reHhiUVE3TFZlUWs5STdGSENuNVdIQzRoKy90cmpLQktPeHppaWhrL1B6THhMb0E9PQ==', '2022-01-30 10:55:02', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdERYMVZONnhWUCtjOCt2L01xVWlORjRWalY1bnpnM0JmRzRzbmkwaFhpd2V6WVRIZ1ZMY29xcTdNZ3pEeUtrL05vaFE2eUIzV1ZValJaK29Ga3lVTWdKRFZJWU1yTTZJVTlrdGlNaFdpY04vUTZtOEpBN2xDT084REFlOHZsaVBObjc5bjgxc2JXK1Q3aEppc0VMd0VBRGZCalBtMGxFOStoVnVHeWpSdENVVlFVVlVLNkg1VndsQUxlKzJWMUNvQWZhMW5xOXVQWDhzVlBReWN4b1plVUszOGtubXhrTFF6VkRGU3BSY2ptei94clQrUnJvMW8wbjdpUS93SkNia0d2eDUxQ2ZRNVVRZmxxNXl2bThjMXpZTkhCV2tBdWVveENRMWJDbXpwK01TNXBlTksxR1N6Z1oxZ21jeHJaUmE2NVU0ek5zZzlscTk5ZHRsa3lQMHhTeHRpWG1pRTY1MWZDNThjbjJrTmpwN3VjenY0enVGaHRCMVF0Z0Zrb0g0SWJ5TVArdWs3ZkM4RUJsQy95cUpVdDJhdHBNSEQyUXVqNVY2VVkzM1p1ZnMxUUNSZFhEU1NoWXh2U29jWmNHNGZtNnNpSG4rNmhpcS9NTTRxYlpKYVBsNUt2TW9JeHdJNFg5VzlKUXBwWTRyMlFPbUFNUXlwaXk4QmtrNCtndnBocUFJSHQ3V0ZHckFYMGV4OUw5c2pIUTlhQlZ3cDcvakt1TVdqRmpIRloyNUROUzhvcjEwZE85SjR6K2x3bzZWZUQ2dURBakptdFoyNCtYajZyT1Q1Q3o2bjJwemxTYlpLTW8wRnUzRjN1SGU3VXJtYUFlZnBuNisxR3BRenVRRnBXU1lpcDlJdkJRcWZMRWxIVG1yVFo0Q1p5R0Zib3RmVkNqSGpzdksrdWF5aWg0Kzl5N2hKcGtVS1FUM01rZFFlQzJRNHV2d0Jya2tnNDR5VFF4TUh3YXQw', 'IMG_UPDATED', 'DEV'),
(154, 'dzdRc3NGa3ZyQUZ3V3RDSExIbnNQQT09', 'eHZJRjIxa0QrUGxRYUM4TUpVSm1USW9kUU9UOURLa2N3NXVIaEZ0NCtFOHFuUzc3Q3ZHWUowZVFJK3gwUWJQT2hiS3FIVFpUVTBYZHJqYlBzNnZJZHc9PQ==', '2022-01-30 11:25:09', 'YWpRVE95SXN0VXZUMHkvb1pISXNqdERYMVZONnhWUCtjOCt2L01xVWlORVNVN3dvazhUWGNpRjFqOFR1Q1RnUVF0YmZYeGJMVGdOeExlQ0kyR2lSUjR6bGEzRHhmaEttL1Y2dUxIaHUydzRpOE1tVXM0QzRDcUluR0JjeVpUZWJmSlBYZnhVd2cwdjhqcitvQ0RoSHVTMmVpb09oUGJKMTgyN21BSFh1dVRnYTlXcTN2UGNnbUtXWWc1cXpkdDZhWHRsTmJCZVZDaEhPMWFwWHpJMzhoc2wwSTYvRHlrVnVKN2RFeFltU3RHZTNUZXFOSTk2RWYyeFVTZ0l0WVBzWi9nR0FKYkQ5L0N3bEp2ZGc3MWhueC9mVEtxSlRPRnl0RGNBeXNsWENxNTlvU3NDUDZvRXJCWTQxYlBmVm91NUFOQXNmUWRyMmRra0oxOUJXcHkzdlNZNkQrem5BNmgySUMrTFRCUVdYaHZpQmdHTk1KejFSL1dVVjdPRGJEQzBjR1plZ1dFbm0zbkxQMHZUVFl3eVRHNDBERmhHZmpOUEpLSVlvUDJsN1I3SVBCdVJsUWhIOWc3QkNnSmp5Ry9FUG5NZHNjd3VyWG9sOWxmQXV4MEpiMnpxWk5MY0JkNm8yWXQ3NUFLUG45d3dhZWpEZW9FeGNMZEZNY3VkNzlMNk1xaWdxNHVtTFVEZ01SRHFiSHJPVjBiVi83bWY3N0RyL0RmTEc1cllnQTEyNlU4ZFd2RnpzR3R1VEUrZHBtT3IzMXBQNmIvQU02SEIvb0czY092MDRYdlFGbWNNZk5CNkJSZ2tYL0p1Yk5RRGVtRU1lQnEwcG9xRkZRS0xGRndZWkdqeUlXS1RYNzBjbjdDQk1lMmdLRXcrakd2VnFIaTlGZUZkM0xpOVFMbEJQQURvSWRJOGZUcDhPZ00vZHIzcHA5WFRHc2pDODAzTEJ2TkVFWjcwVXJHQ0xQYndQY2w2NjBBUkFnKy9WS0tUUHNo', 'EXPORT', 'DEV'),
(155, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPemlVOTAzZWhuemppamcwb1J5Y2hnTk91cnRUSnZyckhoeFc2cUszZXNPaGl3SXlMc2RnUHlHYVp2enJBVzZNMGc9PQ==', '2022-03-03 17:42:50', 'YWpRVE95SXN0VXZUMHkvb1pISXNqZ1pRb0NGTHNmVFdaMG1VcWt0UkN3dFhCY3VpZklXVEYwZzRIZ1BaV1JRdnk4eUF2VzN5KzJsZThSamlCWmI3YlAwLytmb0g2VS9ISlR0Y1BaQlRsUVJDMkRjdXlXUFZKMC9MeE55ZElwVDRsWHBSUzB2TTNkK0IxZUcvSmx1UjVKUWIzempmMDFIdXdVZC9oUjU0MUNEeEN5eUVPc2lXS3Jmc2E1MWYyeE1TQzZ3YlZhWWJnK2kxQlY1WlRLU05QUVRHbGVNRmErMzBGa2Juelp4VGZKU3F1WGRWTU5QTzRmTUhpWEFrK05Ic2ZDMi9oR2xKcUwyZjVtSFN5TjBTWUhUNlF1RkpJWStKSHR4MDRWS1NOUC9MSWxobUxBMzBRK3MyMlh3Mk1SLzZINHZHMXNHazgwb1YxK2xPS29tUkI1Tmp1cklFQmJCcERkOCtNTityS1M0a3dNMUlXVUYrQzhwYVc0UXFKTkVLck1mNUw5NmZHMG11TytBVEQzZnkveFBJQ0lNdks1cS9sVktLUGZPc0kvZFF0S2g3anRSMitqNkxyQ3AyQVVjL3pDUGhXbnByNGxjdVFYL2JSV250UEd3VTFKMnRkVXg2NEliM1gyTXZ0aGtqRTM0emR1MGN5YXl1TEg2dk1SRmxqMTgzUElBWEE2Slp4cWFyQUZVaEMvbzljMFZhdDRscVVqZFE4NzRUTi80bEVVQy9CK2xMVGgrYWM1UWpBSU0renI1RzdyRHVZbDY0UXEvanE2MmFnTm1OSkl1TndvOEJTNENkS0c5MC9waU4xM2o5MUo0WnpjVkJ0Uml1eU9GVjdESkRvOFZGYjNRNHEwVUtQMG1mNjdHdlR2WEVHNUM4akhpNi94ZnJLR3pFeUpDU0ViZTBiVjhiaTZ5WTRSWllyQ0d6RlZTUUF3WmVFNjl2NzNZYWYydnFSVGpESk45Vm43ZmxsZGNJVFo1R0dD', 'LOGIN', 'DEV'),
(156, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPemlVOTAzZWhuemppamcwb1J5Y2hnTk91cnRUSnZyckhoeFc2cUszZXNPaGl3SXlMc2RnUHlHYVp2enJBVzZNMGc9PQ==', '2022-03-03 17:43:47', 'YWpRVE95SXN0VXZUMHkvb1pISXNqZ1pRb0NGTHNmVFdaMG1VcWt0UkN3c2hXZVM3OWluV2hUNkFsSnU3RFJlWWVPRlBRMXRwbnFXTk9XeUNyKzltZitRNzh3YVRZRkVkUHd0RjMxOXg5NG4wNU5OQkxxZVUyaDRkZnRKcHBXcE9SbXQ1RkdEVldpUzExTWlaa3EwQjBuTHlYODFTcmJKNnZxREhTcVFXY2dycjlNeDJnYmJWRStJVVIrRHh1VmVpOXZ3ckF3RFNuNTBRcXVaOFJJZks4c2thQklPUDExUG13RHhEcDlIVHdkWDltbHhVR29adFVZT0pGNUM3anpTZm04N0NZdkVhQ3dMUGhUMVVmNWg5SnI4WmhJejQyZmxyWmVDVzBBMWNUZU5UR0MwcWpJbUF3cCtOWDJ5eDZKTExSVHhwb05BOHBEdU9MWjQ0WmxWOUlYSkZOSWRreVRldDBNaWVjZGk0REErcUhTREZ2czFsTlQxWlFKanFJMmpRZHlOSGRXWWxWMUJEZVpaM3hwdUd2dUtFUWpNQXBkKzZrRkl0dkNvdjdlWFlXN1BOcXc1RCtpNXlMOGtYYUV6YTkxUG1LeWp4MVhkbzZ1dU91U2ZDUzhIZ0lwMGoyVWU4Yy9pelo5U2JBMm5WWk12eCtFbElSUjRKR001RElISmZVMjNSWDMyS3prSVV2d2V5bE5nbHVodStXOTYxNW5oalVKV2FPRmFaVklTaGM1aUdZOHVzUXJ0ZXZUY1Q2WDJub0o5MVlBRFNVVzgzNWQ1czdBTmxvdWFBQlZ3TzlJVEJsZldOTVJyUjBQR2YzQjBCTVNYOTBpamNQY0FWZ0xmenI0SW5qeERnU2l6eW85QXlYY1FmalZEUjBUZ1VaMUwzbjFycXA4QjdkbWhuUDNUb0dzemxiVk93ZDNBaXl6cWZ0NGxRajZkYVp3aG5IWlFyS0s4R2xEZHlJL0twejRuai8rblpOSkgwMTYzUkl4', 'LOGIN', 'DEV'),
(157, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2022-04-08 07:31:09', 'bTBzTElFVzRnT1hQZEJRdDkvL0F4bVNvRURmelJiWTFodEFISFc5YTZFT1p3OHVoT2JIMDlURGJyOVUxak4vTlFueEk3a1hUVCtwaXllZGo5b3NWOEh3T09WYk5mNDgrbFZTa2s4ajNBWFFFL0xGMjljRFBEN0JHb0hnbS83OCtFOUpPZUFiWERZQWxtZTJzS2hURW9XZ2hObXdhN3MvZTBjV1Fla2pzcVJQNmNIK09nZ1lnbVMxc0dxL1lBaXlBMUFvc2ZCTFFoVzdBSUhTY2FteHpmdG9sNEVVcFVSN0NYM0cxbXQ4djFrZ0cxT2l2MGcvZXRWSmtGQU9EclNzUTFKU0VJbUNGVThCYUorZ051YzF6TUJmNTZRMFhMYlExZmZ5OGw0QmZycjZIN083RGkzQnRId3FGbndMaFZhUnBGd2J2WmdXUkJibFRNQW90V3cxN1B5TmNCS2JiaVZDYm5EQnA0bnU4N3dzZGdWN2lzMnFNc0RBdmRsZFhpdFl3UThJRFg5a2VrMm5MRlBnbmZrS1d1b2JlOFZVRjY0bXBzNjR4MXk2Qk8veE9sa1RhcTNwYit6SFFJcytxOWNsSGpCV3ZydXhUYVlQaWNFck1nRzVaTHFNaGpQNm1ZQ3ZCYitMa1Z2cjBYcE41blRKWWxjNXJaY2VPcUJpSE56SDYyS1BXZWJZbityY0FHcTA1eGUrcWd5REVsUUp2aEhrRzk5cmF0eUV3OGg1cDFUMlpOcVZkRThod0JyemF0OEJNd002bDVKR2o3SFVhRlN1aUlKUmlKczk4cEtkUnR5dmQwclhjZ3laNFJaZDlvei9ZQ0V5R2Nud01oNTlTNGQ5dkNxSVhDZVhhSEQ4OUFUMndUT1ZaUmhYV3NsQlpyVW1Ndm1GbTcrZkkwTzZUVmpMT0haejRkUElSUGc2RUI1b3Y5SVNUdnAvZnd4UnVQbDZhcHR2OGk3cFcxdEJHWVVjcGpZT1VmT21DL3VCOXdR', 'LOGIN', 'DEV'),
(158, 'U3JLUHhEVVV1dGU4OGhqMlFHOWk5dz09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2022-11-03 05:30:20', 'bTBzTElFVzRnT1hQZEJRdDkvL0F4c1ZzNmJpUFdLcHNHaFM5NjVjaHNhNDVYRkdPVDc2NVdzVDlkOW5OTW96eDA5QWtSTnM5N2R2cW1rZk5iK0kzenBFWWNoS0NiZ1liMk9DMXR6QmVZdkUyRmczSC94aXNybTZEeU9oRzJSOUtRVDVJK3hKMGoxTmtRa1pQRGVKZkxXYmxqYTlQZ0FreUtRc1RWWlFHZjBmMXdXVWVKYWVlUm5kMEVya1JpRDRZM29EbVlnTW9YZUQ2aWs1cTVrdkJTVElVb3JMVC85MmhQeDZaTmV5d1NtMnBWd3VFdncwUWlka0lsZWVxS0NWdXJRT1ZKQmc4OHNYNlRtN25KM2c2eXBRK1JidDBncE9xMGs4cjYxbnZORktwQ0ltZFZaUkJkUlQ1NGhHREw4cC94OXgwVk9ld3FiZEQrdkxXSXgrbnlQR1djVnE3M1pVK1BXSU4wdHdNMkFZamZYV0NndHZZQmgwa2ZqRDZsY3NKYXRpSW9zOEtEU0ZBSHE1djQxT2VvbFVrb3UyUWkzcWJGS3hRQzFwU1hvSUZhbkxxSW9UaS9GOU5VNXF6SnpqU2VBZ1dqRFpmUjJPdDd2dHZ0Skc3UFJDOVVLclhKVjhJMy8yZTYrYzVjWWhzTUU1V3E1ZjFCQ2U3K1hnVXN3d0pPd2RPUFFjYzFCeFQrdmIrSnk3WFpJQ3B5L3ZodE0vcTdXeEZTdVAwclg1STV1NjZxRVlYd3B4V3EraW9odEwvRW03LzE4QXZyS3RYeVpQam9ZbzJ3djcxdmd0UkZkK1hwWllUMnB6UVNoMDZyWk9MSGl3OFBjNUlGZnorNmZzTHp5NHlLdUtMTXNHSFUxeDFySS9FbnZoMVZKSlU4UlhTSWpSWi9najkzS2t0RzQ2Z0lrTHhncWlVVVVJbkMyd2Z2QVMvcCtzR28yUlpPVjZ4dERuSWtXVTdGK3grb3VuMko4NnBvaUIvRlB5K1p3', 'LOGIN', 'DEV'),
(159, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2022-11-03 05:31:14', 'bTBzTElFVzRnT1hQZEJRdDkvL0F4c1ZzNmJpUFdLcHNHaFM5NjVjaHNhNGtESlhFMEkzRjNVNUp0ZmFCdVpsV0NBRnpVQy9yZ21QZ0V6WXR1VStvNlgweDMxRy9MUFQ0dGJSbm95TDdiekN1aWtkSlo3ZjQrckp2clN4UWdYZlpScFpVRlNCcFJXc3dFWEs2RUJoUUZOVlNPRmh6cEs3K1c1cDNoQUhCNE1xNnN1QlZVdWJPUDZ3MnpBZXZEdUNqWnF1QTgyUDZ0VjZ1M0VFY2orVFVsSXhSeThCMUk1NFlkUU9qV3UvOXlVQ1o0cWhidlNQRWcvS3NITU8xdlV3ejMySEJtK290OUhsdnlXM0ZlMURYZXhaTDZtakRuYkgwekUvMTBvODlhZURYWDRVcGhNdm56R3VrZ2gzMXhNMGZpeFFvSG1yQ2xpK25aR3QwVi9Ic0tiNVBFM1hVZ1JBREVndFdNbndja3llZGIzQkZac3gyRDN1OTY3NVNkb2FETFJXb1VHVzA0KzhYS08wWC9MWEltWGdJaC9wYTNKZkkrcGJrcVNDNGtmdTBGMkJPcjByRDEwbTcySUF1YUVtUW1jcFh1RWt0ZEFGLzVxWFAxMUJBY3luVVhQOS9MRTFReDAxK2FVVW0rSktBN1h6SVo2VW5pMmNUdnliK0NrTHd3OUtzMko0aE52Wlk2L0VEc3p6S3dOUkFkMG9HQW84T3NpOWhGLzRzdmxCSWRRNGJ1b054dU54a2h4dVhJMjg3cXQ5TGZWZlZDL2wraGM3cWVHeDA5VEpJZ1ovM3RtUjl1NzVUYll5dzNvNkVFbUp2RXhLS0pMUVhobU9FVXNtU28zWnQ2dWR5Q1ppUm1oWXdRT01rNWtYcUtjZW5YRFpVZUR2WEFvVnlnemtqMk9QVm5zTldYK3l2Uk9yQldpdGg1bXRqbG1JSDNBYmlGSC8ySWk1L0dyMU01eGJFbTJ2VnRUR1lnT09jVDg1c3FK', 'LOGIN', 'DEV'),
(160, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPNGcxZlBQc2YrdXZUVkRDdDVpTk5UV3RWNXJmeHRVdHZJT3V2Skt2K0U2T2d5eDVQMURuYm1sMUtmZ003dEJUZWc9PQ==', '2022-11-27 17:09:15', 'bTBzTElFVzRnT1hQZEJRdDkvL0F4bUFOQy9ybS9oOTBmb3B3U2RZb3NiYTEvVFpkdEl0YVhzRFlDTit3R0RzSnpwVW5uYW0yTTJGZ3dsc09GUnVLVTJpL0pabmVTZERNRkJERVVreXZrNDYxY1pZVmN4ZkJZVWNnOHM4MnY1MUU3bDZVNU9NM3FYMERLQjFYRmZ6WmQwSmg5UUlqTDRwQlM4a01LVlJOZ0cyTGFvZmxUbi9XTnhjaGlSM2VpRDhOdjVMU0o3U1ZZY2ZyRERPY2VIeXJMcEU5VEluQjV3NUVpRUcrV3hTeGN1REN4bGhPQXJKRXduMjdUOXpxVzUvOFQwejJhc3BucHBBRWt6RTRHT041dzVBdnltS3RlMXpTL3lYem84eDlCZ3BEZ21tL1VPcFhoM25Jb2pBQXdVZ1B4SVhSK213ZW9IVFpuc2hJaVR1a2F6bmVlVWRmM09UNHJWckhEWmJ1cWtjbFpUODBBTE5KVWhhdWVJZW1RMkxtb3dESDIxbzNvTTNqU2Y3SGp1TCtFUkJ3ZlZva0pnYU1VZTFWRVorYVVHQ0l4YTQwdFFTZHdORjBGV2RWbnFLamphY0FTaWFsOEwvZDhqUnVxY01pcm1hRStwMnNaR2duRjlSbzdRNzJWTXl6WXNMaEV5cnZPTUZWR2VRck1yTURGb1BOcCtVRVhZN2tMaFlWdnBPYmRsY3ZaZG9GcjUrdFU5ZS9vQzQ1aVBRTEVMTnBiNDIrcjRDMzNaeThGMWJ6SGd3M0VUdGM2TSt4N0U2c3VuMlI1Z05JdDQzVmpGWmQySGJxY0xWN3hNWEFGTHp5eGdERnBrUSt5MkVORFNkOVhTOEFsb0FsUU5ZT25ES2tUQnNkWk9aNkhIcjZJWDZud0ZBeVk1dXBBMTRGOHovdnE3dWRxTGpEWnh0ZmFCdzkxeTVGYWo2SmdZWUZWc25nL3JZMXM2bkhKR1JDSndEUitUcGUwM240OTBhWnVv', 'LOGIN', 'DEV');
INSERT INTO `systemlogs` (`LogsId`, `logTitle`, `logdesc`, `created_at`, `systeminfo`, `logtype`, `logenv`) VALUES
(161, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2023-03-06 06:09:49', 'bTBzTElFVzRnT1hQZEJRdDkvL0F4dDc0Zi9EbTJyaW9Pdkt4SGlaUWFUcGhBcXZqM05uWmwvSC92ZWlPY1pqN1JyVVZRdHhwU1VhWGlJYWRhb0l0eDFEdytNNmRIMGVtTkdpU05vdlUwNEkyMTVvN0lCWmdnRXZQOE9VRzNjZ05xcjRyNWI0YkIrdWtBeHpscGVsRkN5WmttVjF5UG0rZ04wa2d0ZVF0VklIV1JaeU1tdTNRaVhRT2UxeUlrejM0Wi9LR0tra2JvelR5ZmdQY2pyYkkxNE5kNEdqYU9rRlhRL2QzakpJTEhvNHNldjdNSmJUL1c4WFl2M0w5ZlpPdG1CcEFWS2lncFVOT0VXTFZIZ3p4UThXckJKUU9UazhpdTdGNmtpV290WUtSdW0raWZ4T0hXck8weUlraTlaYmtNM21TUm9GM2JOOTBzdFFCNjltOVFrSmFvZE1DenhnTWtBc3NQVUw0cWQ2OU1YNmVuOVFIaTZKNVZxT3lHejRGclJqQ25UckRUZ2hzVGRlS2NIWWVTbUZYNEV1T3RqRER6NytEL09CZzhOcUl1OThaRlM4YXM5azllOURFTEsyZEhwTlRxN05sMy9UbnBKU1hFZGRkTUtWVFg5R1Zoc0c2N0lLZVFjYVVCcnh2REdNMy95aDBoOGdwelh0SXliY0FHNUdiZDFyWkpSQzFZL3UyenV5VEVOd2pIWm1RK0d6ODhxR2dCckphN0U0SVpEOVhxdzAxTzAxeW8xSnlSYjlYQS9KcFYyN3ZNYU5Db09sa2VJSkhRTUtNZ1BLUmtsTks1eXF0dG92dmEwOTd6bnJPZ05ZakJZSWhzS0FMemVrbk5OMmV5b2JPZ2o4RFEzelpTeFJQOUFnUi9vU1hVUGlUd2t5QXVPLzNlc1BuWHVKcXB0T3lrSFpZZkhqcDdOTENMVG8rTjZCTG9WUHk3NjFLTFF6TmZGSmdsUWhOT0JkTzZxUStkNzdKNUc4RzVt', 'LOGIN', 'DEV'),
(162, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPekt0MjE0UCtIalRhSzlUZDE0aWtsdDZFaVFrUmVMUGltMnVvbUluYmg1Y2VRWWtLOUVrbnp3SUlXcDVhNVVzUVE9PQ==', '2023-06-03 07:06:54', 'bTBzTElFVzRnT1hQZEJRdDkvL0F4dWlwWUlKeGFaUW9hU1NMWlc4Y3U1ZkxsRGxYcVBXQWlkbTZzNXNOcTdRUW1CUUNtWHVtNzBjaFdJQmFkYkRjQU5sM1MzTkI2ZFZxTHF1SjUzZDdhUDVkeksxeVUrMTA0K2NnKzAvSjk1ajNKR0tReitPSm5hUS81dmpIWUVnc2VhVGRobURpMTFUbzk2UEVHblUycG5xZWNIRjNtem1zQ1FVMFBMd003NU5HMXYxanpyYU51eUZjRXNwNHdEcGg1OEhFZkRzTTB0Zlg3UEgrL2JWOWJOOGs5V3RzVGpFVXo3TFEyS0VzYlE5R3c2ZVJBR1VsRVAvRS8xUnJSaXF6WUtiR0ZsRktZZHhmZ2I3dU1ka3Y0SDFtSjFjaG4vQ2ROZC9KVjM3VVhsYTI3VWFUVGEwb2hmZTM1b0pzSEpTdzNGbGFnZ0dKZlEydUFlaGlRZzJkVFdzYjduZTFvd0swTVl5SlJmc1lSNjZmRlM5NEhiVmxXOTdxeDg5bnA4MklBOTFhanNBNnkzcE9pM29xM1hDMlZMRjlmUnFyZzJMQXdSOXJvcnJ0aVpBQ0pXZnBBcUIzMm9WUWQ2akFKaSsyU3BsSjdDWWdqNmw5dHl3NEpWS3Robis2QWIvYXZ3WTNveGNUMHNvOW00VmNBWWU0NnFlenI4Yi94L0x1RG51eElraGNKbjdPVW5PUnRBR2RGRlRCQ3VlOU11eDVkSHp3Z21USUZNdHdXa0d4UDhCSlRwTmYvcDJJRlp6bUFvUS83U3ZobDBSTDVOSjgyT0EyQ1JJZDUyWk1PUGJOaXNDYVBwVUJEWVBDVjFFRThKN05ESHFSZnF2K0NWazhyN0NZSGY1MTVuUjNaR0FUUW91T3lFT0VHTzM3MkFQREtmc25zUlNzbnB6WndKYkF4cy9TamYxb2Z2dTFCRmFYUmxzU3RFMVZadGQ4emM3LzVZcTI5ZE93WVJxZjNm', 'LOGIN', 'DEV'),
(163, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPeTJDdFlMMDJLRlo5M2VmQTBJb0hrcHIzYnRoTTlpUlRSQUplREYvOGZabVVlMWFJOW84M0NkVmdJL3BqcXpzVnc9PQ==', '2023-09-25 15:41:51', 'bTBzTElFVzRnT1hQZEJRdDkvL0F4cnJBK01wZ1NLZmNjQXE5NVpqUnUyRFdGU2VaaUVMbTg5ZUszR2VzbHZ5NnJPZnJZVEN4ZVhZUWgwOTAweUlNUy9WMHpqaVpmTTA5WmtWWUVrREc1cWR3MjhoQVVGUUlQaDgzMzhPU21Ld2RSRGFIS3EyL3dnVkZ6K3NrZFNHNXhGSXorM0lDVEdiNWdzOFBuMm9HditkQ0tmb1hjOUVJRnBjcGp4YUZEdkhNVHR0OUliM3VJUytPRXNoM1hQdC85c1NFOGtnam5hWllSdUQzY21LamxQdEdQeUNIT2tFNFVnSThWcFIzUU1UWGtoMS9PSms1ZVNQMGVtSXMvNVdoS1VWTjM3S2pWOE5QYlRvT21vU2pBWEE1SzZDdDZLU0NUOC8vOGdCTlFXWnUzWGdMQVVDZFVjMkxSOHRkNWpva1ltSnpGcFNrTFdVRTRjbXgxRzJ0MFlkWXZMWU9vUUlyQ2srUGF2ZVdpTVVYU0ZZYm5Ic0N4bVVpWHZiKzNFVlVReTZ3eUJyenpjaUxwY1ZjaWthQ3EwKzcrbWJRNVNZbFliQkIrdk52QVpLMWRVcGRNcnB5K0JDNXllNzhibG1lZTV4R0Q0U0cxdFQ5aFV1ejByKzhBdndYanFSdVlQTWsvZWxVRklKTGtubUVvSExDLzJ0cU1pTlRQUmlqSm1qek0yUkdJT24rTWhxT1k5OCtpVkZRQTMvQzV5ekt2RFJ5MVNKYnBLK213QWJzTkxXVVViVlk0YVF1L1lQRDAveHpvMDJPdC9ZNjROR0RuaHEvSHBpUGpNekJzQzlBODlYdzJhNlgrTEdybzVyZDc5VXArdG16MEErQUlDS0l6aVhza3V3czVwaXhOZGNCT093YTZEdGtNVWg1WjRhMzdUakx5enBPODBGVC8zVU1kVmpPQzE3c1hZVjZKTE1RUFV3M0c1N0xUaWFWV1VPOHNpeHVGQzBVSXlKNGQ5', 'LOGIN', 'DEV'),
(164, 'QzBKSmxBektsTjB2YTA4eE4yRWUwUT09', 'TkJEUWgyS3daWmhZeUpkeCswZUY5RmwwMTIrcmw0ZTNxM050NS8reHhiU1djUm1iaFZlS1poOFJGcXVuaU9DY2xITXY4bmNnNEN0SzhhRjJuQkZIUUE9PQ==', '2023-09-25 15:42:19', 'bTBzTElFVzRnT1hQZEJRdDkvL0F4cnJBK01wZ1NLZmNjQXE5NVpqUnUyQjNHQ2lFM3hScVg2RWxTVkNGY25TZXp4WFE2MCs1aFFMZ0VNanM0bW11SkFNT0tWeEVFVDh4ajhuaGExS0tPRmRoUFNvanBUOE9HT3hvN1loSVUrZjNXVFRaSzkzc0FkZjBOODFrbXdJZDkyNi9wQVVqKzJ0TXAzVVlwN0IwcWVmeFREcHNKdE53bDYvU2J4NEJMVWk0dFRNckF2aExnSnNjbGtyTmJvMFhQRHVwbmtMNU01a1V0Y3BnenRuSHNCclAvVW9PVkJMWGVEcGZORGRRMy9MSlBTaDJoOG1hekduVUQxWVRQVytBZ1A5WTVaVjkydVl1UkxuUjdGcmJGd0Q5aDNCcmx4RmNuQks1bFRCOGZaUG1oZ0FyMGovVTA4YTVRZWR3Qm5LNnhVV0JiOWFrdUUzQmI0Z29xMlcrL1h2cFVHclZSanRycGFHQXRVOVV2bmVlVU9CajVGTWltSThaZjdrSzYwbmdjVGY2eElrUDV0TGp6QUJhSlJ5NDJJU3hLdkhCVDUxZ3dRd1Y2NXRiTFkrYTZWRGwrVk5wVy8wcVpmQkFzZHk3TEhveWIzRVR5UlpCSmVvRjZ6OVpFR0M0STZtUWtkR0Q1QnQ0UWFoeURSbHBEb1RZMlF5UlVveS8vZHlxMWdQU25XWEsvRi81NEc4NWZqdmlBNFVvTHg3U0tKdGFSMTU5bEtUei90Q09QaWllYmpiblZHYzN6c3ZWSGVKVWhpYUpGakk2OSswdkRSY25TQVhWbFdoSnpobWFDZ2pVL1V6Sk1ENlErQUJCMk9YQjF3bnFOc2hUTStQc3Q1NUJFYk92RmpmVEtVeldGaGwzK0l0bU9vWmxFa1BpVDlWNVNhdkdJSXBFVjVXSWNPSjc4NHdlODBQbDdRczB6WC9QSTA4TStvZkt5RW1DTTRzcHkzVDNKbGE0L2ZlMGdn', 'IMG_UPDATED', 'DEV'),
(165, 'YUVKYnZmdHd4Vjg3Z1o3dzVhYUo2QT09', 'czVHYWJOeGVBSjkyN0Qwazg2TEhPeTJDdFlMMDJLRlo5M2VmQTBJb0hrcHIzYnRoTTlpUlRSQUplREYvOGZabVVlMWFJOW84M0NkVmdJL3BqcXpzVnc9PQ==', '2023-09-25 15:42:52', 'bTBzTElFVzRnT1hQZEJRdDkvL0F4cnJBK01wZ1NLZmNjQXE5NVpqUnUyREl4NksyMHY3ZHV3Sy9ydlRNS0lpcVBtUUliQkZCQzRVRnlRL2F0MkNkR0JuUTV3aWwwYlVqSlNQVFU4YkYrR0FaTnJrcjJ5WWNJRG04eHdBbUJraGFHV21hc2pvMHZsWGJ3Tmk0VVRuTFlwZFVvekZVSGpPRVd6ZlVONlRDbDhwc3VDUXBad1J0Q2NtWVl5WHdzbG9HYmVXLzcyODZJRFhzRmx4MU41b1RudmZFTUE3emVnRGE5dHJzUXR0L0hzUGtuV0VvSXZjNGFZUmhGT1pCWi9Fc0tCSjRsNHA5dUhvN2tmdFMxWjhpeDNiYkxnL0JwTytrdDJ6V2VObmVlMmNlaitMVG43c2Z5cW8yNHh3dnN5cmpoN3RMMkk5blF1MDBQVyticjF5RU5Id0pWV29wMFp5QTF5eXl6NGRCQ0pJQVRLZHU0dlpKUWpNMDhNTkgxQ2c4RTU2TEVmMERuN1kwMzU2akMzRVJ0RHBJNGZIUXprMjlMQnhGOUhibkpLSFRPVDgrOGxmRGdiUUp6VkFrN0tBblFBT2c1a2hOaE1ucTZLQkVXNS90bTZwMWhyb2k0TWg4b0k1RlIwcmEzWmhPWGIzVmhQaEJqS1p2SEltaVRQL3h0K2JMZkdkdE5RVGFwSm5oNU9CdER1N0k3UXAwU1dYa1E2QkVYdGwyUHhRYzEvemFoZDI1U0RKMHFwYUFNYnlIckNxRGQvS0VxeERZaGRIQWdMQXpoRnlvakVwc1l5dXBRZDlMTitCNUordC9xTFpMV0RabEhVK0tRaHk3c0NYSERCSjltdCtRa1VLWmd5OCsrVzZGV3JiY3FvYWxpL3ZiejJ0Z3RmUWZVL1JndWhiYlJjam9SWU9YMCtDWUx5enNoa1JPbGVLbFBqU0djcTZOYm1aZndhQlZlZkNCYVMwM3pEbU4xRjZnWCtteTM0', 'LOGIN', 'DEV'),
(166, 'QTZmK1NYTXEzanJjZ1Bqd3c5NzhHQ3NaT3IxR2RweklvSG9QdmlQTWtmTT0=', 'TkJEUWgyS3daWmhZeUpkeCswZUY5RmwwMTIrcmw0ZTNxM050NS8reHhiU1djUm1iaFZlS1poOFJGcXVuaU9DY3BPazg3OHhVelFJWkc2VTliMDY3S0E9PQ==', '2023-09-25 15:43:25', 'bTBzTElFVzRnT1hQZEJRdDkvL0F4cnJBK01wZ1NLZmNjQXE5NVpqUnUyQlJ0eUMraEhuQklWcDRUam9PbDIrUlE3cW42T1Jod1hJREQ3NSs2TE85SnJOZnA0bXN0dDRtVzkyMkxCY3pYaTYrTUxHWXhVaVRPaTBoaVNqck9QbW1FNGVGbTI5YUQ4dlFxUGh3K0hvTkZFUUp1Y2p4RVJKRzQvdFF1OWhJRlA0bm9GQkZiV0M4ckk2NkJCOFNSYzd2TUZqTmJMcG1DN2tFU20yT2dnMklnT2FDREdqMndGcE9sQ0xxdUc0LzYzY2VodVJZU3pvYWJuWEcyWHR6TjhHV0Y1MGxCa2xEZGpwanFieklDejZSbEF1eWRYUGV0Vit0L1VKS1cvNXhSRnEwa2ZmMVl1bGh3TXlVT1ZMWU9CWlh2cU5qL2lzK0xqSjlleTlVWHZTakk2UmVXek81RUdVenFwTWFMT0FIOFNOWnc0Q2lxYlliYUF4enZibTgvL3NOdTI3Tk9ETWEyb1NwZlBiWVoycm5FUnlmdCtyR0lzN3hIVVVONTVtYVZNd2pJYms2K1RqdmR5dlZtQ08wVHdOQVZrQ0tISGwwSjNHY1V6SDdmZWw2NUYrZ1VmdUliR1F4K1JRRU5xRlVDeGJGbERlVThMeTBTM0ZxVDZrN3p3bGRobTRRclBSWlBvYWdGWmE1U2RZdkVPWkNKTWRsWVU2WWFmcFBtbUtydHRJYUtpQTBEaFJVdDhWUWZMWGdUbnZOUlFCSmZDanRaVHRiVW1oM2NUN1RxMTNhL0MrL3IyNm5iWS8rY1EvMnpqNGZaVkdDSU5LSDFJRXQ4L09wQ0VmV0ttcWowQzF1VzlnbVFLdnl6WE1ha0M0U1dFaURUSzlaQmo0ODl2QUtGeGxOb005TnNleG5BQUQ1OHFVOFE5N2lYWTdkTFk5eWgwcHhQbDEzdklmeGY2Q2Z0ZnVra2RWaHd4aHp1WE5jSGJ6Y25D', 'IMG_UPDATED', 'DEV'),
(167, 'QzBKSmxBektsTjB2YTA4eE4yRWUwUT09', 'TkJEUWgyS3daWmhZeUpkeCswZUY5RmwwMTIrcmw0ZTNxM050NS8reHhiU1djUm1iaFZlS1poOFJGcXVuaU9DY3pUOS9ydFJRMEFsRVFRWUFMRGV5Rnc9PQ==', '2023-09-25 15:44:17', 'bTBzTElFVzRnT1hQZEJRdDkvL0F4cnJBK01wZ1NLZmNjQXE5NVpqUnUyQi9Ta0tLeVlPUzZINHppZ05jKzlRZ093K2dRekdQYmRvTjA0a2ZaZ2tMUGx3aExiQ3o5SllMcHd6d2ozQUJSNHFWVnpoc0txK3ZoRGxodW5qM3E4ZkhsNjNpKzZSN2tHSkpwR29TZDU4b0tJUVN4Y1JMYmwwT3dpRkFteFBSdWdpNldBWktPb3AyUFhoTjdnTnhsVStVQWM0cTNyeWRWTC9CRGtlTkQ4N1RabFpIMStUdUtwVzZZVTNXZWVGSXJkcWRhM24xYndEN0RCWXRvcDN0Q2h1c3EwK296djhTQXdaenNVRWhlL0dGRjFqUXZLNXY0dW9jLzFES0FhbHhBUE91OCthUzRJVVI3QU4wUkVQMzZ3bUg1cDJsYmoyNjNsZFI4cjJ5L3RkVVpFMGZ1Ry9DcWFOdEU5YUE3WXp0MFFISW10ZUM5S1gzc1pVN1ozTFBZQStUbmM4R2hGTXl5bStsa2l5ZDcvYktrV0JnSTlyY3lDTTJRVWJaMGRLSE52c243ZmRRd3N6TzJ2dVIzNEQydFJubWhpNlJydThWVk96K0RQWU9BcFRPSXFVMzZaK3Urc3FmT2xhNllkVmMzYUd3SUxyRjh0dWphR2hCSTE3eEVnWit0QzBJSDd5NXovNDV3TVQ2dkxDUE81ZEdFMVpndHczdHdraVJDZHZXU0I2M2IyZ2NORWhkZFlTQVJ6dzRKK29rZjUwb2xlVWNvTjlNamRjWFY1dS9Sd25YTmNhMlFFSzRMTVpEMmVoNHQ4eCthZmNLWkFuNmdIUkVPNEFWSitJMEYreGl2dG96SkFmUWI5U2V6ellFL1Y2bW5YZmxMdmg5cktEcG9CWHdXb2t1Y2JTdnFHUEV3QnNMbE5PeWNkMjNSZVp6dEJmS3U2VDlZaUxPMDlKeHpMc3c0VFVqaEZkQVU0WEdId0djL0U5NkE1', 'IMG_UPDATED', 'DEV');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `UserEmailId` varchar(100) NOT NULL,
  `UserPhone` varchar(100) NOT NULL,
  `UserPassword` varchar(100) NOT NULL,
  `UserRoles` varchar(1000) NOT NULL,
  `UserStatus` varchar(100) NOT NULL,
  `UserProfileImage` varchar(100) NOT NULL DEFAULT 'user.png',
  `UserCreatedAt` varchar(100) NOT NULL,
  `UserUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `UserName`, `UserEmailId`, `UserPhone`, `UserPassword`, `UserRoles`, `UserStatus`, `UserProfileImage`, `UserCreatedAt`, `UserUpdatedAt`) VALUES
(1, 'Administrator', 'navix365@gmail.com', '8178609585', '9810', 'Admin', 'Active', 'Administrator_UID_1_Profile_27_Nov_2022_10_11_35.jpg', '1 October, 2021', '28 Oct, 2021');

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `UserPermissionId` int(100) NOT NULL,
  `UserPermissionUserId` varchar(100) NOT NULL,
  `UserPermissionAccess` varchar(100) NOT NULL,
  `UserPermissionStatus` varchar(100) NOT NULL,
  `UserPermissionCreatedAt` varchar(100) NOT NULL,
  `UserPermissionUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`AboutUsPageId`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`AppointmentId`);

--
-- Indexes for table `app_contact_details`
--
ALTER TABLE `app_contact_details`
  ADD PRIMARY KEY (`AppContactDetailsId`);

--
-- Indexes for table `clinictimeschedule`
--
ALTER TABLE `clinictimeschedule`
  ADD PRIMARY KEY (`ClinicTimeId`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`configurationsid`);

--
-- Indexes for table `homepage`
--
ALTER TABLE `homepage`
  ADD PRIMARY KEY (`HomePageId`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`PagedId`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`PatientsId`);

--
-- Indexes for table `patients_address`
--
ALTER TABLE `patients_address`
  ADD PRIMARY KEY (`PatientAddressId`);

--
-- Indexes for table `patients_doctors`
--
ALTER TABLE `patients_doctors`
  ADD PRIMARY KEY (`PatientsDoctorid`);

--
-- Indexes for table `patients_documents`
--
ALTER TABLE `patients_documents`
  ADD PRIMARY KEY (`PatientsDocumentId`);

--
-- Indexes for table `patients_notes`
--
ALTER TABLE `patients_notes`
  ADD PRIMARY KEY (`PatientNotesId`);

--
-- Indexes for table `patient_contact_details`
--
ALTER TABLE `patient_contact_details`
  ADD PRIMARY KEY (`PatientContactDetailsId`);

--
-- Indexes for table `patient_treatments`
--
ALTER TABLE `patient_treatments`
  ADD PRIMARY KEY (`PatientTreatmentId`);

--
-- Indexes for table `patient_treatment_payments`
--
ALTER TABLE `patient_treatment_payments`
  ADD PRIMARY KEY (`PatientPaymentId`);

--
-- Indexes for table `photogallery`
--
ALTER TABLE `photogallery`
  ADD PRIMARY KEY (`PhotoGalleryId`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`SliderId`);

--
-- Indexes for table `socialaccounts`
--
ALTER TABLE `socialaccounts`
  ADD PRIMARY KEY (`SocialAccountid`);

--
-- Indexes for table `specialities`
--
ALTER TABLE `specialities`
  ADD PRIMARY KEY (`Specialitiesid`);

--
-- Indexes for table `systemlogs`
--
ALTER TABLE `systemlogs`
  ADD PRIMARY KEY (`LogsId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`UserPermissionId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `AboutUsPageId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `AppointmentId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_contact_details`
--
ALTER TABLE `app_contact_details`
  MODIFY `AppContactDetailsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clinictimeschedule`
--
ALTER TABLE `clinictimeschedule`
  MODIFY `ClinicTimeId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `configurationsid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `homepage`
--
ALTER TABLE `homepage`
  MODIFY `HomePageId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `PagedId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `PatientsId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients_address`
--
ALTER TABLE `patients_address`
  MODIFY `PatientAddressId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients_doctors`
--
ALTER TABLE `patients_doctors`
  MODIFY `PatientsDoctorid` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients_documents`
--
ALTER TABLE `patients_documents`
  MODIFY `PatientsDocumentId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients_notes`
--
ALTER TABLE `patients_notes`
  MODIFY `PatientNotesId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_contact_details`
--
ALTER TABLE `patient_contact_details`
  MODIFY `PatientContactDetailsId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_treatments`
--
ALTER TABLE `patient_treatments`
  MODIFY `PatientTreatmentId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_treatment_payments`
--
ALTER TABLE `patient_treatment_payments`
  MODIFY `PatientPaymentId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photogallery`
--
ALTER TABLE `photogallery`
  MODIFY `PhotoGalleryId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `SliderId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `socialaccounts`
--
ALTER TABLE `socialaccounts`
  MODIFY `SocialAccountid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `specialities`
--
ALTER TABLE `specialities`
  MODIFY `Specialitiesid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `systemlogs`
--
ALTER TABLE `systemlogs`
  MODIFY `LogsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `UserPermissionId` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
