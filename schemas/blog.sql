-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2017 at 07:25 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `summary` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `summary`, `content`, `created`) VALUES
(1, 'Extra drukke avondspits vanwege regenbuien en wind ', 'Automobilisten moeten donderdag tijdens de avondspits rekening houden met extra drukte op de weg vanwege regenbuien en wind. Rond 17.00 uur stond er ruim 415 kilometer aan files op de snelwegen, meldt de Verkeersinformatiedienst (VID).', 'Volgens de VID nadert \"de drukste avondspits van het jaar\". De donderdagavondspits is gewoonlijk al een van de drukste van de week. De ANWB spreekt van een \"razenddrukke en kletsnatte\" avondspits. Eerder voorspelde de ANWB dat veel dagelijkse files twee keer zo lang zullen zijn.\r\n\r\nVanuit het westen trekt sinds 15.00 uur een regengebied over Nederland waar het verkeer in de avondspits last van heeft. In het noordwesten van het land heeft het verkeer bovendien hinder van zware windstoten, aldus de ANWB. In het noordwestelijk kustgebied kunnen windstoten van 90 kilometer per uur voorkomen. Het KNMI heeft daarom voor de provincie Noord-Holland code geel afgegeven.\r\n\r\nOp de A4 tussen Amsterdam en Den Haag is bij Hoogmade een rijstrook dicht, wat volgens de ANWB een uur tijdverlies oplevert. Op de A28 van Amersfoort naar Zwolle bij Hattemerbroek gebeurde een ongeluk, waardoor de vertraging rond 16.40 uur opliep tot meer dan een uur. De weg daar is weer vrij.\r\n\r\nOp de A1 van Hengelo naar Apeldoorn zijn bij Twello drie rijstroken dichtgegaan na een ongeluk. De vertraging daar was rond 17.00 uur opgelopen tot ruim dertig minuten. Op de A27 van Hilversum naar Utrecht stond rond 17.00 uur 19 kilometer file.\r\n\r\nVolgens de VID zorgt een actie van een dierenactivist voor vertraging op de A59 bij Drunen. Richting Den Bosch ontstond daardoor een file van 8 kilometer.\r\n\r\nVroeg\r\nVolgens de VID begonnen de eerste files al vroeg. Rond 15.00 uur ontstonden de eerste vertragingen al op snelwegen rond Rotterdam, Amsterdam, Den Haag en Leiden. De knelpunten in het midden van het land kregen iets later te maken met extra drukte, omdat de regen daar net wat later begon te vallen.\r\n\r\nDe VID verwacht donderdagavond op het drukste moment ruim 450 kilometer file op de snelwegen. De drukste avondspits tot nu toe dit jaar was die voor Pinksteren. Op de snelwegen stond toen 500 kilometer file in totaal.\r\n\r\nIn oktober en november waren er avondspitsen die qua lengte in de buurt kwamen van dat record. Ook toen speelde het slechte weer vaak een rol.', '2017-07-12'),
(2, 'Triggerfinger en De Dijk op Zwarte Cross ', 'Triggerfinger, De Dijk en Gogol Bordello staan komende zomer op het podium tijdens Zwarte Cross in het Achterhoekse Lichtenvoorde.', 'De festivalorganisatie kondigde donderdag ook optredens aan van onder andere PÃ© Daalemmer & Rooie Rinus, BÃ¶kkers en De Motorband.\r\n\r\nIn totaal zullen er meer dan 250 bands en ruim duizend theaterartiesten optreden, verdeeld over 32 podia. Naast muziek en theater zijn er verschillende stuntshows en is er een programma op en langs de crossbaan. Vorig jaar was het festival volledig uitverkocht en trok het 220.000 mensen.\r\n\r\nDe Zwarte Cross vindt plaats op 12, 13, 14 en 15 juli. De voorverkoop is inmiddels begonnen en alleen de vrijdagkaarten zijn nog beschikbaar.', '2017-07-12'),
(3, 'Tientallen gewonden na botsingen Palestijnse betogers en leger IsraÃ«l ', 'Zeker 31 Palestijnse betogers zijn gewond geraakt bij confrontaties met het IsraÃ«lische leger op de Westelijke Jordaanoever en in de Gazastrook. De rellen volgen een dag na de Amerikaanse erkenning van Jeruzalem als hoofdstad van IsraÃ«l.', 'Volgens medici werden elf mensen geraakt door kogels. EÃ©n van hen verkeert in kritieke toestand, aldus de autoriteiten in het land. Twintig anderen liepen verwondingen op door rubberen kogels. \r\n\r\nDe Palestijnse Autoriteit had opgeroepen tot een algemene staking, maar de Palestijnse moslimbeweging Hamas had onomwonden gepleit voor een derde intifada tegen IsraÃ«l. In de Gazastrook gooiden betogers stenen naar het IsraÃ«lische leger. Dit deden zij bij een hek op de grens met IsraÃ«l.\r\n\r\nOp de Westelijke Jordaanoever was ook protest gaande tegen het besluit van de Amerikaanse president Donald Trump. Volgens ooggetuigen scandeerden Palestijen op straat \"Jeruzalem is de hoofdstad van de staat Palestina\". Ook hier gooiden betogers stenen naar soldaten.\r\n\r\nHet leger gebruikte onder meer traangas en waterkanonnen om de duizenden mensen op straat in de hand te houden.\r\nStaking\r\nVerschillende regeringsleiders, zowel in het Midden-Oosten als in de westerse wereld, hadden Trump al van tevoren gewaarschuwd dat zijn besluit tot veel ophef zou leiden in de Arabische wereld. Zij stellen unaniem dat het besluit het vredesproces en de stabiliteit en veiligheid in het gebied bedreigt.\r\n\r\nJeruzalem is in de ogen van de wereldgemeenschap al zeventig jaar een plaats die een cruciale rol zou moeten spelen bij het bereiken van vrede tussen IsraÃ«l en de Palestijnen. Lange tijd wilden de Verenigde Naties een internationaal bestuur voor Jeruzalem.\r\n\r\nHet Arabische oosten van de stad is echter in 1967 door IsraÃ«l bezet en vervolgens geannexeerd. De Verenigde Naties eisen dat de bezetters vertrekken en onderhandelen over vrede tussen een Joodse en een Palestijnse staat.', '2017-07-12'),
(4, 'Hamas roept op tot nieuwe Palestijnse opstand tegen IsraÃ«l', 'De Palestijnse beweging Hamas heeft donderdag opgroepen tot een nieuwe opstand tegen IsraÃ«l nu de Verenigde Staten Jeruzalem als hoofdstad van IsraÃ«l hebben uitgeroepen.', '\"We moeten werken aan een nieuwe intifada tegenover de zionistische vijand\", aldus Hamas-leider Ismail Haniyeh tijdens een speech in Gaza.\r\n\r\nHaniyeh dringt er bij Palestijnen, moslims en arabieren op aan om vrijdag de straat op te gaan om tegen de beslissing van de VS te protesteren en hij noemt vrijdag de \"dag van de woede\". \"Laat 8 december de eerste dag van de intifada tegen de bezetter zijn.\"\r\n\r\nWoensdagavond (Nederlandse tijd) riep de Amerikaanse president Donald Trump Jeruzalem officiÃ«el uit tot hoofdstad van IsraÃ«l.  \"Andere presidenten hebben het beloofd, maar nooit gedaan. Vandaag los ik mijn belofte in\", zegt Trump. \"Het is logisch dat wij de stad die IsraÃ«l zelf als hoofdstad ziet, erkennen als hoofdstad.\"\r\nProtest\r\nVerschillende Palestijnse religieuze en seculiere groeperingen riepen in een reactie inwoners op om donderdag het werk neer te leggen en te gaan protesteren.\r\n\r\nOp verschillende plekken binnen en buiten IsraÃ«l en de Palestijnse gebieden gingen woensdag al betogers de straat op. Zo werd er door enkele honderden mensen gedemonstreerd bij het Amerikaanse consulaat in de Turkse hoofdstad Ankara.\r\nVrede\r\nJeruzalem is in de ogen van de wereldgemeenschap al zeventig jaar een aparte plaats die een cruciale rol zou moeten spelen bij het bereiken van vrede tussen de IsraÃ«li\'s en Palestijnen. Lange tijd wilden de VN een internationaal bestuur voor Jeruzalem.\r\n\r\nHet Arabische oosten van de stad is echter in 1967 door IsraÃ«l bezet en vervolgens geannexeerd. De VN eisen dat de bezetters vertrekken en onderhandelen over vrede tussen een Joodse een Palestijnse staat. De erkenning door Washington van deels bezet Jeruzalem als IsraÃ«lische hoofdstad, is volgens waarnemers funest voor het streven naar een \'tweestatenoplossing\'\'.', '2017-07-12'),
(5, 'Palestijnen roepen op tot protest en staking na Jeruzalem-besluit VS', 'Palestijnse religieuze en seculiere groeperingen hebben inwoners opgeroepen om donderdag het werk neer te leggen en te gaan protesteren. De oproep is een reactie op het besluit van de Amerikaanse president Donald Trump om Jeruzalem als hoofdstad van ', 'Het Palestijnse ministerie voor onderwijs heeft donderdag tot vrije dag bestempeld. Leraren en studenten wordt opgedragen deel te nemen aan de protesten in de Gazastrook, de Westelijke Jordaanoever en in delen van Jeruzalem.\r\n\r\nOp verschillende plekken binnen en buiten IsraÃ«l en de Palestijnse gebieden gingen woensdag al betogers de straat op. Zo werd er door enkele honderden mensen gedemonstreerd bij het Amerikaanse consulaat in de Turkse hoofdstad Ankara.\r\n\r\nPersbureau Reuters meldt donderdag op basis van interne documenten dat het Amerikaanse ministerie van Buitenlandse Zaken IsraÃ«l heeft verzocht vreugdevolle officiÃ«le reacties op het besluit te temperen. Het ministerie schrijft maatschappelijke onrust te verwachten en zich nog te beraden op eventuele gevolgen voor de veiligheid van Amerikaans personeel in het buitenland.\r\n\r\nHet ministerie heeft Amerikaanse diplomaten in IsraÃ«l en de EU geadviseerd om te benadrukken dat de \"definitieve status\" van Jeruzalem nog steeds een belangrijk onderwerp van toekomstige vredesgesprekken zal zijn, en dat IsraÃ«l en de Palestijnen daar gezamenlijk uit moeten komen.\r\nFelle kritiek \r\nMahmoud Abbas, de president van de Palestijnen, heeft in een reactie op het Amerikaanse besluit gezegd dat Jeruzalem de \"eeuwige hoofdstad van de Palestijnse staat\" is. Hij zegt ook dat deze beslissing het einde is van de rol van de VS als bemiddelaar tussen de Palestijnen en IsraÃ«l.\r\n\r\nIn de rest van de Arabische wereld werd het Amerikaanse besluit ook met woede ontvangen. JordaniÃ« noemt het \"onwettig\" en Qatar betitelt het als de \"doodsteek voor de vrede\". Libanon, Egypte, Saudi-ArabiÃ« en Turkije tekenden fel protest aan. Iran deed dat ook en greep de gelegenheid bovendien aan om uit te halen naar aartsvijand Saudi-ArabiÃ«, dat beter geld had kunnen uitgeven aan de Palestijnen dan aan \"terrorisme en extremisme\".\r\n\'Onverstandig\'\r\nDe Europese Unie en verschillende EU-lidstaten tonen zich ook kritisch. De Nederlandse minister Halbe Zijlstra (Buitenlandse Zaken) noemde het besluit om Jeruzalem te erkennen woensdag op voorhand \"onverstandig en contraproductief\".\r\n\r\nDe VN-Veiligheidsraad heeft aangekondigd vrijdag bijeen te komen voor een vergadering over het Amerikaanse besluit. Acht van de vijftien leden, waaronder Frankrijk, Egypte en Groot-BrittanniÃ«, hebben aangedrongen op die bijeenkomst.', '2017-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(12, 'admin', '$2y$08$VlRQb09ocmhyRUozQStMNuMvponH92AMZ06bI0x4ZRA.QpXU4MGfC'),
(13, 'alex', '$2y$08$aHJqUUllY1lDK29uZjRnT.ZVsQ.r.LWiBtzFw4VFQ4IiBZW3KkhgW'),
(14, 'alex', '$2y$08$MXpnTnVSbDErRzAyaTZWO.IWsD58HrlXX.6Fqm4ZwyhPTJ.YWbrJK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
