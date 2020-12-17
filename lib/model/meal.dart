class Meal {
  final String mealTime, name, imagePath, coach, timeTaken;
  final String preparation;
  final List ingredients;

  Meal(
      {this.mealTime,
      this.name,
      this.imagePath,
      this.coach,
      this.timeTaken,
      this.preparation,
      this.ingredients});
}

final meals = [
  Meal(
      mealTime: "РАЗМИНКА",
      name: "Кардио",
      coach: "Василиса",
      timeTaken: "10",
      imagePath: "assets/kardio.png",
      ingredients: [
        "- чередование с бегом на одном месте",
        "- прыжки двумя способами: через штангу и с запрыгиванием на устойчивую площадку",
        "- подтягивание на турнике",
        "- с выпадами ног на брусьях"
      ],
      preparation:
          '''Эти интервальные тренировки развивают все тело, способствует продуктивной коррекции лишнего веса. Для женщин это результативный метод, который на клеточном уровне активизирует обмен веществ. Польза берпи очевидна для всех, к тому же позволяет контролировать дыхание, регулирует нагрузку на организм, укрепляет работу сердечно-сосудистой системы, быстро избавляет от жира.'''),
  Meal(
      mealTime: "БЕГ",
      name: "Бег на месте",
      coach: "Ирина",
      timeTaken: "15",
      imagePath: "assets/run.png",
      ingredients: [
        "В ходе такого бега ставьте ногу на носок с пятки и старайтесь как можно быстрее чередовать ноги.",
        "Постарайтесь колени не выводить выше параллели с полом.",
        "Подтягивайте  живот , спину держите прямой",
        "Руки должны быть прижаты к туловищу и согнуты в локтях.",
        "Либо двигаться , как это делается в условиях обычного бега."
      ],
      preparation:
          '''Как и любая кардионагрузка, бег на месте тренирует сердечно-сосудистую систему. Аэробная нагрузка запустит те же процессы, что и обычный бег. И в этом смысле бег на месте не проигрывает бегу на улице ни в чём.'''),
  Meal(
      mealTime: "Йога",
      name: "Йога",
      coach: "Юлия",
      timeTaken: "40",
      imagePath: "assets/yoga.png",
      ingredients: [
        "Каким бы ни было сильным желание достичь быстрого результата, старайтесь практиковать в своем темпе, без чрезмерных усилий",
        "Все делается плавно, медленно и осознанно",
        "Дыхание должно быть ровное, спокойное и только через нос",
        "Во время йоги в домашних условиях будет лучше заниматься в тишине или под мантры",
      ],
      preparation:
          '''Эта эффективная и веками проверенная практика воздействует сразу на физическое и тонкое тело (оно отвечает за эмоции и мысли человека). Тот, кто занимается йогой, становится здоровее и выносливее, после занятий чувствует прилив сил, а также с новой силой может ощутить вкус к жизни. Согласитесь, в современном мире с большими нагрузками и стрессами это очень важно. Как ни крути, у алкоголя и тортиков есть побочные действия, а йога абсолютно безвредна: принимай хоть семь раз в неделю.'''),
];
