import 'package:popcorn/models/Content.dart';

class MockData {
  static var movieslandscape = [
    ['assets/movies/landscape/aotland.jpg', 'Attack on titan'],
    ['assets/movies/landscape/demonslayerland.jpeg', 'Demon slayer'],
    ['assets/movies/landscape/inceptionland.jpg', 'Inception'],
    ['assets/movies/landscape/silentvoiceland.jpg', 'A silent voice'],
    ['assets/movies/landscape/yournameland.jpg', 'Your Name']
  ];
  static var moviesportrait = [
    ['assets/movies/portrait/attackontitan.jpg', 'Attack on Titan'],
    ['assets/movies/portrait/demonslayer.jpg', 'Demon slayer'],
    ['assets/movies/portrait/godofhighschool.jpg', 'God of HighSchool'],
    ['assets/movies/portrait/silentvoice.jpg', 'A silent voice'],
    ['assets/movies/portrait/yourname.jpg', 'Your Name']
  ];
}

final List<Content> landscapeContents = [
  Content(
    posterUrl: 'assets/movies/landscape/aotland.jpg',
    title: 'Attack on Titan',
    tags: 'Action, Military, Mystery, Super Power, Drama, Fantasy, Shounen',
    duration: 24,
    type: 'Anime Series',
    year: 2013,
    description:
        'Centuries ago, mankind was slaughtered to near extinction by monstrous humanoid creatures called titans, forcing humans to hide in fear behind enormous concentric walls. What makes these giants truly terrifying is that their taste for human flesh is not born out of hunger but what appears to be out of pleasure. To ensure their survival, the remnants of humanity began living within defensive barriers, resulting in one hundred years without a single titan encounter. However, that fragile calm is soon shattered when a colossal titan manages to breach the supposedly impregnable outer wall, reigniting the fight for survival against the man-eating abominations.',
    screenshots: [
      'assets/movies/screenShots/aotss1.jpg',
      'assets/movies/screenShots/aotss2.jpeg',
      'assets/movies/screenShots/aotss3.jpeg',
      'assets/movies/screenShots/aotss4.jpeg',
    ],
  ),
  Content(
    posterUrl: 'assets/movies/landscape/demonslayerland.jpeg',
    title: 'Demon Slayer',
    tags: 'Action, Historical, Demons, Supernatural, Shounen',
    duration: 117,
    type: 'Anime Movie',
    year: 2020,
    description:
        'After a string of mysterious disappearances begin to plague a train, the Demon Slayer Corps\' multiple attempts to remedy the problem prove fruitless. To prevent further casualties, the flame pillar, Kyoujurou Rengoku, takes it upon himself to eliminate the threat. Accompanying him are some of the Corps\' most promising new blood: Tanjirou Kamado, Zenitsu Agatsuma, and Inosuke Hashibira, who all hope to witness the fiery feats of this model demon slayer firsthand.',
    screenshots: [
      'assets/movies/screenShots/demonslayerss1.jpg',
      'assets/movies/screenShots/demonslayerss2.jpg',
      'assets/movies/screenShots/demonslayerss3.jpg',
      'assets/movies/screenShots/demonslayerss4.jpg',
    ],
  ),
  Content(
    posterUrl: 'assets/movies/landscape/inceptionland.jpg',
    title: 'Inception',
    tags: 'Action, Adventure, Sci-Fi',
    duration: 148,
    type: 'Movie',
    year: 2010,
    description:
        'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',
    screenshots: [
      'assets/movies/screenShots/inceptionss1.jpg',
      'assets/movies/screenShots/inceptionss2.jpeg',
      'assets/movies/screenShots/inceptionss3.jpeg',
      'assets/movies/screenShots/inceptionss4.jpeg',
    ],
  ),
  Content(
    posterUrl: 'assets/movies/landscape/silentvoiceland.jpg',
    title: 'A silent voice',
    tags: 'Drama, School, Shounen',
    duration: 130,
    type: 'Anime Movie',
    year: 2016,
    description:
        'As a wild youth, elementary school student Shouya Ishida sought to beat boredom in the cruelest ways. When the deaf Shouko Nishimiya transfers into his class, Shouya and the rest of his class thoughtlessly bully her for fun. However, when her mother notifies the school, he is singled out and blamed for everything done to her. With Shouko transferring out of the school, Shouya is left at the mercy of his classmates. He is heartlessly ostracized all throughout elementary and middle school, while teachers turn a blind eye.',
    screenshots: [
      'assets/movies/screenShots/silentss1.jpg',
      'assets/movies/screenShots/silentss2.jpg',
      'assets/movies/screenShots/silentss3.jpg',
      'assets/movies/screenShots/silentss4.jpeg',
    ],
  ),
  Content(
    posterUrl: 'assets/movies/landscape/yournameland.jpg',
    title: 'Your Name',
    tags: 'Romance, Supernatural, School, Drama',
    duration: 106,
    type: 'Anime Movie',
    year: 2016,
    description:
        'Mitsuha Miyamizu, a high school girl, yearns to live the life of a boy in the bustling city of Tokyo—a dream that stands in stark contrast to her present life in the countryside. Meanwhile in the city, Taki Tachibana lives a busy life as a high school student while juggling his part-time job and hopes for a future in architecture.\n\nOne day, Mitsuha awakens in a room that is not her own and suddenly finds herself living the dream life in Tokyo—but in Taki\'s body! Elsewhere, Taki finds himself living Mitsuha\'s life in the humble countryside. In pursuit of an answer to this strange phenomenon, they begin to search for one another.',
    screenshots: [
      'assets/movies/screenShots/yournamess1.jpg',
      'assets/movies/screenShots/yournamess2.jpg',
      'assets/movies/screenShots/yournamess3.jpeg',
      'assets/movies/screenShots/yournamess4.jpeg',
    ],
  ),
];
