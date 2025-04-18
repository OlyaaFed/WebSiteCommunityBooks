USE [Library]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 17.04.2025 0:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 17.04.2025 0:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[author_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) NULL,
	[birth] [date] NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[author_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 17.04.2025 0:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[book_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[author_id] [int] NULL,
	[genre_id] [int] NULL,
	[publication_year] [int] NULL,
	[pages] [int] NULL,
	[imagepath] [varchar](100) NULL,
	[description] [varchar](max) NULL,
	[state] [varchar](50) NULL,
	[pathtofile] [varchar](max) NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bookshelf]    Script Date: 17.04.2025 0:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookshelf](
	[bookshelf] [int] IDENTITY(1,1) NOT NULL,
	[book_id] [int] NULL,
	[data_added] [date] NULL,
	[user_id] [int] NULL,
	[state] [varchar](50) NULL,
 CONSTRAINT [PK_Bookshelf] PRIMARY KEY CLUSTERED 
(
	[bookshelf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Friendship]    Script Date: 17.04.2025 0:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friendship](
	[friendship_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[friend_id] [int] NULL,
	[isAccepted] [bit] NULL,
 CONSTRAINT [PK_Friendship] PRIMARY KEY CLUSTERED 
(
	[friendship_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 17.04.2025 0:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[genre_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_genre] PRIMARY KEY CLUSTERED 
(
	[genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 17.04.2025 0:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[SenderId] [int] NOT NULL,
	[ReceiverId] [int] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 17.04.2025 0:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[review_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[book_id] [int] NULL,
	[rating] [int] NULL,
	[text] [varchar](max) NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 17.04.2025 0:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](30) NULL,
	[date] [date] NULL,
	[profileimagePath] [varchar](100) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (1, N'Толстой Лев Николаевич', CAST(N'1828-09-09' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (2, N'Пушкин Александр Сергеевич', CAST(N'1799-06-06' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (3, N'Достоевский Фёдор Михайлович', CAST(N'1821-11-11' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (4, N'Агата Кристи', CAST(N'1890-09-15' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (5, N'Булгаков Михаил Афанасьевич', CAST(N'1891-05-15' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (6, N'Джордж Оруэлл', CAST(N'1903-06-25' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (7, N'Маргарет Митчелл', CAST(N'1900-11-08' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (8, N'Дж. Р. Р. Толкин', CAST(N'1992-01-03' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (9, N'Дэниел Киз', CAST(N'1927-08-09' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (10, N'Дж. К. Роулинг', CAST(N'1965-07-31' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (11, N'Пауло Коэльо', CAST(N'1947-08-24' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (12, N'Теодор Драйзер', CAST(N'1871-08-27' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (13, N'Джейн Остин', CAST(N'1775-12-16' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (14, N'Осаму Тэдзука', CAST(N'1928-11-03' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (15, N'Хадзимэ Исаяма', CAST(N'1986-08-29' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (16, N'Масаси Кисимото', CAST(N'1974-11-08' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (17, N'Такахико Иноуэ', CAST(N'1967-01-12' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (18, N'Габриэль Гарсиа Маркес ', CAST(N'1927-03-06' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (19, N'Джек Лондон', CAST(N'1876-01-12' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (20, N'Рэй Брэдбери', CAST(N'1920-08-22' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (21, N'Эрнест Хемингуэй', CAST(N'1899-07-21' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (22, N'Антуан де Сент-Экзюпери', CAST(N'1900-05-29' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (23, N'Эйитиро Ода', CAST(N'1975-01-01' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (24, N'Суй Ишида', CAST(N'1986-12-28' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (25, N'Цугуми Оба', CAST(N'1969-08-12' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (26, N'Кэихиро Кодзиро', CAST(N'1986-11-20' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (27, N'Тайто Кубо', CAST(N'1977-06-26' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (28, N' Гэгэ Акутами', CAST(N'1970-01-01' AS Date))
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (29, N'Анна Джейн', NULL)
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (30, N'выа', NULL)
INSERT [dbo].[Author] ([author_id], [name], [birth]) VALUES (31, N'petr@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (1, N'Война и мир', 1, 1, 1869, 1274, N'images/VoinaAndMir.jpg', N'«Война и мир» Л. Н. Толстого — книга на все времена. Кажется, что она существовала всегда, настолько знакомым кажется текст, едва мы открываем первые страницы романа, настолько памятны многие его эпизоды: охота и святки, первый бал Наташи Ростовой, лунная ночь в Отрадном, князь Андрей в сражении при Аустерлице... Сцены «мирной», семейной жизни сменяются картинами, имеющими значение для хода всей мировой истории, но для Толстого они равноценны, связаны в едином потоке времени. Каждый эпизод важен не только для развития сюжета, но и как одно из бесчисленных проявлений жизни, которая насыщена в каждом своем моменте и которую учит любить Толстой.
', N'Без статуса', N'"C:\Users\Ольга\Desktop\CommunityBookLovers\book\voinamir.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (2, N'Евгений Онегин', 2, 1, 1833, 150, N'images/Onegin.jpg', N'"Евгений Онегин" (1823-1831) – одно из самых значительных произведений русской литературы.
Пронзительная любовная история, драматические повороты сюжета, тонкий психологизм персонажей, детальное описание быта и нравов той эпохи (не случайно Белинский назвал роман "энциклопедией русской жизни") – в этом произведении, как в зеркале, отразилась вся русская жизнь. "Евгений Онегин" никогда не утратит своей актуальности, и даже спустя два века мы поражаемся точности и верности "ума холодных наблюдений и сердца горестных замет" великого русского поэта.', N'Без статуса', N'C:\Users\Ольга\Desktop\CommunityBookLovers\book\белые ночи.pdf')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (3, N'Преступление и Наказание', 3, 1, 1866, 608, N'images/PD.jpg', N'Роман Федора Михайловича Достоевского "Преступление и наказание" был вдохновлен жизнью самого писателя: идея произведения зародилась, когда он отбывал наказание на каторге в Омске. Текст, начинавшийся как исповедь, превратился, по словам автора, в "психологический отчет одного преступления".
История студента Раскольникова, посвященная преступлению и раскаянию, трудному моральному выбору и поиску света даже в самые темные времена, стала одной из важнейших книг в мировой литературе и остается актуальной и по сей день.
"Мне другое надо было узнать, другое толкало меня под руки: мне надо было узнать тогда, и поскорей узнать, вошь ли я, как все или человек? Смогу ли я переступить или не смогу! Осмелюсь ли нагнуться и взять или нет? Тварь ли я дрожащая или право имею... "', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (4, N'Тринадцать загадочных случаев', 4, 5, 1932, 288, N'images/Tzs.jpg', N'Несколько милейших людей нашли для себя забаву: они собираются по вторникам у камина и рассказывают друг другу загадочные криминальные истории, случившиеся в недавнем прошлом.  В каждой такой истории - с лихвой жутких и таинственных подробностей.  Не хватает лишь одного: ответа на вопрос – а кто же убийца? Так почему же все эти леденящие душу загадки не были разгаданы  прежде? Может быть потому, что здесь, у камина, блистательная мисс Марпл слышит их впервые?', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (5, N'Белые ночи', 3, 1, 1848, 55, N'images/BN.jpg', N'Главный герой одинок — в Петербурге у него нет друзей и знакомых. Однажды на улице он встречает Настеньку — она горько плачет на берегу канала. Знакомство случается позже, когда Мечтатель спасает незнакомку от пьяного прохожего.', N'Без статуса', N'C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (6, N'Мастер и Маргарита', 5, 1, 1928, 480, N'images/MasterMar.jpg', N'В романе описывается история Мастера, который написал роман о Понтии Пилате, но столкнулся с миром столичной литературы, где отказы печатать произведение сопровождались травлей в прессе и предложениями ударить по «пилатчине». Не выдержав давления, Мастер сжёг рукопись в камине, после чего попал в дом скорби.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (7, N'Собачье сердце', 5, 6, 1925, 288, N'images/DogHeart.jpg', N'В декабре 1924 года Филипп Филиппович Преображенский подобрал на улице больного, умирающего от голода пса. Пёс оказался умным и преданным, единственным его недостатком была яростная ненависть к кошкам.

Профессор Преображенский занимался омолаживанием, пересаживая пациентам яичники обезьян. Пса он подобрал для особого эксперимента. Однажды профессор сделал очень сложную операцию: пересадил псу человеческие семенные железы и гипофиз. Пёс начал преображаться и постепенно превратился в человека — Полиграфа Полиграфовича Шарикова.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (8, N'Бедные люди', 3, 1, 1844, 256, N'images/PoorPeople.jpg', N'представляет собой переписку пожилого чиновника Макара Девушкина с сиротой Варенькой Доброселовой. Оба героя романа находятся в постоянной денежной нужде. Единственное их утешение в череде несчастий — письма друг другу.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (9, N'Идиот', 3, 1, 1867, 640, N'images/Idiot.jpg', N'молодой человек, князь Лев Николаевич Мышкин, возвращается в Петербург из Швейцарии, где лечился от тяжёлой нервной болезни. После нескольких лет почти затворнической жизни он попадает в эпицентр петербургского общества. Князь жалеет этих людей, видит, что они гибнут, пытается спасти, но, несмотря на все усилия, ничего не может изменить. В конечном итоге Мышкина доводят до потери рассудка те люди, которым он более всего пытался помочь.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (10, N'Капитанская дочка', 2, 6, 1836, 146, N'images/CapitanDaygh.jpg', N'«Капитанская дочка» — историческая повесть, основанная на реальных событиях крестьянского восстания под предводительством Емельяна Пугачёва в XVIII веке. Главный герой повести — Пётр Гринёв, молодой дворянин, который проходит службу в Оренбургской губернии. Повествование ведётся от первого лица, и через призму воспоминаний Гринёва раскрываются события восстания, а также личные переживания героя, его взаимоотношения с другими персонажами, такими как Маша Миронова (дочь капитана), Швабрин и сам Пугачёв. Основная тема произведения — честь, верность долгу и любовь.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (11, N'Белая гвардия', 5, 1, 1925, 400, N'images/Whitegv.jpg', N'Роман "Белая гвардия" Михаила Булгакова рассказывает о событиях Гражданской войны в России, происходящих в Киеве в 1918 году. Главные герои романа — это молодая семья Турбиных, которая оказывается в центре революционных событий. В условиях войны и революции герои сталкиваются с личными трагедиями, страданиями и идеологическими противоречиями. Основной темой произведения является борьба за выживание в условиях хаоса и разрушения. Роман отличается яркими психологическими портретами персонажей, а также глубоким философским подтекстом.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (12, N'Бег', 5, 1, 1929, 380, N'images/Run.jpg', N'Роман "Бег" Булгакова — это произведение, которое изображает события Гражданской войны в России. Действие происходит в 1919 году, когда несколько персонажей, бывших участников различных политических движений и военных конфликтов, оказываются в одной ситуации, пытаясь найти свой путь в условиях хаоса и разрушения, охвативших страну. В центре внимания — несколько ключевых персонажей, таких как князь, его жена, а также участники революции, империи и белой армии. Роман наполнен глубокими философскими размышлениями о судьбе России, ее народе и о том, что остается после бурных исторических изменений.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (13, N'Игрок', 3, 1, 1867, 378, N'images/player.jpg', N'"Игрок" — это один из романов Федора Достоевского, написанный в 1867 году, в период его пребывания за границей. В нем автор описывает жизнь русского интеллигента, затягивающегося в мировую зависимость от азартных игр. Главный герой, Алексей Иванович, молодой учитель, втягивается в азартную игру и ищет выход из своего морального кризиса, пытаясь избавиться от зависимости и обретя какой-то смысл в жизни. Это произведение о человеческих слабостях, страстях, духовных исканиях и тяжелой борьбе с собой.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (14, N'Десять Негритят', 4, 5, 1939, 256, N'images/10n.jpeg', N'"Десять негритят" (в некоторых изданиях книга носит название "И никого не стало") — это один из самых известных детективов Агаты Кристи, в котором десять незнакомцев оказываются приглашены на удалённый остров, где каждый из них оказывается под подозрением в совершении преступления. Все десять героев начинают погибать один за другим, и каждое убийство соответствует детской считалочке. Главный вопрос книги: кто из них убийца и кто следующий? Атмосфера напряжения и запутанный сюжет делают произведение классикой жанра.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (16, N'1984', 6, 2, 1949, 328, N'images/1984.jpg', N'История о мальчике по имени Гоку, который отправляется в путешествие для поиска драконьих шаров, чтобы исполнить любое желание. Он сталкивается с сильными врагами и становится одним из самых мощных воинов.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (17, N'Наруто', 16, 8, 1999, 345, N'images/naruto.jpeg', N'Манга рассказывает о Наруто Узумаки, юном ниндзя, который стремится стать сильнейшим воином и добиться признания. Он сталкивается с множеством врагов, но также обретает настоящих друзей.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (18, N'Токийский Гуль', 24, 3, 2011, 230, N'images/Gyl.jpg', N'История Канэки, который становится частичным существом-гулям после того, как он пережил нападение одного из этих монстров. Он вынужден приспособиться к новой жизни и разобраться, кто он теперь.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (19, N'Тетрадь смерть', 25, 13, 2003, 345, N'images/tetrad.jpg', N'Манга следит за гениальным школьником Лайтом Ягами, который находит таинственную тетрадь, дающую владельцу способность убивать людей, просто записав их имя. Его сражение с детективом по имени Л превращается в интеллектуальную дуэль.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (20, N'Моя Геройская Академия', 26, 7, 2014, 342, N'images/myhero.jpg', N'История о мальчике по имени Изуку Мидория, который рождается без суперсил в мире, где почти все люди имеют уникальные способности. Но его мечта стать героем не угасает, и он поступает в академию для обучения будущих героев.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (21, N'Маленький принц', 22, 17, 1943, 290, N'images/litleprince.jpg', N'История встречи лётчика с маленьким принцем, который путешествует между планетами, исследуя человеческие слабости и силу любви и дружбы.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (22, N'Старик и море', 21, 6, 1952, 190, N'images/starik.jpg', N'Простая, но глубокая история старого рыбака Сантьяго, борющегося с огромной рыбой в океане. Символизм и философия делают произведение вечной классикой.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (33, N'Гарри Поттер: Философский камень', 10, 2, 1997, 320, N'images/harrypotter.jpg', N'Первая книга знакомит читателя с Гарри, его удивительным открытием, что он волшебник, и началом обучения в Хогвартсе. Он узнаёт о Волдеморте и камне философов, способном даровать бессмертие.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (34, N'Гарри Поттер и Тайная комната', 10, 2, 1998, 341, N'images/taynayaroom.jpg', N'Во втором году в Хогвартсе Гарри сталкивается с загадочной серией нападений, превращающих учеников в камень. Он слышит странные голоса и узнаёт о Тайной комнате, легендарном месте, скрытом в Хогвартсе. Согласно преданию, только наследник Слизерина сможет открыть комнату и выпустить монстра. Гарри и его друзья выясняют, что монстр — это василиск, а комнату открывает Том Реддл (молодой Волдеморт), используя дневник. Гарри побеждает василиска с помощью меча Годрика Гриффиндора и уничтожает дневник, спасая школу.
', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (35, N'Гарри Поттер и Орден Феникса', 10, 2, 2003, 766, N'images/ordenfeniksa.jpg', N'Гарри сталкивается с недоверием магического сообщества, отказывающегося верить в возвращение Волдеморта. В Хогвартсе появляется новая преподавательница — Долорес Амбридж, назначенная Министерством магии. Её тиранические методы управления угнетают студентов и учителей. Гарри организует подпольную группу, чтобы обучать своих друзей защите от Тёмных искусств. Кульминацией становится битва в Министерстве магии, где погибает Сириус Блэк. Гарри узнаёт пророчество: только он может уничтожить Волдеморта.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (36, N'Гарри Поттер и Дары Смерти', 10, 2, 2007, 759, N'images/darismerti.jpg', N'Заключительная часть повествует о том, как Гарри, Рон и Гермиона покидают Хогвартс, чтобы уничтожить крестражи и окончательно победить Волдеморта. Они узнают о Дарах Смерти — трёх магических артефактах, способных сделать владельца всемогущим. После множества испытаний, включая предательство, смертельные битвы и потерю друзей, Гарри жертвует собой, чтобы уничтожить часть души Волдеморта внутри себя. Однако он выживает и в финальной битве уничтожает Волдеморта. Хогвартс восстанавливается, и мир магии обретает долгожданный мир.





', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (37, N'Сказки Барда Бидля', 10, 2, 2008, 109, N'images/skazki.jpg', N'"Сказки Барда Бидля" — это сборник волшебных сказок, созданный Джоан Роулинг в рамках вселенной Гарри Поттера. В книге представлены пять историй, каждая из которых сопровождается комментариями профессора Альбуса Дамблдора, поясняющими их значение для магического мира. Эти сказки занимают важное место в культуре волшебников и используются как источник мудрости и нравственных уроков.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (38, N'Гарри Поттер и Принц-полукровка', 10, 2, 2005, 607, N'images/princepolykrovka.jpg', N'В шестой книге Гарри изучает воспоминания о детстве и молодости Волдеморта, пытаясь понять, как его победить. Дамблдор делится секретом о крестражах — объектах, в которых Волдеморт спрятал части своей души. Гарри находит учебник зельеварения, принадлежащий "Принцу-полукровке", с улучшенными инструкциями и загадочными заметками. В финале Дамблдор умирает от руки Снегга, предателя, как считает Гарри. Это событие шокирует весь магический мир.
', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (39, N'Гарри Поттер и Кубок огня', 10, 2, 2000, 636, N'images/kybokfire.jpg', N'Гарри неожиданно становится участником Турнира Трёх Волшебников, соревнования между учениками трёх магических школ. Его ждут три сложных испытания: схватка с драконом, исследование подводного озера и лабиринт, наполненный ловушками. Финал турнира оборачивается трагедией: Кубок переносит Гарри и другого участника, Седрика Диггори, на кладбище, где Волдеморт возвращает себе физическую форму. Волдеморт убивает Седрика, но Гарри удаётся спастись, взяв тело друга. Это переломный момент: Волдеморт официально возвращается.', N'Без статуса', N'"C:\Users\admin\Desktop\CommunityBookLovers\book\белые ночи.pdf"')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (41, N'Восхитительная Ведьма', 29, 1, 2021, 583, N'images/vedmavosh.jpg', N'«Восхитительная ведьма» ближе знакомит нас со второстепенными персонажами дилогии #ЛюбовьНенависть и #НенавистьЛюбовь – Таней и Олегом. Читателя ждёт история любви, которая пробирается к сердцам героев окольными путями: через взаимную неприязнь, презрение и раздражение. Это конфликт в духе «Гордости и предубеждения»: высокомерный и строгий мистер Дарси смотрит на бойкую мисс Беннет сверху вниз, но в то же время не может не восхититься силой её духа. Современная же Элизабет поначалу тоже невысокого мнения о нём, но у неё есть свои причины добиваться его расположения.', N'Отличное', N'images/ВосхитительнаяВедьма.jpg')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (42, N'вы', NULL, 1, 2020, 222, N'выа', N'выава', N'отличное', N'а')
INSERT [dbo].[Books] ([book_id], [title], [author_id], [genre_id], [publication_year], [pages], [imagepath], [description], [state], [pathtofile]) VALUES (43, N'petr@gmail.com', NULL, 2, 2020, 222, N'petr@gmail.com', N'м', N'petr@gmail.com', N'м')
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Bookshelf] ON 

INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (8, 3, CAST(N'2024-12-01' AS Date), 1, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (9, 4, CAST(N'2024-12-01' AS Date), 1, N'Читаю')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (10, 5, CAST(N'2024-12-01' AS Date), 1, N'Хочу прочитать')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (11, 2, CAST(N'2024-12-01' AS Date), 2, N'Хочу прочитать')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (12, 1, CAST(N'2024-12-01' AS Date), 2, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (13, 3, CAST(N'2024-12-01' AS Date), 2, N'Читаю')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (14, 5, CAST(N'2024-12-02' AS Date), 2, N'Читаю')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (15, 14, CAST(N'2024-12-02' AS Date), 8, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (16, 12, CAST(N'2024-12-02' AS Date), 8, N'Хочу прочитать')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (17, 11, CAST(N'2024-12-02' AS Date), 8, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (18, 10, CAST(N'2024-12-02' AS Date), 3, N'Хочу прочитать')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (19, 11, CAST(N'2024-12-02' AS Date), 3, N'Читаю')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (20, 12, CAST(N'2024-12-02' AS Date), 3, N'Читаю')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (21, 14, CAST(N'2024-12-02' AS Date), 3, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (22, 14, CAST(N'2024-12-02' AS Date), 1, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (23, 8, CAST(N'2024-12-02' AS Date), 1, N'Хочу прочитать')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (24, 1, CAST(N'2024-12-02' AS Date), 11, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (25, 2, CAST(N'2024-12-02' AS Date), 11, N'Читаю')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (26, 13, CAST(N'2024-12-02' AS Date), 11, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (27, 14, CAST(N'2024-12-02' AS Date), 11, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (28, 39, CAST(N'2024-12-02' AS Date), 11, N'Читаю')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (29, 38, CAST(N'2024-12-02' AS Date), 11, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (30, 37, CAST(N'2024-12-02' AS Date), 11, N'Хочу прочитать')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (31, 36, CAST(N'2024-12-02' AS Date), 11, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (32, 21, CAST(N'2024-12-02' AS Date), 8, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (33, 1, CAST(N'2024-12-03' AS Date), 24, N'Читаю')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (35, 22, CAST(N'2024-12-06' AS Date), 1, N'Читаю')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (36, 18, CAST(N'2024-12-06' AS Date), 13, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (38, 21, CAST(N'2024-12-06' AS Date), 1, N'Читаю')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (39, 19, CAST(N'2024-12-06' AS Date), 13, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (40, 1, CAST(N'2024-12-06' AS Date), 13, N'Читаю')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (41, 1, CAST(N'2024-12-06' AS Date), 1, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (42, 11, CAST(N'2024-12-06' AS Date), 1, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (43, 7, CAST(N'2025-01-17' AS Date), 1, N'Читаю')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1044, 35, CAST(N'2025-03-26' AS Date), 1, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1045, 39, CAST(N'2025-03-26' AS Date), 1, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1046, 37, CAST(N'2025-03-26' AS Date), 1, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1048, 22, CAST(N'2025-03-28' AS Date), 26, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1049, 21, CAST(N'2025-03-28' AS Date), 26, N'Прочитал')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1050, 2, CAST(N'2025-04-11' AS Date), 56, N'прочитано')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1051, 5, CAST(N'2025-04-11' AS Date), 56, N'читаю')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1052, 1, CAST(N'2025-04-11' AS Date), 56, N'хочу прочитать')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1053, 4, CAST(N'2025-04-14' AS Date), 56, N'прочитано')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1054, 10, CAST(N'2025-04-14' AS Date), 56, N'прочитано')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1056, 8, CAST(N'2025-04-14' AS Date), 56, N'хочу прочитать')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1057, 16, CAST(N'2025-04-14' AS Date), 56, N'хочу прочитать')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1058, 33, CAST(N'2025-04-14' AS Date), 56, N'хочу прочитать')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1059, 35, CAST(N'2025-04-14' AS Date), 56, N'хочу прочитать')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1060, 41, CAST(N'2025-04-14' AS Date), 56, N'хочу прочитать')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1061, 38, CAST(N'2025-04-14' AS Date), 56, N'хочу прочитать')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1062, 20, CAST(N'2025-04-14' AS Date), 56, N'читаю')
INSERT [dbo].[Bookshelf] ([bookshelf], [book_id], [data_added], [user_id], [state]) VALUES (1063, 21, CAST(N'2025-04-14' AS Date), 56, N'хочу прочитать')
SET IDENTITY_INSERT [dbo].[Bookshelf] OFF
GO
SET IDENTITY_INSERT [dbo].[Friendship] ON 

INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (26, 3, 1, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (33, 8, 1, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (35, 8, 3, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (39, 6, 3, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (40, 6, 8, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (41, 7, 3, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (45, 2, 3, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (46, 2, 8, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (47, 2, 7, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (49, 4, 1, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (50, 4, 3, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (51, 4, 8, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (52, 1, 6, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (54, 1, 4, 0)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (56, 9, 3, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (58, 9, 4, 0)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (62, 7, 9, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (63, 6, 7, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (64, 6, 2, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (66, 9, 2, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (69, 8, 11, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (70, 11, 9, 0)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (71, 1, 14, 0)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (72, 1, 24, 1)
INSERT [dbo].[Friendship] ([friendship_id], [user_id], [friend_id], [isAccepted]) VALUES (73, 1, 22, 1)
SET IDENTITY_INSERT [dbo].[Friendship] OFF
GO
SET IDENTITY_INSERT [dbo].[Genre] ON 

INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (1, N'Роман')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (2, N'Фантастика')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (3, N'Ужасы')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (4, N'Романтика')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (5, N'Детектив')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (6, N'Повесть')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (7, N'Экшен')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (8, N'Приключения')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (9, N'Комедия')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (10, N'Исекай')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (11, N'Романтика')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (12, N'Научная фантастика')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (13, N'Триллер')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (14, N'Историческая проза')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (15, N'Биография')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (16, N'Саморазвитие')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (17, N'Философия')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (18, N'Поэзия')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (19, N'Энциклопеди')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (20, N'Исторические исследовани')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (21, N'Кулинария')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (22, N'Путеводители')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (23, N'Антиутопия')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (24, N'Готика')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (25, N'Шпионский роман')
INSERT [dbo].[Genre] ([genre_id], [name]) VALUES (26, N'Эпическая Литература')
SET IDENTITY_INSERT [dbo].[Genre] OFF
GO
SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (1, 1, 1, 5, N'"Война и мир" — это невероятная эпопея, которая охватывает не только войну 1812 года, но и жизнь целого поколения. Лев Толстой мастерски описывает глубокие чувства, мысли и судьбы героев, таких как Пьер Безухов, Андрей Болконский и Наташа Ростова. Книга затрагивает вечные темы любви, чести, поиска смысла жизни и человеческой природы.

Хотя текст может показаться сложным из-за большого числа персонажей и описательных сцен, он полностью окупается мощью эмоционального воздействия. Это произведение остается актуальным и сегодня, вдохновляя читателей размышлять о своей жизни и мире вокруг."', CAST(N'2024-12-01' AS Date))
INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (2, 2, 2, 5, N'Евгений Онегин — это одно из самых известных произведений Александра Пушкина, являющееся не только литературным шедевром, но и ярким отражением российской аристократии начала XIX века. В этом романе в стихах Пушкин мастерски сочетает драму, философию и социальные наблюдения, создавая произведение, которое продолжает волновать читателей и по сей день.

Главный герой, Евгений Онегин, — человек, разочаровавшийся в жизни, потерявший цель и смысл. Его внутренние переживания, конфликты с обществом, любовь и разочарования — всё это раскрывается на фоне русской провинциальной жизни. Онегин, с его холодным рационализмом, становится идеалом поколений, в которых мы видим не только скуку и одиночество, но и неосознанную тоску по чему-то большему.

Особое внимание стоит уделить роману Татьяны Лариной, которая стала символом искренней, глубококой любви. Её чувства к Онегину, который, в конце концов, осознаёт свои ошибки и сожаления, заслуживают отдельного восхищения.

"Евгений Онегин" — это произведение, которое можно перечитывать бесконечно, и каждый раз находить в нем что-то новое. Это не только трагедия любви, но и история о том, как человек должен осознавать свои поступки, перед тем как потерять всё, что могло бы сделать его счастливым.

', CAST(N'2024-12-01' AS Date))
INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (3, 2, 2, 5, N'Классная книга', CAST(N'2024-12-02' AS Date))
INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (4, 5, 6, 5, N'«Мастер и Маргарита» — один из самых известных и загадочных романов XX века. Это произведение сочетает в себе элементы мистики, философии и сатиры. Роман рассказывает историю о встрече Воланда, мистического персонажа, с Москвой 1930-х годов, и о любви Мастера и Маргариты, которые пытаются сохранить свои чувства в условиях жестоких обстоятельств.

Роман вызывает множество интерпретаций. Некоторые видят в нем критику советской власти и общества, другие — глубокие философские размышления о добре и зле, судьбе и свободе воли. Литературные критики также часто отмечают сложность структуры и символику, которой наполнены все события, персонажи и диалоги. Булгаков использует различные стилистические приемы, включая элементы театральности, и его произведение продолжает быть актуальным и востребованным.', CAST(N'2024-12-02' AS Date))
INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (5, 8, 11, 5, N'«Белая гвардия» — произведение, которое раскрывает жизнь интеллигенции в годы Гражданской войны в России. Оно освещает судьбы главных героев, Тараса и Елены, которые оказываются перед выбором: продолжать борьбу с революционными силами или поддаться новому миру.

Булгаков, как и в «Мастере и Маргарите», использует глубокий символизм, анализируя важные аспекты человеческой жизни: веру, любовь и долг. В произведении часто прослеживаются идеи борьбы и разрухи, а также вопросы, касающиеся судьбы и гибели «старой» России. Через этих персонажей Булгаков обращается к исторической и социальной проблематике, затрагивая важнейшие темы для своего времени.', CAST(N'2024-12-02' AS Date))
INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (6, 10, 14, 5, N'«Десять негритят» (или «И никого не стало») — это классический детективный роман, в котором 10 человек, каждый с темным секретом, оказываются запертыми на удаленном острове. Постепенно они начинают умирать один за другим в загадочных обстоятельствах, и каждый новый убийца кажется следствием неразгаданной тайны.

Роман восхищает своим напряжением и искусной игрой с читательским ожиданием. Кристи мастерски построила сюжет, который не только вовлекает в разгадывание убийств, но и заставляет задуматься о морали, ответственности и человеческих пороках. Это произведение стало знаковым в истории детективного жанра, и оно сохраняет популярность на протяжении десятилетий благодаря своей интригующей структуре и неожиданным поворотам.', CAST(N'2024-12-02' AS Date))
INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (7, 1, 10, 5, N'пппппп', CAST(N'2024-12-02' AS Date))
INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (8, 1, 4, 4, N'вапвапвапвап', CAST(N'2024-12-02' AS Date))
INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (9, 8, 21, 5, N'"Маленький принц" — это необыкновенная книга, которая захватывает с первых страниц и остается в памяти на всю жизнь. С внешней стороны — это сказка о путешествиях маленького мальчика с другой планеты, который встречает различных персонажей на Земле. Но на самом деле эта книга — глубокая философская притча, раскрывающая важные темы о любви, дружбе, ответственности и поиске смысла жизни.

Особенно трогает история о розе, которую Маленький принц оставил на своей планете. В её образе мы видим символ личной привязанности и заботы, которая важна для каждого из нас. Очень важно, что книга учит нас видеть "главное глазами сердца", потому что именно сердце, а не разум, помогает нам разглядеть истинную ценность вещей.', CAST(N'2024-12-02' AS Date))
INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (10, 15, 14, 5, N'одобряю', CAST(N'2024-12-02' AS Date))
INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (11, 9, 7, 5, N'понравилось до боли в сердце', CAST(N'2024-12-02' AS Date))
INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (12, 9, 3, 5, N'отвал бошки. 5 из 5. пустил слезу', CAST(N'2024-12-02' AS Date))
INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (13, 1, 3, 5, N'5/5', CAST(N'2024-12-06' AS Date))
INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (14, 22, 8, 4, N'хорошая книга', CAST(N'2024-12-06' AS Date))
INSERT [dbo].[Review] ([review_id], [user_id], [book_id], [rating], [text], [date]) VALUES (15, 26, 20, 5, N'очень интересная манга, захватывающий сюжет. Советую.', CAST(N'2025-03-28' AS Date))
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (1, N'Федяева Ольга', N'olgafedyaeva29@gmail.com', N'qwerty123', CAST(N'2006-11-16' AS Date), N'photouser/8.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (2, N'Чулкова Дарья', N'dariachulkova@gmail.com', N'asdfg2000', CAST(N'2006-11-06' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (3, N'Смирнов Тимофей', N'timofeismirnov@gmail.com', N'zxcvb12', CAST(N'2024-11-28' AS Date), N'photouser/5.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (4, N'Смирнов Ярослав', N'smirnovyaroslav@gmail.com', N'zxc12', CAST(N'2024-11-28' AS Date), N'photouser/4.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (5, N'Головня Дарья', N'golovnyadarya@gmail.com', N'ujl;jcfnjhe', CAST(N'2024-11-28' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (6, N'Ахметжанов Александр', N'ahmetjanovalexander@gmail.com', N'f[vtn;fyjd', CAST(N'2024-11-28' AS Date), N'photouser/11.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (7, N'Смородин Игорь', N'smorodinigor@mail.ru', N'cvjhjlby12', CAST(N'2024-11-28' AS Date), N'photouser/13.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (8, N'Баврина Полина', N'bavrinapolinka@yandex.ru', N'gjkbyf12', CAST(N'2024-11-28' AS Date), N'photouser/баврина.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (9, N'Рожков Владимир', N'rojkovVladimir@gmail.com', N'hj;rjd78', CAST(N'2024-11-28' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (10, N'Хренова Елизавета', N'hrenovaliza@gmail.com', N'ceuehe', CAST(N'2024-11-29' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (11, N'Щедрина Дарья', N'Shedrina@gmail.com', N'otlhbyf', CAST(N'2024-12-02' AS Date), N'photouser/щедрина.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (12, N'Волков Александр', N'volkovalexander@mail.ru', N'djkrjd', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (13, N'Годжо Сатору', N'gojo@gmail.com', N'cfnjhbrb', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (14, N'Перов Иван', N'perov@gmail.com', N'gthjd', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (15, N'Панфилов Александр', N'panfilov@gmail.com', N'gfyabkjdfktr', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (16, N'Магомедов Мурад', N'magomedov@mail.ru', N'vfuf228', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (17, N'Худов Павел', N'hydov228@gmail.com', N'juj778', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (18, N'Кашин Даня', N'kashindanya@gmail.com', N'ctrcb,jq', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (19, N'Тесникова Виктория', N'tesnikova@gmail.com', N't,fkf[bhjvb', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (20, N'Иванов Глеб', N'Hleb@gmail.com', N'ljnfrhenj', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (21, N'Петрова Юлия', N'julia@yandex.ru', N'ytj,vfnthbkbehf', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (22, N'Хасанов Абдурасул', N'khasanovabdula@gmail.com', N'vehfcek', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (23, N'Безиков Илья', N'bezikov@gmail.com', N'rjivfh', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (24, N'Соловьёв Владимир', N'solovev@yandex.ru', N'cjkjdtq', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (25, N'Вишнякова Юлия', N'juuli@gmail.com', N'.kmrf', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (26, N'Егор Крид', N'kreed@gmail.com', N'rhbl', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (27, N'Мухамед Владимир', N'myhamed@gmail.com', N've[fvtl', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (28, N'Путин Владимир', N'putin@gmail.com', N'genby', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (29, N'Чучев Виктор', N'chychev@gmail.com', N'xextd', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (30, N'Кондратюк Макар', N'makar@gmail.com', N'vfrfh', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (31, N'Андрианова Амира', N'andrianova@gmail.com', N'fylhbfyjdf', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (32, N'Панина Анна', N'panina@gmail.com', N'gfybyf', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (33, N'Румянцева Полина', N'rymyanceva@gmail.com', N'hev', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (34, N'Зайцев Алексей', N'zaycev@gmail.com', N'pfqwtd', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (35, N'Беляев Антон', N'belyaev@gmail.com', N'gbpltw', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (36, N'Попова Евгения', N'evgenia@gmail.com', N'gjgjdf', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (37, N'Лазарев Сергей', N'lazarev@gmail.com', N'kfpfhtd', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (38, N'Лебедева Анна', N'lebedev@gmail.com', N'1246', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (39, N'Нахалова Анна', N'nahalova@gmail.com', N'yf[fk', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (40, N'Устинов Матвей', N'ystin@gmail.com', N'ecnby', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (41, N'Леонтьева Александра', N'leon@gmail.com', N'ktjy', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (42, N'Федев Сергей', N'fedyaev@gmail.com', N'cthtuf', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (43, N'Горшкова Елизавета', N'gorshkova@gmail.com', N'gjyzkf', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (44, N'Горошко Сергей', N'goroh@gmail.com', N'ehfujhj[', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (45, N'Черникова Елизавета', N'strawberry@gmail.com', N'xthybrf', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (46, N'Кузнецова Светлана', N'kyznec@gmail.com', N'repytw', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (47, N'Лавров Максим', N'ogyzok@gmail.com', N'juepjr', CAST(N'2024-12-02' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (49, N'Федяев Антон', N'qwenix@gmail.com', N'zxc45', CAST(N'2024-12-04' AS Date), N'photouser/22.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (50, N'olga ', N'olgafed@gmail.com', N'olga', CAST(N'2024-12-06' AS Date), NULL)
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (51, N'Панин Владимир', NULL, NULL, CAST(N'2024-12-10' AS Date), NULL)
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (52, N'Alice', N'alice@example.com', N'password123', CAST(N'2024-01-01' AS Date), N'path/to/profile1.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (53, N'Alice', N'alic@example.com', N'password123', CAST(N'2024-01-01' AS Date), N'path/to/profile1.jpg')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (54, N'Alex', N'alice@example.com', N'd123', CAST(N'2024-01-01' AS Date), N'C:\Users\admin\Desktop\CommunityBookLovers\book')
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (55, N'мухехе', N'myhehe@gmail.com', N'myhehe', NULL, NULL)
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (56, N'Петр', N'petr@gmail.com', N'petr@gmail.com', NULL, NULL)
INSERT [dbo].[User] ([user_id], [name], [email], [password], [date], [profileimagePath]) VALUES (57, N'petr@gmail.com', N'petr@gmail.com', N'petr@gmail.com', NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Author] FOREIGN KEY([author_id])
REFERENCES [dbo].[Author] ([author_id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Author]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Genre] FOREIGN KEY([genre_id])
REFERENCES [dbo].[Genre] ([genre_id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Genre]
GO
ALTER TABLE [dbo].[Bookshelf]  WITH CHECK ADD  CONSTRAINT [FK_Bookshelf_Books] FOREIGN KEY([book_id])
REFERENCES [dbo].[Books] ([book_id])
GO
ALTER TABLE [dbo].[Bookshelf] CHECK CONSTRAINT [FK_Bookshelf_Books]
GO
ALTER TABLE [dbo].[Bookshelf]  WITH CHECK ADD  CONSTRAINT [FK_Bookshelf_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Bookshelf] CHECK CONSTRAINT [FK_Bookshelf_User]
GO
ALTER TABLE [dbo].[Friendship]  WITH CHECK ADD  CONSTRAINT [FK_Friendship_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Friendship] CHECK CONSTRAINT [FK_Friendship_User]
GO
ALTER TABLE [dbo].[Friendship]  WITH CHECK ADD  CONSTRAINT [FK_Friendship_User1] FOREIGN KEY([friend_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Friendship] CHECK CONSTRAINT [FK_Friendship_User1]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Receiver] FOREIGN KEY([ReceiverId])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Receiver]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Sender] FOREIGN KEY([SenderId])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Sender]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Books] FOREIGN KEY([book_id])
REFERENCES [dbo].[Books] ([book_id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Books]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_User]
GO
