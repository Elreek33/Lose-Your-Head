-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-02-2024 a las 19:29:34
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lyh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `possibleanswers`
--

CREATE TABLE `possibleanswers` (
  `ID` int(11) NOT NULL,
  `QuestionID` int(11) DEFAULT NULL,
  `Answer` text DEFAULT NULL,
  `Correct` tinyint(1) DEFAULT NULL,
  `Message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `possibleanswers`
--

INSERT INTO `possibleanswers` (`ID`, `QuestionID`, `Answer`, `Correct`, `Message`) VALUES
(1, 1, 'Uh... Dave?', 1, 'Of course! Even you can get that one right.'),
(2, 1, 'I\'m going to say Dave.', 1, 'Dave is... right! We like to start off easy.'),
(3, 1, 'Sure hope it\'s Dave.', 1, 'You hope right! It\'s Dave. Who else would it be?'),
(4, 1, 'Bruce.', 0, 'What? Are you an idiot? Time to... Lose Your Head!'),
(5, 2, 'Battleship.', 0, 'Wrongo! I\'m afraid you must... Lose Your Head!'),
(6, 2, 'Aircraft Carrier.', 1, 'Bing, bing, bing! That\'s right.'),
(7, 2, 'Iron Foundry.', 0, 'Wrongo! I\'m afraid you must... Lose Your Head!'),
(8, 2, 'Rusty? Full of holes? I don\'t know!', 0, 'Aw, too bad. Guess you have to... Lose Your Head!'),
(9, 3, 'Brotherhood of Steel.', 1, 'That\'s right! You get to move on to the next round.'),
(10, 3, 'Minutemen.', 0, 'Oh! So close. Well, not really. Time to... Lose Your Head!'),
(11, 3, 'Enclave.', 0, 'Couldn\'t be more wrong. Now you have to... Lose Your Head!'),
(12, 3, 'Association of zookeepers?', 0, 'Wow. You are really bad at this game. You get to... Lose Your Head!'),
(13, 4, 'George Cooper.', 0, 'Oh, so close. But so wrong. Time to... Lose Your Head!'),
(14, 4, 'Bill Sutton.', 0, 'I have no idea who that is. So... Lose Your Head!'),
(15, 4, 'Rex Goodman.', 1, 'Amazing! You got it right! You\'ve won... Keep Your Head!'),
(16, 4, 'Your mother.', 0, 'Hey! Family is off limits. Just for that... Lose Your Head!'),
(17, 5, 'Travis Miles.', 0, 'Wrongo! I\'m afraid you must... Lose Your Head!'),
(18, 5, 'Vadim Bobrov.', 0, 'Ooo! Not even close. Guess you... Lose Your Head!'),
(19, 5, 'Piper Wright.', 1, 'Bing, bing, bing! That\'s... Wright!'),
(20, 5, 'Walter Cronkite?', 0, 'Never heard of him. But you get to... Lose Your Head!'),
(21, 6, 'Luca Sims.', 0, 'Close but not quite. Time to... Lose Your Head!'),
(22, 6, 'Lucas Sims.', 0, 'Mmmm... No. You have to... Lose Your Head!'),
(23, 6, 'Lucas Simms.', 1, 'Tricky question, but you got it right!'),
(24, 6, 'Billy the Kid.', 0, 'What? Are you an idiot? Go on... Lose Your Head!'),
(25, 7, 'Deathclaw.', 1, 'That\'s right! You get to move on to the next round.'),
(26, 7, 'Super Mutant Behemoth.', 0, 'Super wrong! Time to... Lose Your Head!'),
(27, 7, 'Mirelurk King.', 0, 'Right! Just kidding. Now you have to... Lose Your Head!'),
(28, 7, 'Legendary Radroach?', 0, 'A legendary wrong answer. You get to... Lose Your Head!'),
(29, 8, 'Dogman.', 0, 'You\'ve got to get out more. Time to... Lose Your Head!'),
(30, 8, 'Big Dog.', 0, 'Good guess, but no. So... Lose Your Head!'),
(31, 8, 'Three Dog.', 1, 'Amazing! You got it right! You\'ve won... Keep Your Head!?'),
(32, 8, 'Dogmeat.', 0, 'He\'s a dog. Your dog. Just for that... Lose Your Head!'),
(33, 9, 'All about Radroaches.', 0, 'You wish. Instead you get to... Lose Your Head!'),
(34, 9, 'How to Live in the Wasteland.', 0, 'So close, and yet wrong. Now... Lose Your Head!'),
(35, 9, 'Wasteland Survival Guide.', 1, 'We have winner! Now on to the next round.'),
(36, 9, 'War and Peace.', 0, 'Sounds like a page turner, but it\'s wrong. Time to... Lose Your Head!'),
(37, 10, 'Brown.', 1, 'That\'s right! You must know the lady well.'),
(38, 10, 'McIntyre.', 0, 'Ooo! This is gonna hurt. You get to... Lose Your Head!'),
(39, 10, 'Trick question. She had no last name.', 0, 'So, so wrong. Let\'s... Lose Your Head!'),
(40, 10, 'I never bothered to learn it.', 0, 'As they say, heads will roll. First... Lose Your Head!'),
(41, 11, 'Farmer\'s Market.', 0, 'Not unless they sell farmers as meat. Time to... Lose Your Head!'),
(42, 11, 'Big Brands Shopping Mart.', 0, 'I\'d shop there, but she didn\'t. Gotta ask you to... Lose Your Head!'),
(43, 11, 'Super-Duper Mart.', 1, 'A super-duper answer if I ever heard one!'),
(44, 11, 'The zoo?', 0, 'Ha, ha! Free range zebra anyone? You have to... Lose Your Head!'),
(45, 12, 'Minefield.', 0, 'So wrong. Boom! That\'s your head after you... Lose Your Head!'),
(46, 12, 'Nuka-Cola plant', 1, 'Bing, bing, bing! Right. She never sent the Lone Wanderer there.'),
(47, 12, 'Sewers to test Mole rat repellent.', 0, 'Buzz! Wrongo. I guess you\'re going to... Lose Your Head!'),
(48, 12, 'Straight to bed without supper.', 0, 'Like a bad child who is about to... Lose Your Head!'),
(49, 13, 'On an armored train.', 0, 'Oh! I hope your neck is armored, cuz you\'re about to... Lose Your Head!'),
(50, 13, 'In an airship.', 1, 'That\'s right! How that thing flew, we\'ll never know.'),
(51, 13, 'On an aircraft carrier.', 0, 'Wrong, wrong, wrong. Guess you have to... Lose Your Head!'),
(52, 13, 'Donkeys. Lots of donkeys.', 0, 'Ha, ha! Funnyman, you\'re about to... Lose Your Head!'),
(53, 14, 'Paladin Danse.', 0, 'He was there, but not just him. So you have to... Lose Your Head!'),
(54, 14, 'Scribe Haylen.', 0, 'She did, but not just her. Time to... Lose Your Head!'),
(55, 14, 'Paladin Danse and Scribe Haylen.', 1, 'Yes! Both of them were there.'),
(56, 14, 'A donkey.', 0, 'That doesn\'t even make sense. Go ahead... Lose Your Head!'),
(57, 15, 'Power Armor.', 1, 'That\'s right! You get to move on to the next round.'),
(58, 15, 'Gauss Rifles.', 0, 'Not really. But now you get to... Lose Your Head!'),
(59, 15, 'Robots.', 0, 'They wish! But instead you\'re going to... Lose Your Head!'),
(60, 15, 'Armored donkeys.', 0, 'What is it with you and donkeys? Now you\'ll... Lose Your Head!'),
(61, 16, 'Mega nuke.', 0, 'Oh, so close. But so wrong. Time to... Lose Your Head!'),
(62, 16, 'Beryllium agitator.', 1, 'Amazing! You got it right! You\'ve won... Keep Your Head!?'),
(63, 16, 'Liberty Prime\'s head.', 0, 'I have no idea what that is. So... Lose Your Head!'),
(64, 16, 'A donkey.', 0, 'I\'m sick and tired of donkey jokes. Lose Your Head!'),
(65, 17, 'Sturges.', 0, 'Psychic? Hardly! Now I\'ll watch you... Lose Your Head!'),
(66, 17, 'Preston Garvey.', 0, 'He couldn\'t predict the present! So you get to... Lose Your Head!'),
(67, 17, 'Mama Murphy.', 1, 'Winner! She was strange but psychic.'),
(68, 17, 'I don\'t believe in psychics.', 0, 'I guess you don\'t believe in keeping your head. Lose Your Head!'),
(69, 18, 'Enclave.', 1, 'Drat! You\'re right. I really wanted to see you lose your head.'),
(70, 18, 'Brotherhood of Steel.', 0, 'So, so wrong. Now you\'ll so, so... Lose Your Head!'),
(71, 18, 'Band of Super Mutants.', 0, 'Those cretins couldn\'t occupy an open field. Time to... Lose Your Head!'),
(72, 18, 'A barbershop quartet.', 0, 'Really. That\'s your guess? Sigh. I guess you\'ll just... Lose Your Head!'),
(73, 19, 'Tinker Ted.', 0, 'Ooo! It\'s Tom, not Ted. Heads will roll when you... Lose Your Head!'),
(74, 19, 'Tinker Tim.', 0, 'Little Timmy? I don\'t think so. For that... Lose Your Head!'),
(75, 19, 'Tinker Tom.', 1, 'Tom it is! You\'re on a roll now.'),
(76, 19, 'Mike the Mechanic.', 0, 'You are really bad at this. So now you have to... Lose Your Head!'),
(77, 20, 'Ghouls.', 0, 'He did hate them, but that\'s still wrong. You gotta... Lose Your Head!'),
(78, 20, 'Megaton.', 1, 'Righto! He wanted it nuked into oblivion.'),
(79, 20, 'The Washington Monument.', 0, 'Tall, but not in his way. So you get to... Lose Your Head!'),
(80, 20, 'Bad Hair.', 0, 'Nobody likes bad hair. Yours will go away when you... Lose Your Head!'),
(81, 21, 'Little Lamplighters.', 0, 'Those kids? Hardly. That means you... Lose Your Head!'),
(82, 21, 'Reilly\'s Rangers.', 0, 'Not so much. But now I get to watch you... Lose Your Head!'),
(83, 21, 'Talon Company.', 1, 'We have a winner! Tough talking and hard fighting.'),
(84, 21, 'Goon Swarm.', 0, 'Never heard of them. Regardless, you\'re about to... Lose Your Head!'),
(85, 22, 'Brotherhood of Steel.', 0, 'Definitely not. Which means you get to... Lose Your Head!'),
(86, 22, 'The Institute.', 1, 'Bing, bing, bing! That\'s right.'),
(87, 22, 'The Railroad.', 0, 'They woulda if they coulda! But now you have to... Lose Your Head!'),
(88, 22, 'Synths! I hate Synths!', 0, 'Focus. You\'re off topic. And now you\'re going to... Lose Your Head!'),
(89, 23, 'Lincoln Memorial.', 1, 'Yes! He wanted to restore the head to the statue.'),
(90, 23, 'Jefferson Memorial.', 0, 'Wrong president. But you get to... Lose Your Head!'),
(91, 23, 'Washington Monument.', 0, 'It could sure use it, but no. Now you have to... Lose Your Head!'),
(92, 23, 'Monument to himself?', 0, 'Wow. That\'s a horrible answer. You get to... Lose Your Head!'),
(93, 24, 'Swan.', 1, 'Too bad. You\'re right! I was hoping you\'d lose your head.'),
(94, 24, 'Goose.', 0, 'That would be a silly name. Off with your... no... Lose Your Head!'),
(95, 24, 'Heron.', 0, 'Close but no cigar. Now we\'re going to make you... Lose Your Head!'),
(96, 24, 'Some sort of bird I think.', 0, 'You won\'t have to worry about thinking when you... Lose Your Head!'),
(97, 25, 'George Washington.', 0, 'There wasn\'t even a statue of him! That will cost you when you... Lose Your Head!'),
(98, 25, 'Abraham Lincoln.', 1, 'Ding, ding, ding! Right you are!'),
(99, 25, 'Thomas Jefferson.', 0, 'Oh! So close, and yet so far. That means you... Lose Your Head!'),
(100, 25, 'Mike the Mechanic.', 0, 'Hardly famous, is he? So you get to... Lose Your Head!'),
(101, 26, 'Billy.', 1, 'Correct-o! If you could even call that little freak a “boy”...'),
(102, 26, 'Donny.', 0, 'Oh, Donny boy is wrong. We\'ll just help you... Lose Your Head!'),
(103, 26, 'Quentin.', 0, 'Hardly. It will hardly hurt when you... Lose Your Head!'),
(104, 26, 'Annabelle.', 0, 'Wrong, wrong, wrong! And now you... Lose Your Head!'),
(105, 27, 'Fundamentally Enhanced Venom.', 0, 'What? No! Sorry, dummy, but you have to... Lose Your Head!'),
(106, 27, 'Fixed Endemic Virulent.', 0, 'Um... no. But you get to... Lose Your Head!'),
(107, 27, 'Forced Evolutionary Virus.', 1, 'That is correct! Not as dumb as you look, huh?'),
(108, 27, 'A glass of water.', 0, 'No, but you must have a thirst for failure! Time to... Lose Your Head!'),
(109, 28, 'Children of Adam.', 0, '*BZZZT* WRONG! Now... Lose Your Head!'),
(110, 28, 'Children of Atom.', 1, 'Oh, too bad that\'s right. I really hate it when you know the answer.'),
(111, 28, 'Atom\'s Children.', 0, 'Even a child knows that\'s wrong. Let\'s watch you... Lose Your Head!'),
(112, 28, 'Several species of small furry animals gathered together in a cave.', 0, 'Ah, but can you sing it? No? Then... Lose Your Head!'),
(113, 29, 'The Glowing Sea.', 1, 'Wowzers! You got it right. Guess you get to keep your head... this time.'),
(114, 29, 'The Glowing Lands.', 0, 'Not a geography buff, eh? Well, you have to... Lose Your Head!'),
(115, 29, 'The Sea of Atom.', 0, 'Is that wrong? Someone look it up. Yep, it\'s wrong. So... Lose Your Head!'),
(116, 29, 'A nice two-bedroom in Waltham.', 0, 'No idea where that is, and shortly you\'ll... Lose Your Head!'),
(117, 30, 'Parson State Insane Asylum', 1, 'You must be cheating. That\'s right.'),
(118, 30, 'Cambridge Police Station.', 0, 'Incorrect! But don\'t worry, you still get to... Lose Your Head!'),
(119, 30, 'Kendall Hospital.', 0, 'Wrong! Even doctors won\'t be able to help you when you... Lose Your Head!'),
(120, 30, 'Sent to his room without supper.', 0, 'Worst answer ever! Try not to wiggle as you... Lose Your Head!'),
(121, 31, 'Harbor Hotel.', 1, 'Dang, that\'s right. Who gave them the answers? Who?'),
(122, 31, 'Cambridge Campus Diner.', 0, 'Ixnay on the Iner Day! But you get to... Lose Your Head!'),
(123, 31, 'Medical Center Metro.', 0, 'You couldn\'t be more wrong! Now you have to... Lose Your Head!'),
(124, 31, 'Boston.', 0, 'You are really, really bad at this game. Time to... Lose Your Head!'),
(125, 32, 'Fort Hagen.', 1, 'Ugh! Did you steal a copy of the answers? That\'s right.'),
(126, 32, 'Fort Lynn.', 0, 'Hah! There is no Fort Lynn in the Commonwealth. Lose Your Head!'),
(127, 32, 'Fort Strong.', 0, 'Good guess, but wrong. Now I guess you\'ll... Lose Your Head!'),
(128, 32, 'In yo\' mamma\'s house.', 0, 'Don\'t talk about my mother! It will be fun to watch you... Lose Your Head!'),
(129, 33, 'Lexington.', 0, 'The British aren\'t coming, but you\'re gonna... Lose Your Head!'),
(130, 33, 'Sanctuary.', 1, 'I hate it when you\'re right.'),
(131, 33, 'Concord.', 0, 'Wrong, wrong, wrong! Let\'s watch while you... Lose Your Head!'),
(132, 33, 'Beloit.', 0, 'Where the heck is that? I\'m going to enjoy this... Lose Your Head!'),
(133, 34, 'Marcy Long.', 0, 'Ha! As if. But we\'ll invite her to watch you... Lose Your Head!'),
(134, 34, 'Sturges.', 0, 'The grease monkey? Wrong! But you\'re going to... Lose Your Head!'),
(135, 34, 'Codsworth.', 1, 'Righto! That was too easy. We need better questions.'),
(136, 34, 'My aunt Tilly.', 0, 'You don\'t have an aunt Tilly. Just for that... Lose Your Head!'),
(137, 35, 'Red Rover.', 0, 'A good dog\'s name, but wrong. You\'ll have to... Lose Your Head!'),
(138, 35, 'Spot.', 0, 'Did you see Spot run? Not there you didn\'t. Lose Your Head!'),
(139, 35, 'Dogmeat.', 1, 'Right you are! We have a winner! Unfortunately...'),
(140, 35, 'The President.', 0, 'Where do you come up with these answers? Lose Your Head!'),
(141, 36, 'Thanksgiving.', 0, 'Just like Thanksgiving turkey, you\'re going to... Lose Your Head!'),
(142, 36, 'Halloween.', 1, 'You\'re right! Now THAT is terrifying.'),
(143, 36, 'Labor Day.', 0, 'Wrong. Now we are going to labor so you... Lose Your Head!'),
(144, 36, 'Shrove Tuesday.', 0, 'Is that even a real holiday? Nevermind. Just... Lose Your Head!'),
(145, 37, 'Connecticut.', 0, 'Just a hair too south. Speaking of hair... Lose Your Head!'),
(146, 37, 'Maine.', 1, 'Yes! Foggy, frosty and frightening Maine.'),
(147, 37, 'Rhode Island.', 0, 'No. Just no. We\'re going to do this real slow as you... Lose Your Head!'),
(148, 37, 'State of confusion.', 0, 'Ha ha ha ha ha! Almost as funny as when you... Lose Your Head!'),
(149, 38, 'Robot.', 0, 'Mensaje A para la respuesta correcta'),
(150, 38, 'Synth.', 1, 'Mensaje B para la respuesta correcta'),
(151, 38, 'Computer.', 0, 'Nah. He\'s a synth, you idiot. Which means you... Lose Your Head!'),
(152, 38, 'A deluxe hamburger.', 0, 'Wow. You have quite the imagination. But now you will... Lose Your Head!'),
(153, 39, 'The Nucleus.', 1, 'Aw! I hate it when they guess right. Go on. Get out of here.'),
(154, 39, 'Mount Desert Island Naval Facility.', 0, 'That\'s its pre-war name! Too bad you have to... Lose Your Head!'),
(155, 39, 'Acadia Federal Naval Base.', 0, 'Nope. Nein. Nyet. And now you\'ll... Lose Your Head!'),
(156, 39, 'Uh... Joe\'s Spuckies?', 0, 'Dang it. Now I\'m hungry. Just for that, you\'re going to... Lose Your Head!'),
(157, 40, 'She wanted to live a life of adventure.', 0, 'Right! No, wait, wrong! Totally wrong. Now you... Lose Your Head!'),
(158, 40, 'Her mother was cruel to her.', 0, 'Wrongo. But I\'m going to be cruel to you by making you... Lose Your Head!'),
(159, 40, 'She believed she was a synth.', 1, 'Winner, winner, molerat dinner!'),
(160, 40, 'Kasumi ran away? How horrible!', 0, 'Focus. That\'s not even an answer. So you\'ll have to... Lose Your Head!'),
(161, 41, 'Disciples.', 1, 'Right! I would also have accepted Operators or The Pack.'),
(162, 41, 'Operators.', 1, 'Right! I would also have accepted Disciples or The Pack.'),
(163, 41, 'The Pack.', 1, 'Right! I would also have accepted Disciples or Operators.'),
(164, 41, 'Scaredy Cats.', 0, 'Ha ha ha ha ha ha ha ha ha ha ha. Now... Lose Your Head!'),
(165, 42, 'Super Sledge.', 0, 'Good choice, but oh so wrong. So long, you\'re about to... Lose Your Head!'),
(166, 42, 'Fat Man.', 0, 'Nope. Overkill much? We\'re all going to watch as you... Lose Your Head!'),
(167, 42, 'Gatling Laser.', 0, 'Love that gun, but it won\'t do the trick. So now you... Lose Your Head!'),
(168, 42, 'Squirt Gun.', 1, 'Ridiculous, but right!'),
(169, 43, 'A Spaceship.', 1, 'Yes! Those idiots refuse to accept it\'s just a carnival ride.'),
(170, 43, 'A giant wheel.', 0, 'Nice try, but so very wrong. Time for you to... Lose Your Head!'),
(171, 43, 'More members.', 0, 'No! You lose, you loser. On top of that, you get to... Lose Your Head!'),
(172, 43, 'The perfect BLT.', 0, 'Brahmin, leeks and turnips? Yum! But wrong. Lose Your Head!'),
(173, 44, 'Nuka Fresh.', 1, 'Darn, that\'s right. Nuka-Cola is anything but fresh.'),
(174, 44, 'Nuka Sunrise.', 0, 'Wrong. You won\'t see another sunrise, because you\'re about to... Lose Your Head!'),
(175, 44, 'Nuka Buzz.', 0, 'Ha! I\'m drinking some now. Come on, you have to... Lose Your Head!'),
(176, 44, 'Nuka-Cola Quantum.', 0, 'Fool. That\'s a really common flavor. It\'s time to... Lose Your Head!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `ID` int(11) NOT NULL,
  `Question` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`ID`, `Question`) VALUES
(1, 'Who was the insane leader of the Republic of Dave?'),
(2, 'What was Rivet City before the war?'),
(3, 'Sarah Lyons is a member of what group?'),
(4, 'Who was trapped on the roof of Trinity Tower?'),
(5, 'Who is the most famous reporter in Diamond City?'),
(6, 'Who was the sheriff of Megaton?'),
(7, 'What deadly creature lurks in the Salem Museum of Witchcraft?'),
(8, 'Who is the DJ for Galaxy News Radio?'),
(9, 'What book was Moira trying to write?'),
(10, 'What was Moira\'s last name?'),
(11, 'What store does Moira send the Lone Wanderer to for food?'),
(12, 'Which of these did Moira not send the Lone Wanderer to?'),
(13, 'How did the Brotherhood of Steel arrive in the Commonwealth?'),
(14, 'What Brotherhood of Steel member took shelter in the Cambridge Police Station?'),
(15, 'Which advanced technology is used by many Brotherhood of Steel members?'),
(16, 'What were the Brotherhood of Steel seeking at Mass Fusion HQ?'),
(17, 'Who is the old psychic with the Minutemen?'),
(18, 'What military group occupied Project Purity before it could be activated?'),
(19, 'Who is the crazy mechanic in the Railroad?'),
(20, 'What eyesore did Allistair Tenpenny want gone?'),
(21, 'Who were the military mercenaries in the Capital Wasteland?'),
(22, 'What organization created Synths?'),
(23, 'What monument did Hannibal Hamlin want to restore?'),
(24, 'What was the name of the Super Mutant Behemoth hiding in the Boston Common pond?'),
(25, 'What famous statue lost its head in the Capital Wasteland?'),
(26, 'What little boy was trapped in a refrigerator in the Commonwealth?'),
(27, 'Super Mutants were created using...'),
(28, 'What group worships the Glow?'),
(29, 'The Children of Atom make their home in what region of the Commonwealth?'),
(30, 'Where was Lorenzo Cabot held prisoner?'),
(31, 'Which of the following is not a location in the Commonwealth?'),
(32, 'Where was Kellogg\'s headquarters?'),
(33, 'What is the settlement closest to Vault 111?'),
(34, 'Who trims the bushes in Sanctuary?'),
(35, 'Who is hanging around the Red Rocket near Sanctuary?'),
(36, 'The Great War started just before which holiday?'),
(37, 'The Far Harbor island is in what former state?'),
(38, 'What is DiMA?'),
(39, 'What is the name of the Children of Atom base on Far Harbor island?'),
(40, 'Why did Kasumi Nakano run away to Acadia?'),
(41, 'Name one of the Raider gangs in Nuka-World!'),
(42, 'What weapon is needed to defeat Colter?'),
(43, 'What are the Hubologists after?'),
(44, 'Which of these is not a flavor of Nuka-Cola?');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `possibleanswers`
--
ALTER TABLE `possibleanswers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `QuestionID` (`QuestionID`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `possibleanswers`
--
ALTER TABLE `possibleanswers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `possibleanswers`
--
ALTER TABLE `possibleanswers`
  ADD CONSTRAINT `possibleanswers_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `questions` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
