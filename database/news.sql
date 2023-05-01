-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 11:21 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(1, 'Eduaction', 0),
(2, 'Policities', 0),
(3, 'Goverment Jobs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(1, 'Government Jobs 2023 Latest Govt Jobs 43125 Vacancies', '\r\n? Latest Education wise Government Jobs 2023 Opening List:\r\nEducational Qualification\r\n\r\nTotal Vacancies (Approx.)\r\n\r\nGovernment Jobs List\r\n\r\n8th Pass, 10th Pass, 12th Pass, SSC, SSLC, HSC\r\n\r\n20000+\r\n\r\n10th Pass 12th Pass Govt Jobs\r\n\r\nGraduate (Bachelor Degree)\r\n\r\n20000+\r\n\r\nGovt Jobs for Graduates\r\n\r\nEngineering Graduates (B.E. / B.Tech)\r\n\r\n5000+\r\n\r\nGovt Jobs for Engineers\r\n\r\nDiploma\r\n\r\n1000+\r\n\r\nGovt Jobs for Diploma\r\n\r\nITI / NCVT\r\n\r\n5000+\r\n\r\nGovt Jobs for ITI\r\n\r\nMBA\r\n\r\n100+\r\n\r\nGovt Jobs for MBA\r\n\r\nMCA\r\n\r\n100+\r\n\r\nGovt Jobs for MCA\r\n\r\nLAW Graduate\r\n\r\n100+\r\n\r\nGovt Jobs for Law\r\n\r\n\r\n? Latest Government Jobs in Central and State Govt List on 1st May 2023:\r\nPost Name – Total Vacancies\r\n\r\nLast Date\r\n\r\nGovt Jobs Link\r\n\r\nGroup B and Group C Posts - 7500\r\n\r\n03/05/2023\r\n\r\nSSC CGL Exam 2023\r\n\r\nStipendiary Trainees, Technician, Technical Assistant - 4374\r\n\r\n22/05/2023\r\n\r\nBARC\r\n\r\nConstables - 9233\r\n\r\n02/05/2023\r\n\r\nCRPF\r\n\r\nMTS. Clerk, Steno, Typist, Assistant etc. - 709\r\n\r\n16/05/2023\r\n\r\nVisva Bharati\r\n\r\nManager, Officer Posts - 348\r\n\r\n17/05/2023\r\n\r\nBank of Baroda\r\n\r\nVarious Posts - 45\r\n\r\n26/05/2023\r\n\r\nMizoram PSC\r\n\r\nTechnician, Draughtsman, Radiographer - 49\r\n\r\n18/05/2023\r\n\r\nVSSC\r\n\r\nSafai Karamchari - 13184\r\n\r\n16/06/2023\r\n\r\nGovt of Rajasthan\r\n\r\nSSC Officers - 242\r\n\r\n14/05/2023\r\n\r\nIndian Navy\r\n\r\nFinance Officers - 40\r\n\r\n13/05/2023\r\n\r\nNational Housing Bank\r\n\r\nNon Academic Posts - 347\r\n\r\n06/05/2023\r\n\r\nNCERT\r\n\r\nTechnical Assistant, Scientific Assistant, Library Assistant-A and Technician-B/ Draughtsman-B - 94\r\n\r\n16/05/2023\r\n\r\nSDSC SHAR\r\n\r\nAyurved Medical Officer - 639\r\n\r\n31/05/2023\r\n\r\nRPSC\r\n\r\nFaculty Posts - 20\r\n\r\n09/06/2023\r\n\r\nSVNIT\r\n\r\nGraduate / Diploma Engineers - 23\r\n\r\n16/05/2023\r\n\r\nRailTel\r\n\r\nFaculty Posts - 19\r\n\r\n10/05/2023\r\n\r\nTISS\r\n\r\nManagement Trainee, Managers, Officer, Technician, Craftsman - 74\r\n\r\n16/05/2023\r\n\r\nFACT\r\n\r\nJunior Purchase Assistant / Junior Storekeeper - 65\r\n\r\n15/05/2023\r\n\r\nDAE DPS\r\n\r\nMining, Supervisor, Instructor Posts - 152\r\n\r\n05/05/2023\r\n\r\nNTPC\r\n\r\nScientist B - 20\r\n\r\n15/05/2023\r\n\r\nCentral Silk Board\r\n\r\nTechnician, Scientific Assistant - 19\r\n\r\n29/05/2023\r\n\r\nNISER\r\n\r\nHead Constables - 247\r\n\r\n12/05/2023\r\n\r\nBSF\r\n\r\nMedical Officer, GDMO Posts - 1261\r\n\r\n09/05/2023\r\n\r\nUPSC CMS 2023\r\n\r\nTechnical Assistant, Technical Officer, Medical Officer - 66\r\n\r\n12/05/2023\r\n\r\nIIT Delhi\r\n\r\nTechnical Graduate Course (TGC-138) - 40\r\n\r\n17/05/2023\r\n\r\nIndian Army\r\n\r\nPharmacist - 1539\r\n\r\n04/05/2023\r\n\r\nBTSC (Bihar)\r\n\r\nITI / Diploma / Graduate Apprentices - 193\r\n\r\n08/05/2023\r\n\r\nNMDC Limited\r\n\r\nEconomic, Statistical posts - 51\r\n\r\n09/05/2023\r\n\r\nUPSC IES ISS 2023\r\n\r\nHome Guards - 1501\r\n\r\n09/05/2023\r\n\r\nJharkhand Government\r\n\r\nManager Posts - 14\r\n\r\n15/05/2023\r\n\r\nAPSFC\r\n\r\nChemical Process Worker - 100\r\n\r\n05/05/2023\r\n\r\nOrdnance Factory Itarsi\r\n\r\nVideographer - 41\r\n\r\nMay 2023\r\n\r\nDoordarshan\r\n\r\nManager, Junior Engineer - 20\r\n\r\n05/05/2023\r\n\r\nMPIDC\r\n\r\nAssistant Jailor - 59\r\n\r\n11/05/2023\r\n\r\nTNPSC\r\n\r\nCivilian Switch Board Operator (CSBO) - 53\r\n\r\n08/05/2023\r\n\r\nHQ Southern Command Signals\r\n\r\nFaculty Posts - 37\r\n\r\n04/05/2023\r\n\r\nBUAT\r\n\r\nEngineer Trainee, Manager - 124\r\n\r\n04/05/2023\r\n\r\nTHDC India Limited\r\n\r\nAssociate Professor, Assistant Professor, University Professor - 74\r\n\r\n14/05/2023\r\n\r\nJharkhand PSC\r\n\r\nPrincipal, Medical, Mining Officer, Director, Sports Officer - 459\r\n\r\nMay 2023\r\n\r\nMPPSC\r\n\r\nProject Engineer, Trainee posts - 50+\r\n\r\nMay 2023\r\n\r\nBharat Electronics Limited\r\n\r\n? Get Govt Jobs through Social Media:\r\nJoin IndGovtJobs Telegram Group >>\r\n\r\nJoin IndGovtJobs Facebook Page >>\r\n\r\nJoin IndGovtJobs Twitter Page >>\r\n\r\n? State Government Jobs Portal:\r\nUP Govt Students Job Portal\r\n\r\nURISE Portal\r\n\r\nCommon Eligibility Test for all Govt Jobs\r\n\r\nNATIONAL RECRUITMENT AGENCY\r\n\r\nVarious Category Job Vacancies\r\n\r\nDelhi Rojgar Bazaar Portal\r\n\r\nSkilled, Semi Skilled, Unskilled Posts\r\n\r\nMAHA Jobs Portal\r\n\r\nVarious Private, Govt Job Posts\r\n\r\nPunjab Ghar Ghar Rojgar Portal\r\n\r\nVarious Skilled Professional Vacancies\r\n\r\nUttarakhand HOPE Portal\r\n\r\n? Sector wise Government Jobs:\r\nGovt Jobs Category\r\n\r\nNo of Vacancy\r\n\r\nJobs Details\r\n\r\nAgniveers in Indian Armed Force Jobs\r\n\r\n10000+\r\n\r\nAgeepath Scheme 2023\r\n\r\nWork from Home Online Jobs\r\n\r\n-\r\n\r\nOnline Jobs 2023\r\n\r\nScientist, Research Jobs\r\n\r\n1000+\r\n\r\nScientist Jobs 2023\r\n\r\nMetro Rail Vacancies\r\n\r\n200+\r\n\r\nMetro Rail Jobs 2023\r\n\r\nRAILWAY JOBS\r\n\r\n5000+\r\n\r\nRailway Jobs\r\n\r\nBANK SECTOR JOBS\r\n\r\n8000+\r\n\r\nGovt Jobs in Bank\r\n\r\nPOLICE JOBS\r\n\r\n2000+\r\n\r\nGovt Jobs in Police\r\n\r\nTEACHER JOBS\r\n\r\nAbove 1000\r\n\r\nGovt Jobs for Teachers\r\n\r\nPublic Sector (PSU) JOBS\r\n\r\n1000+\r\n\r\nPSU Govt Jobs\r\n\r\nFRESHER JOBS\r\n\r\n100000+\r\n\r\nGovt Jobs for Freshers\r\n\r\nIT SECTOR JOBS\r\n\r\nAbove 200\r\n\r\nGovt Jobs in IT Sector\r\n\r\nMTS JOBS\r\n\r\n500+\r\n\r\nMTS Govt Jobs\r\n\r\nFACULTY JOBS\r\n\r\n1000+\r\n\r\nFaculty Govt Jobs\r\n\r\nSTENO TYPIST JOBS\r\n\r\nAbove 200\r\n\r\nStenographer Govt Jobs\r\n\r\nCLERK JOBS\r\n\r\n1000+\r\n\r\nGovt Jobs for Clerk\r\n\r\nCOMPUTER JOBS / DEO JOBS\r\n\r\n2500+\r\n\r\nComputer, DEO Govt Jobs\r\n\r\nAGRICULTURE JOBS\r\n\r\n500+\r\n\r\nGovt jobs in Agriculture\r\n\r\nSTATE WISE JOBS\r\n\r\nVarious\r\n\r\nState Government Jobs\r\n\r\nPWD CATEGORY JOBS\r\n\r\n500+\r\n\r\nGovt Jobs for PWD\r\n\r\nASSISTANT JOBS\r\n\r\n5000+\r\n\r\nGovt Jobs for Assistants\r\n\r\nDRIVER JOBS\r\n\r\n200+\r\n\r\nGovt Jobs for Drivers\r\n\r\nNURSE JOBS\r\n\r\n3000+\r\n\r\nGovt Jobs for Nurse\r\n\r\nEXPERIENCED JOBS\r\n\r\n1000+\r\n\r\nExperienced Govt Jobs\r\n\r\nDEPUTATION JOBS\r\n\r\n500+\r\n\r\nDeputation Jobs\r\n\r\nSPORTS QUOATA JOBS\r\n\r\n500+\r\n\r\nSports Quota Jobs\r\n\r\nONLY FEMALE GOVT JOBS\r\n\r\n5000+\r\n\r\nGovt Jobs for Women\r\n\r\nBSNL JOBS\r\n\r\n300+\r\n\r\nBSNL Jobs\r\n\r\nPSC JOBS\r\n\r\n5000+\r\n\r\nPSC Jobs\r\n\r\nINDIAN AIR FORCE JOBS\r\n\r\n100+\r\n\r\nIAF Jobs\r\n\r\nINDIAN ARMY JOBS\r\n\r\n500+\r\n\r\nIndian Army Jobs\r\n\r\nINDIAN NAVY JOBS\r\n\r\n100+\r\n\r\nIndian Navy Jobs\r\n\r\nPOST OFFICE JOBS\r\n\r\n10000+\r\n\r\nPost Office Jobs\r\n\r\nAPPRENTICE JOBS\r\n\r\n1000+\r\n\r\nApprentice Jobs\r\n\r\nIBPS\r\n\r\n1000+\r\n\r\nIBPS Jobs\r\n\r\nDEFENCE JOBS\r\n\r\n200+\r\n\r\nDefence Jobs\r\n\r\nMEDICAL GOVT JOBS\r\n\r\n1000+\r\n\r\nMedical Officer Jobs\r\n\r\nFOREST JOBS\r\n\r\n2000+\r\n\r\nForest Jobs 2023\r\n\r\nFIREMAN JOBS\r\n\r\n100+\r\n\r\nFireman Jobs 2023\r\n\r\nInsurance Advisor, Insurance Representatives\r\n\r\n5000+\r\n\r\nLIC Jobs 2023\r\n\r\nExecutive Trainees, Engineers, GET\r\n\r\n1000+\r\n\r\nGATE 2022 Jobs\r\n\r\nClerk, Assistant, Teacher, Medical, ITI, Forest Posts\r\n\r\n1000+\r\n\r\nCantonment Board Jobs\r\n\r\n\r\n? PSU Government Jobs – Govt Public Sector Jobs 2023 Links:\r\n\r\nAir India Jobs\r\n\r\nBEL India Jobs\r\n\r\nBHEL Jobs\r\n\r\nAIESL Jobs\r\n\r\nECIL Jobs\r\n\r\nEIL Jobs\r\n\r\nFCI Jobs\r\n\r\nAAI Jobs\r\n\r\nGAIL India Jobs\r\n\r\nHPCL Jobs\r\n\r\nIOCL Jobs\r\n\r\nBalmer Lawrie Jobs\r\n\r\nNLC Limited Jobs\r\n\r\nONGC Jobs\r\n\r\nPFC Jobs\r\n\r\nBEML Limited Jobs\r\n\r\nCCI Jobs\r\n\r\nBCCL Jobs\r\n\r\nKeltron Jobs\r\n\r\nNALCO Jobs\r\n\r\nCPCL Jobs\r\n\r\nOil India Jobs\r\n\r\nHAL  Jobs\r\n\r\nCochin Shipyard Jobs>\r\n\r\nAICL Jobs\r\n\r\nBCPL Jobs\r\n\r\nMIDHANI Jobs\r\n\r\nCement Corporation Jobs\r\n\r\nBPCL Jobs\r\n\r\nSAIL Jobs\r\n\r\nCoal India Jobs\r\n\r\nNTPC Limited Jobs\r\n\r\nPower Grid Jobs\r\n\r\nTHDC Jobs\r\n\r\nREC India Jobs\r\n\r\nNMDC Limited Jobs\r\n\r\nSCI Limited Jobs\r\n\r\nBDL Jobs\r\n\r\nSECL Jobs\r\n\r\nHLL Lifecare Limited Jobs\r\n\r\nIRCON Jobs\r\n\r\nNHPC Jobs\r\n\r\nRITES Limited Jobs\r\n\r\nMazagon Dock Jobs\r\n\r\n? Public Service Commission Jobs 2023: (Union / State wise PSC Jobs)\r\n\r\nPSC Name\r\n\r\nDetails\r\n\r\nUnion Public Service Commission (UPSC)\r\n\r\nUPSC Jobs\r\n\r\nMaharashtra Public Service Commission (MPSC)\r\n\r\nMPSC Jobs\r\n\r\nUttar Pradesh Public Service Commission (UPPSC)\r\n\r\nUPPSC Jobs\r\n\r\nStaff Selection Commission (SSC)\r\n\r\nSSC Jobs\r\n\r\nAndhra Pradesh Public Service Commission (APPSC)\r\n\r\nAPPSC Jobs\r\n\r\nUttar Pradesh Subordinate Services Selection Commission (UPSSSC)\r\n\r\nUPSSSC Jobs\r\n\r\nHimachal Pradesh Public Service Commission (HPPSC)\r\n\r\nHPPSC Jobs\r\n\r\nAssam Public Service Commission (APSC)\r\n\r\nAssam PSC Jobs\r\n\r\nHaryana Public Service Commission (HPSC)\r\n\r\nHPSC Jobs\r\n\r\nMadhya Pradesh Public Service Commission (MPPSC)\r\n\r\nMPPSC Jobs\r\n\r\nTelangana State Public Service Commission (TSPSC)\r\n\r\nTSPSC Jobs\r\n\r\nBihar Public Service Commission (BPSC)\r\n\r\nBPSC Jobs\r\n\r\nKerala Public Service Commission (KPSC)\r\n\r\nKPSC Jobs\r\n\r\nRajasthan Public Service Commission (RPSC)\r\n\r\nRPSC Jobs\r\n\r\nHaryana Staff Selection Commission (HSSC)\r\n\r\nHSSC Jobs\r\n\r\nTripura Public Service Commission (TPSC)\r\n\r\nTPSC Jobs\r\n\r\nTamil Nadu Public Service Commission (TNPSC)\r\n\r\nTNPSC Jobs\r\n\r\nOdisha public Service Commission (OPSC)\r\n\r\nOPSC Jobs\r\n\r\nSikkim Public Service Commission (SPSC)\r\n\r\nSPSC Jobs\r\n\r\nJammu and Kashmir Services Selection Board (JKSSB)\r\n\r\nJKSSB Jobs\r\n\r\nChhattisgarh Public Service Commission (CGPSC)\r\n\r\nCGPSC Jobs\r\n\r\nJharkhand Public Service Commission (JPSC)\r\n\r\nJPSC Jobs\r\n\r\nWest Bengal Public Service Commission (WBPSC)\r\n\r\nWBPSC Jobs\r\n\r\nJammu and Kashmir Public Service Commission (JKPSC)\r\n\r\nJKPSC Jobs\r\n\r\nPunjab Public Service Commission (PPSC)\r\n\r\nPunjab PSC Jobs\r\n\r\nMizoram Public Service Commission (MPSC Mizoram)\r\n\r\nMPSC Mizoram Jobs\r\n\r\nManipur Public Service Commission (MPSC)\r\n\r\nManipur PSC Jobs\r\n\r\n? Government Jobs – Frequently Asked Questions:\r\nWhat are the Government Jobs available in India?\r\n\r\nMore than One Lakh Government vacancies available in 2021. Following vacancies are Top Govt Jobs in India.\r\n\r\n(1) UPSC Civil Service Exam\r\n(2) SSC Combined Graduate Level Exam\r\n(3) SSC Combined Higher Secondary Level (10+2) Exam\r\n(4) Railway Non Technical Popular Categories (NTPC)\r\n\r\n(5) IBPS Banking Exam - Clerk, Probationary Officer, Specialist Officers, Assistants, Management Trainees\r\n(6) Railway Level 1 Posts\r\n(7) Railway Group D posts\r\n(8) Railway Para Medical Staff\r\n(9) Police Jobs - Constables, Sub Inspector, Head Constable, Inspector etc.\r\n(10) Banking Jobs - Clerk, Attendants, Assistants, Officer, Managers etc.\r\n(11) PSU Jobs - Engineers, Trainees, Technician, Apprentices, Executives, Professionals etc.\r\n\r\nHow can I apply for government jobs online?\r\n\r\nVisit IndGovtJobs blog, then click Govt Jobs column page and get latest active Government Jobs details. Click and visit your qualification and designation based Govt Jobs notification. Read detailed advertisement and click \'Apply Online\' link to register your details online and pay application fee on or before closing date.\r\n\r\nWhat are sections available in IndGovtJobs Govt Jobs page?\r\n\r\nGovernment Jobs separated in different categories like Education wise Govt Jobs, Qualification / Designation wise Government Jobs, Latest Government Jobs Info, Public Service Commission wise Government Jobs and PSU wise Govt Jobs.\r\n\r\nWhat is the age eligibility for Government Jobs?\r\n\r\nMinimum 18 years old for most of the fresher govt jobs. Maximum 56 years for deputation posts. Maximum age differ for post and designation wise.\r\n\r\nAge Relaxation: 05 years for SC / ST, 03 years for OBC and plus 10 years for Persons with Disabilities.\r\n\r\nWhat is the minimum Qualification for Government Jobs?\r\n\r\nMinimum VIII Standard (8th Class) Pass, 10th / SSLC / Matric / SSC / Xth std Pass, 10+2 / Higher Secondary / 12th class / XII std Pass, ITI, Diploma, B.E.. B.Tech, Degree (B.Sc., B.A., B. Com, BCA, BBA etc.) and Post Graduation (M.Sc., M.Com, M.A., M.Phil, MCA, MBA, M.E., M.Tech, Ph.D.)\r\n\r\nWhich government job is easy to get in India?\r\n\r\nRailway, Teaching and Banking Government Jobs are easy to apply and get this job easily. Most of the state and central govt vacancies opening in Lower Level (Group C, Group D) and Middle Level Management posts. The Middle and Lower Level posts selection based on Written / Online Examination only or Test with Interview.\r\n\r\nWhy government jobs are the best in India?\r\n\r\nGovernment Jobs are most secured, respect and prestigious jobs in India. If you employed in Central or State Government Sectors, your life has been settled. Govt sector jobs like Banking, Railway and PSU has continue to provide all benefits like medical, home loan, travel and Retirement benefits etc.\r\n\r\nWhatsAppFacebookTwitter\r\nNewer Post Older Post Home\r\n\r\nLatest Govt Jobs Alert through Social Media:\r\nJoin IndGovtJobs Telegram Group >>\r\nJoin IndGovtJobs Facebook Page >>\r\nJoin IndGovtJobs Twitter Page >>\r\nGet Latest Govt Jobs by email:\r\nEnter your email\r\nSubscribe\r\nEducation Wise Govt Jobs\r\n8th, 10th, 12th Pass Govt Jobs\r\nITI NCVT Govt Jobs\r\nDiploma Govt Jobs\r\nB.E. / B.Tech Engineer Govt Jobs\r\nDegree Graduate Govt Jobs\r\nPost Graduate Govt Jobs\r\nLaw Graduate Govt Jobs\r\nMBA Govt Jobs\r\nMCA Govt Jobs\r\nCategory Wise Govt Jobs\r\nClerk Jobs (13000+ Vacancies)\r\nComputer Jobs (3000+ Vacancies)\r\nSteno Typist Jobs (500+ Vacancies)\r\nAssistant Jobs (15000+ Vacancies)\r\nDriver Jobs (500+ Vacancies)\r\nNurse Jobs (5000+ Vacancies)\r\nSport Jobs (200+ Vacancies)\r\nTeacher Jobs (500+ Vacancies)\r\nAgriculture Jobs (1000 Vacancies)\r\nOnly Female Jobs (10000 Vacancies)\r\nIT Software Jobs (1000 Vacancies)\r\nPolice Jobs (1000+ Vacancies)\r\nPWD Jobs (1000+ Vacancies)\r\nFaculty Jobs (2000+ Vacancies)\r\n\r\nPublic Sector Company Jobs\r\nIOCL Recruitment 2023\r\nBEL Recruitment 2023\r\nONGC Recruitment 2023\r\nBHEL Recruitment 2023\r\nNLC Recruitment 2023\r\nBPCL Recruitment 2023\r\nHPCL Recruitment 2023\r\nOIL Recruitment 2023\r\nBARC Recruitment 2023\r\nNCBS Recruitment 2023\r\nMMTC Recruitment 2023\r\nHLL Recruitment 2023\r\nMFL Recruitment 2023\r\nMRPL Recruitment 2023\r\nMDL Recruitment 2023\r\nHAL Recruitment 2023\r\nGAIL Recruitment 2023\r\nSAIL Recruitment 2023\r\nEIL Recruitment 2023\r\nNPCIL Recruitment 2023\r\nHIL Recruitment 2023\r\nHSCC Recruitment 2023\r\nNRL Recruitment 2023\r\nCochin Shipyard Recruitment 2023\r\n\r\nLatest Bank Jobs\r\nNational Housing Bank Recruitment 2023 Apply Online 40 Finance Officer Vacancies\r\nBank Jobs 2023 Latest Bank Recruitment 1407 Vacancies\r\nCanara Bank Recruitment 2023 Apply Online for Officer Vacancies\r\nBank of Baroda Recruitment 2023 Apply Online | 348 Credit Analyst, Manager Vacancies\r\nSBI Retired Bank Officer Recruitment 2023 Apply Online 1031 Vacancies\r\nUnion Bank of India Recruitment 2023 Apply Online | 11 Clerk Vacancies\r\nIndbank Recruitment 2023 Application Form | 12 Dealer Vacancies\r\nCentral Bank of India Recruitment 2023 Apply Online for 16 Vacancies\r\nPrivate Bank Jobs 2023 Apply 10000+ Vacancies\r\nMP DCCB Recruitment 2023 Apply Online 628 Officer Vacancies | Last Date 24/04/2023\r\nLatest Clerk Jobs\r\nSainik School Bijapur Recruitment 2023 Apply 08 Teacher, Clerk, Ward Boy Vacancies\r\nUnion Bank of India Recruitment 2023 Apply Online | 11 Clerk Vacancies\r\nCentral University of Jammu Recruitment 2023 Apply Online | 20 Non Teaching Vacancies\r\nDirectorate of Forest Education Recruitment 2023 Apply 23 Deputation Vacancies\r\nNIEPID Recruitment 2023 Apply 63 Faculty, Medical, Clerk, Steno Vacancies\r\nMPPEB Recruitment 2023 Apply Online (5000+ Vacancies Opening)\r\nSSC Selection Post Phase 11 Notification 2023 Apply Online for 5369 Vacancies\r\nPune Cantonment Board Recruitment 2023 Apply Online | 168 Safaikarma Chari, Clerk, Teacher, Engineer Vacancies\r\nChakrata Cantonment Board Recruitment 2023 Apply Online | 16 Forester, Teacher, Clerk, Engineer Vacancies\r\nNational Crafts Museum Recruitment 2023 Apply 07 Deputation Vacancies\r\nPublic Commission Jobs\r\nMPSC Recruitment (Maharashtra)\r\nUPPSC Recruitment (Uttar Pradesh)\r\nTNPSC Recruitment (Tamil Nadu)\r\nHSSC Recruitment (Haryana)\r\nMPPSC Recruitment (Madhya Pradesh)\r\nAPPSC Recruitment (Andhra Pradesh)\r\nBSSC Recruitment (Bihar)\r\nKPSC Recruitment (Karnataka)\r\nUPSSSC Recruitment (Uttar Pradesh)\r\nUKPSC Recruitment (Uttarakhand)\r\nWBPSC Recruitment (West Bengal)\r\nTSPSC Recruitment (Telangana)\r\nAPSC Recruitment (Assam)\r\nRPSC Recruitment (Rajasthan)\r\nOSSSC Recruitment (Odisha)\r\nGPSC Recruitment (Gujarat)\r\nHPSC Recruitment (Himachal Pradesh)\r\nPPSC Recruitment (Punjab)\r\nJKPSC Recruitment (Jammu Kashmir)\r\nGoa PSC Recruitment\r\nTripura PSC Recruitment\r\nNPSC Recruitment (Nagaland)\r\nArunachal Pradesh PSC Recruitment\r\nMizoram PSC Recruitment\r\nManipur PSC Recruitment\r\nMeghalaya PSC Recruitment\r\nCity wise Govt Jobs\r\nBangalore Jobs\r\nBhopal Jobs\r\nChandigarh Jobs\r\nChennai Jobs\r\nDadra and Nagar Haveli\r\nDaman and Diu\r\nDelhi Jobs\r\nHyderabad Jobs\r\nIndore Jobs\r\nJaipur Jobs\r\nKolkata Jobs\r\nLakshadweep\r\nLucknow Jobs\r\nMumbai Jobs\r\nNagpur Jobs\r\nNoida Jobs\r\nPatna Jobs\r\nPune Jobs\r\nRanchi Jobs\r\nGovt Jobs for Engineers\r\nBARC Recruitment 2023 Apply Online | 4374 Stipendiary Trainee, Technical Vacancies\r\nIIT Dhanbad Recruitment 2023 Apply Online | 51 Non Teaching Vacancies\r\nKonkan Railway Recruitment 2023 Apply 04 Manager, Engineer Vacancies\r\nNorthern Railway Recruitment 2023 Apply 02 Engineer Vacancies\r\nGARC Recruitment 2023 Apply Online 02 Engineer, Director Vacancies\r\nPawan Hans Limited Recruitment 2023 Apply Online | 33 Graduate Apprentice Vacancies\r\nPune Municipal Corporation Recruitment 2023 Apply Online 320 Various Level Vacancies\r\nGovt Jobs for IT Freshers\r\nSchool of Planning and Architecture Bhopal Recruitment 2023 Apply Online 14 Non Teaching Vacancies\r\nMP Rajya Sahakari Bank Recruitment 2023 Apply Online 27 Assistant Manager Vacancies\r\nIndian Navy SSC Officer Recruitment 2023 Apply Online 242 Vacancies\r\nIIT Goa Recruitment 2023 Apply Online | 02 System Administrator, Assistant Vacancies\r\nVisva Bharati Recruitment 2023 Apply Online | 709 Vacancies | vbharatirec.nta.ac.in\r\nCanara Bank Recruitment 2023 Apply Online for Officer Vacancies\r\nNHSRC Recruitment 2023 Apply Online | 10+ Consultant Vacancies\r\nGovt Jobs for ITI\r\nBARC Recruitment 2023 Apply Online | 4374 Stipendiary Trainee, Technical Vacancies\r\nIIT Dhanbad Recruitment 2023 Apply Online | 51 Non Teaching Vacancies\r\nVSSC Recruitment 2023 Apply Online, 49 Technician, Draughtsman Vacancies\r\nOrdnance Factory Chanda Recruitment 2023 Apply 76 Apprentice Vacancies\r\nSDSC SHAR Recruitment 2023 Apply Online | 94 Technician, Assistant, Draughtsman Vacancies\r\nNMDC Recruitment 2023 Apply Online 193 Apprentice Vacancies\r\nITI Jobs 2023 Latest ITI NCVT Govt Jobs 707 Vacancies\r\n', '3', '01 May, 2023', 1, 'pexels-alex-knight-2599244.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(1, 'Rahul', 'Sharma', 'rahul@123', 'e10adc3949ba59abbe56e057f20f883e', 1),
(2, 'Komal', 'Patil', 'komalpatil', 'e10adc3949ba59abbe56e057f20f883e', 0),
(5, 'suraj', 'mistri', 'suraj@gmail.com', '7289acc31495dbe8a4fb861ca4eea6af', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
