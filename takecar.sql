-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2018 at 03:31 PM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `takecar`
--

-- --------------------------------------------------------

--
-- Table structure for table `Clients`
--

CREATE TABLE `Clients` (
  `NumClient` int(11) NOT NULL,
  `NomC` varchar(50) NOT NULL,
  `PrenomC` varchar(50) NOT NULL,
  `IdentifiantC` varchar(50) NOT NULL,
  `MdpC` varchar(50) NOT NULL,
  `EmailC` varchar(50) NOT NULL,
  `TelC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Clients`
--

INSERT INTO `Clients` (`NumClient`, `NomC`, `PrenomC`, `IdentifiantC`, `MdpC`, `EmailC`, `TelC`) VALUES
(1, 'Le Bas', 'ClÃ©ment', 'clems77', 'clems77270', 'clement.lebas77@live.fr', '06 58 50 58 86'),
(2, 'Le Bas', 'ClÃ©ment', 'clems77', 'clems77270', 'clement.lebas77@live.fr', '06 58 50 58 86');

-- --------------------------------------------------------

--
-- Table structure for table `IMAGE`
--

CREATE TABLE `IMAGE` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `LocationVoiture`
--

CREATE TABLE `LocationVoiture` (
  `IdLoc` int(11) NOT NULL,
  `Loueur` int(11) NOT NULL,
  `Locataire` int(11) NOT NULL,
  `DateDebLoc` date NOT NULL,
  `DateFinLoc` date NOT NULL,
  `PrixTotalLoc` double NOT NULL,
  `IdVehicule` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `VOITURES`
--

CREATE TABLE `VOITURES` (
  `IdVehicule` int(11) NOT NULL,
  `MarqueVeh` varchar(50) NOT NULL,
  `ReferenceVeh` varchar(50) NOT NULL,
  `TypeVeh` varchar(50) NOT NULL,
  `AnneeVeh` varchar(50) NOT NULL,
  `KilometrageVeh` int(11) NOT NULL,
  `MoteurVeh` varchar(50) NOT NULL,
  `EtatVeh` varchar(50) NOT NULL,
  `OptionsVeh` varchar(50) NOT NULL,
  `DisponibleVeh` tinyint(1) NOT NULL,
  `PrixHeureVeh` double NOT NULL,
  `NumClient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`NumClient`);

--
-- Indexes for table `LocationVoiture`
--
ALTER TABLE `LocationVoiture`
  ADD PRIMARY KEY (`IdLoc`),
  ADD KEY `LocationVoiture_VOITURES_FK` (`IdVehicule`),
  ADD KEY `LocationVoiture_Clients0_FK` (`Loueur`),
  ADD KEY `LocationVoiture_Clients1_FK` (`Locataire`);

--
-- Indexes for table `VOITURES`
--
ALTER TABLE `VOITURES`
  ADD PRIMARY KEY (`IdVehicule`),
  ADD KEY `VOITURES_Clients_FK` (`NumClient`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Clients`
--
ALTER TABLE `Clients`
  MODIFY `NumClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `LocationVoiture`
--
ALTER TABLE `LocationVoiture`
  MODIFY `IdLoc` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VOITURES`
--
ALTER TABLE `VOITURES`
  MODIFY `IdVehicule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `LocationVoiture`
--
ALTER TABLE `LocationVoiture`
  ADD CONSTRAINT `LocationVoiture_Clients0_FK` FOREIGN KEY (`Loueur`) REFERENCES `Clients` (`NumClient`),
  ADD CONSTRAINT `LocationVoiture_Clients1_FK` FOREIGN KEY (`Locataire`) REFERENCES `Clients` (`NumClient`),
  ADD CONSTRAINT `LocationVoiture_VOITURES_FK` FOREIGN KEY (`IdVehicule`) REFERENCES `VOITURES` (`IdVehicule`);

--
-- Constraints for table `VOITURES`
--
ALTER TABLE `VOITURES`
  ADD CONSTRAINT `VOITURES_Clients_FK` FOREIGN KEY (`NumClient`) REFERENCES `Clients` (`NumClient`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
