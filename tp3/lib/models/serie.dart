class Serie {
  final String title;
  final String image;
  final String description;

  const Serie({
    required this.title,
    required this.image,
    required this.description,
  });
}

const List<Serie> series = [
  Serie(
    title: "Breaking Bad",
    image: "assets/images/bbad.jpg",
    description:
        "Breaking Bad is a show about Walter White, a chemistry teacher who starts making meth with his old student Jesse Pinkman after he learns he has cancer.",
  ),
  Serie(
    title: "Stranger Things",
    image: "assets/images/st.jpg",
    description:
        "In the small town of Hawkins, a young boy disappears and his friends, his family and the police get pulled into a mystery full of secret experiments and supernatural forces.",
  ),
  Serie(
    title: "Game of Thrones",
    image: "assets/images/got.jpg",
    description:
        "Noble families fight for control of the Iron Throne of the Seven Kingdoms of Westeros, while an old enemy comes back from the North.",
  ),
];
