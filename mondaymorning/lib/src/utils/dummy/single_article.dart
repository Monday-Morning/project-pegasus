

import 'package:mondaymorning/src/models/article/article.dart';
import 'package:mondaymorning/src/models/article/content.dart';
import 'package:mondaymorning/src/models/issues/authors.dart';
import 'package:mondaymorning/src/models/issues/categories.dart';
import 'package:mondaymorning/src/models/media/covermedia.dart';
import 'package:mondaymorning/src/models/media/media.dart';

class SingleArticleDummy{
  static final article = Article(
      id: "629dbc741acb2c3831ab427f",
      title: "Flourishing with Community: MLH Fellowships",
      inshort: "Monday Morning recently caught up with past and upcoming season MLH fellows and Prep fellows to learn more about MLH fellowship and Prep fellowship programme and all its intricacies",
      articleType: "STANDARD",
      authors: [
        Authors(name: "Rashmi Ranjan", details: "629d269c1fddaa5b2d38a8ea",
          user: User(
              picture: Image(
                store: 'ACTIVE',
                storePath: '/user/629d269c1fddaa5b2d38a8ea.jpeg',
              ))
      ),
        Authors(name: "Rashmi Ranjan", details: "629d269c1fddaa5b2d38a8ea",
          user: User(
              picture: Image(
                store: 'ACTIVE',
                storePath: '/user/629d269c1fddaa5b2d38a8ea.jpeg',
              ))
      ),
        Authors(name: "Rashmi Ranjan", details: "629d269c1fddaa5b2d38a8ea",
          user: User(
              picture: Image(
                store: 'ACTIVE',
                storePath: '/user/629d269c1fddaa5b2d38a8ea.jpeg',
              ))
      )
      ],
      categories: [
        Categories(number: 3),
        Categories(number: 31),
      ],
      content: [
        Content(
            text: "Open-Source projects are projects who have their source code open to everyone. They are free to use, **study, modify and share by anyone who wishes to participate**. Today, the open-source projects symbolise a community that celebrates the principles of open exchange, collaborative participation, rapid prototyping, transparency, meritocracy, and community-oriented development.",
            contentType: "PARAGRAPH",
            blockFormatting: BlockFormatting(
              align: "LEFT",
            ),
        ),
        Content(
          text: "**MLH Fellowships by MLH (Major League Hacking) is one of today's most prominent open source fellowship programmes.** Major League Hacking (MLH) is a global community of student developers. It supports student developers and engineers worldwide by organising events like career fests, workshops, and hackathons.",
          contentType: "PARAGRAPH",
          blockFormatting: BlockFormatting(
            align: "LEFT",
          ),
        ),
        Content(
          text: "**There are four fellowship tracks that the MLH offers to its prospective fellows-**",
          contentType: "PARAGRAPH",
          blockFormatting: BlockFormatting(
            align: "LEFT",
          ),
        ),
        Content(
          text: "1. Open Source\n2. Software Engineering\n3. Production Engineering\n4. Prep Fellowship",
          contentType: "ORDERED_LIST",
          blockFormatting: BlockFormatting(
            align: "LEFT",
            listStyle: "NUMERICAL",
          ),
        ),
        Content(
          text: "Image Caption",
          mediaID: "629dbc791acb2c3831ab4289",
          contentType: "IMAGE",
          blockFormatting: BlockFormatting(
            align: "LEFT",
          ),
          media: Media(
            store: "ADAMANTIUM_ARCHIVE_A",
            storePath: "/article/content/629dbc791acb2c3831ab4289.jpeg",
            mediaType: "IMAGE",
            authors: [
              Authors(name: "Team MM", details: "6269a756fd0601b182e327d5")
            ]
          ),
        ),
        Content(
          text: "**[Rudransh Sharma (RS)](https://github.com/rudranshsharma123):** I was always interested in computer science and writing programs, developing something that can come to life right before my eyes so that I can use it. But, the moment I stepped into the National Institute of Technology Rourkela, the developing thing just got away because I was in the Chemical Engineering department. Everyone around told me to focus more on the core aspect of the branch rather than go forward with the software development side. **It was not until COVID that I started programming again.** It was then that I discovered MLH and then, I started winning a couple of hackathons, and I found this wonderful organisation named Gina AI, a research company that worked on neural search. I won a consecutive four times of their hackathons so, that was how I got together with this community. Then, I started contributing to their repos. That was how I started my open source journey with Gina AI.",
          contentType: "PARAGRAPH",
          blockFormatting: BlockFormatting(
            align: "LEFT",
          ),
        ),
      ],
      coverMedia: CoverMedia(
        square: Media(
          store: "ADAMANTIUM_ARCHIVE_A",
          storePath: "/article/cover/629dbd541acb2c3831ab4761.jpeg",
          mediaType: "IMAGE",
        ),
        rectangle: Media(
          store: "ADAMANTIUM_ARCHIVE_A",
          storePath: "/article/cover/629dbd581acb2c3831ab4764.jpeg",
          mediaType: "IMAGE",
        ),
      ),
      reactions: 0,
      comments: 0,
      bookmarks: 0,
      views: 0,
      hits: 415,
      readTime: 606,
      updatedAt: 344,
  );
}