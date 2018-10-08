-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2018 at 07:53 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techyblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(12) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '123456789', 'first post', '2018-10-02 03:05:06', 'firstpost@gmail.com'),
(3, 'name', '435678956', 'Hi my name is my name your name is your name', '2018-10-02 08:56:34', 'name@gmail.com'),
(4, 'name1', '7865 678908', 'hi your blog is amazing', '2018-10-02 08:59:02', 'mynameis@gmail.com'),
(5, 'name1', '7865 678908', 'hi your blog is amazing', '2018-10-02 10:16:56', 'mynameis@gmail.com'),
(6, 'dfdf', '4776667577', 'hi', '2018-10-03 01:42:29', 'dfdf@gmail.com'),
(7, 'laksh', '8769807634', 'hi nice blog you are awesome\r\n', '2018-10-03 02:41:57', 'myname@gmail.com'),
(8, 'hi', '75675444858', 'hiiiiiiii', '2018-10-08 01:14:31', 'hahahah');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `tagline` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `slug`, `content`, `tagline`, `img_file`, `date`) VALUES
(1, 'Let\'s Learn about python flask.', 'first-post', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. However, Flask supports extensions that can add application features as if they were implemented in Flask itself. Extensions exist for object-relational mappers, form validation, upload handling, various open authentication technologies and several common framework related tools. Extensions are updated far more regularly than the core Flask program.[4] Flask is commonly used with MongoDB which allows it more control over databases and history. ', 'Nice Post Read it', 'about-bg.jpg', '2018-10-07 08:12:26'),
(2, 'What is Python Programming Language?', 'second-post', 'Python is an interpreted high-level programming language for general-purpose programming. Created by Guido van Rossum and first released in 1991, Python has a design philosophy that emphasizes code readability, notably using significant whitespace. It provides constructs that enable clear programming on both small and large scales.[27] In July 2018, Van Rossum stepped down as the leader in the language community after 30 years.[28][29]\r\n\r\nPython features a dynamic type system and automatic memory management. It supports multiple programming paradigms, including object-oriented, imperative, functional and procedural, and has a large and comprehensive standard library.[30]\r\n\r\nPython interpreters are available for many operating systems. CPython, the reference implementation of Python, is open source software[31] and has a community-based development model, as do nearly all of Python\'s other implementations. Python and CPython are managed by the non-profit Python Software Foundation. ', 'Coolest post see', 'home-bg.jpg', '2018-10-03 11:47:34'),
(3, 'C (Programming Language)', 'third-post', 'The C programming language is a computer programming language that was developed to do system programming for the operating system UNIX and is an imperative programming language. C was developed in the early 1970s by Ken Thompson and Dennis Ritchie at Bell Labs. It is a procedural language, which means that people can write their programs as a series of step-by-step instructions. C is a compiled language.\r\n\r\nBecause the ideas behind C are kept close to the design of the computer, the compiler (program builder) can generate machine code/native code for the computer. Programs built in machine code are very fast. This makes C a good language for writing operating systems. Many operating systems, including Linux and UNIX, are programmed using this language. The language itself has very few keywords, and most things are done using libraries, which are collections of code for them to be reused.\r\n\r\nC is available for many different types of computers. This is why C is called a \"portable\" language. A program that is written in C and that respects certain limitations can be compiled for many different platforms.\r\n\r\nThe syntax of C has also influenced many other programming languages, such as C++, C#, and Java, and many more programming languages we use nowadays. ', 'Learn About C (Programming Language)', '', '2018-10-03 12:30:53'),
(4, 'C++ Programming Language', 'fourth-post', '	\r\nC++Paradigm	Multi-paradigm:[1] procedural, functional, object-oriented, generic\r\nDesigned by	Bjarne Stroustrup\r\nDeveloper	Bjarne Stroustrup\r\nBell Labs\r\nISO/IEC JTC1/SC22/WG21\r\nFirst appeared	1983\r\nStable release	ISO/IEC 14882:2017 / 1 December 2017; 9 months ago\r\nTyping discipline	Static, unsafe, nominative\r\nOS	Cross-platform (multi-platform)\r\nFilename extensions	.h .hh .hpp .hxx .h++ .cc .cpp .cxx .c++\r\nWebsite	isocpp.org/,%20http://www.open-std.org/jtc1/sc22/wg21/\r\nMajor implementations\r\nC++ Builder, clang, Comeau C/C++, GCC, Intel C++ Compiler, Microsoft Visual C++, Sun Studio\r\nDialects\r\nISO/IEC C++ 1998, ISO/IEC C++ 2003, ISO/IEC C++ 2011, ISO/IEC C++ 2014, ISO/IEC C++ 2017,\r\nInfluenced by\r\nC, Simula, Ada 83, ALGOL 68, CLU, ML[1]\r\nInfluenced\r\nPerl, LPC, Lua, Pike, Ada 95, Java, PHP, D, C99, C#, Falcon\r\n\r\n    C++ Programming at Wikibooks\r\n\r\nBjarne Stroustrup, the creator of C++\r\n\r\nC++ (pronounced \"see plus plus\") is a computer programming language based on C. It was created for writing programs for many different purposes. In the 1990s, C++ became one of the most used programming languages in the world.\r\n\r\nThe C++ programming language was developed by Bjarne Stroustrup at Bell Labs in the 1980s, and was originally named \"C with classes\". The language was planned as an improvement on the C programming language, adding features based on object-oriented programming. Step by step, a lot of advanced features were added to the language, like operator overloading, exception handling and templates. ', 'See Why C++ (Programming Language) is created', '', '2018-10-03 12:33:28'),
(5, 'What is AI? Why it is used?', 'ai-post', 'Artificial intelligence\r\n\r\nArtificial intelligence (AI) is the ability of a computer program or a machine to think and learn. It is also a field of study which tries to make computers \"smart\". John McCarthy came up with the name \"artificial intelligence\" in 1955.\r\n\r\nIn general use, the term \"artificial intelligence\" means a machine which mimics human cognition. At least some of the things we associate with other minds, such as learning and problem solving can be done by computers, though not in the same way as we do.[1]\r\n\r\nAn ideal (perfect) intelligent machine is a flexible agent which perceives its environment and takes actions to maximize its chance of success at some goal.[2] As machines become increasingly capable, mental facilities once thought to require intelligence are removed from the definition. For example, optical character recognition is no longer perceived as an exemplar of \"artificial intelligence\": it is just a routine technology.\r\n\r\nAt present we use the term AI for successfully understanding human speech,[1] competing at a high level in strategic game systems (such as Chess and Go), self-driving cars, and interpreting complex data.[3] Some people also consider AI a danger to humanity if it progresses unabatedly.[4]\r\n\r\nAn extreme goal of AI research is to create computer programs that can learn, solve problems, and think logically.[5][6] In practice, however, most applications have picked on problems which computers can do well. Searching data bases and doing calculations are things computers do better than people. On the other hand, \"perceiving its environment\" in any real sense is way beyond present-day computing.\r\n\r\nAI involves many different fields like computer science, mathematics, linguistics, psychology, neuroscience, and philosophy. Eventually researchers hope to create a \"general artificial intelligence\" which can solve many problems instead of focusing on just one. Researchers are also trying to create creative and emotional AI which can possibly empathize or create art. Many approaches and tools have been tried.\r\n\r\n\r\n\r\n\r\nHistory\r\n\r\nThe first appearance of artificial intelligence is in Greek myths, like Talos of Crete or the bronze robot of Hephaestus. Humanoid robots were built by Yan Shi, Hero of Alexandria, and Al-Jazari. Sentient machines became popular in fiction during the 19th and 20th centuries with the stories of Frankenstein and Rossum\'s Universal Robots.\r\n\r\nFormal logic was developed by ancient Greek philosophers and mathematicians. This study of logic produced the idea of a computer in the 19th and 20th century. Mathematician Alan Turing\'s theory of computation said that any mathematical problem could be solved by processing 1\'s and 0\'s. Advances in neurology, information theory, and cybernetics convinced a small group of researchers that an electronic brain was possible.\r\n\r\nAI research really started with a conference at Dartmouth College in 1956. It was a month long brainstorming session attended by many people with interests in AI. At the conference they wrote programs that were amazing at the time, beating people at checkers or solving word problems. The Department of Defense started giving a lot of money to AI research and labs were created all over the world.\r\n\r\nUnfortunately, researchers really underestimated just how hard some problems were. The tools they had used still did not give computers things like emotions or common sense. Mathematician James Lighthill wrote a report on AI saying that \"in no part of the field have discoveries made so far produced the major impact that was then promised\".[7] The U.S and British governments wanted to fund more productive projects. Funding for AI research was cut, starting an \"AI winter\" where little research was done.\r\n\r\nAI research revived in the 1980s because of the popularity of expert systems, which simulated the knowledge of a human expert. By 1985, 1 billion dollars were spent on AI. New, faster computers convinced U.S and British governments to start funding AI research again. However, the market for Lisp machines collapsed in 1987 and funding was pulled again, starting an even longer AI winter.\r\n\r\nAI revived again in the 90s and early 2000s with its use in data mining and medical diagnosis. This was possible because of faster computers and focusing on solving more specific problems. In 1997, Deep Blue became the first computer program to beat chess world champion Garry Kasparov. Faster computers, advances in deep learning, and access to more data have made AI popular throughout the world. In 2011 IBM Watson beat the top two Jeopardy! players Brad Rutter and Ken Jennings, and in 2016 Google\'s AlphaGo beat top Go player Lee Sedol 4 out of 5 times. ', 'Let\'s Get Knowledge About AI.', 'ai-img.jpg', '2018-10-08 02:13:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
