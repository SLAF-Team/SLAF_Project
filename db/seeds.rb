# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Idiom.destroy_all
Comment.destroy_all
Like.destroy_all
Unlike.destroy_all

#Admin user
User.create(first_name: 'Armand',
    last_name: 'Richelieu',
    email: 'richelieu.armand@yopmail.com',
    password: '123soleil',
    password_confirmation: '123soleil',
    alias: 'Le recteur',
    admin: true
)
@admin_user = User.find_by(first_name: 'Armand', last_name: 'Richelieu')

Idiom.create(
    title_en: 'ship',
    title_fr: '(dé)livrer',
    grammatical_type: 'verbe',
    body: "C'est comme dé-livrer, mais ça fait plus proactif.",
    example_fr: "Il faut qu'on délivre une version du SLAF ce soir au plus tard.",
    example_en: "Il faut qu'on ship une version du SLAF ce soir au plus tard.",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'benchmark',
    title_fr: 'analyse comparative',
    grammatical_type: 'nom',
    body: "Etymologiquement lié à l'architecture (point géodésique pour les amateurs) : ça fait tout de suite sérieux. On dit aussi parangonnage !",
    example_fr: "Lisa, aurais tu l'obligeance de me fournir cette étude comparative je te prie ?",
    example_en: "Lisa, tu me ferais un petit benchmark stp ?",
    user: @admin_user,
    validated: true
)


Idiom.create(
    title_en: 'pitcher',
    title_fr: 'présenter',
    grammatical_type: 'verbe',
    body: "Pitcher, c'est présenter de manière succincte et synthétique.",
    example_fr: 'Vincent vous présentera le projet succintement cet après-midi.',
    example_en: 'Vincent vous pitchera le projet cet après-midi.',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'disrupter',
    title_fr: 'bouleverser',
    grammatical_type: 'verbe',
    body: 'Couramment utilisé pour bien faire comprendre que ton idée est la plus révolutionnaire du startup game. ',
    example_fr: 'Bigre ! Notre offre va bouleverser le marché du coton bio.',
    example_en: 'Waou ! Notre offre va disrupter le marché des lessives en capsule !',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'streamliner la workload',
    title_fr: 'rationnaliser la charge de travail',
    grammatical_type: 'expression',
    body: "Streamliner la workload est un rituel majeur de passage à l'âge managérial dans la culture corporate, pour gagner en efficacité bien sûr.",
    example_fr: "J'ai rationnalisé la charge de travail de la mission.",
    example_en: "J'ai streamliné la workload de la mission .",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'bankable',
    title_fr: 'rentable',
    grammatical_type: 'adjectif',
    body: "Vient du jargon cinématographique, désigne une star qui va assurer une audience à un film de facto des financements. Par extension, se dit d’une idée, d'un secteur ou d’une start-up très à même d’attirer des investissements.",
    example_fr: 'THP est extrêmement rentable.',
    example_en: "The Hacking Project est extrêmement bankable.",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'scalable',
    title_fr: 'extensible',
    grammatical_type: 'adjectif',
    body: 'Fait partie du groupe des anglicismes les plus légitimes car difficiles à traduire. Un modèle dit "scalable" est facilement déployable à plus grande échelle.',
    example_fr: 'Mon appli de promenade de chiens est extensible !',
    example_en: 'Mon appli de dog-walking est scalable !',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'scoper',
    title_fr: 'délimiter ',
    grammatical_type: 'verbe',
    body: "Techniquement valide dans le domaine médical, on comprend bien l'effet Zoom.",
    example_fr: "A-t-on bien délimité l'étendue de notre activité à venir ?",
    example_en: 'A-t-on bien scopé notre activité à venir ?',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'assesser',
    title_fr: 'évaluer',
    grammatical_type: 'verbe',
    body: "Populaire, mais n'ajoute en soit aucune plus-value.",
    example_fr: 'Tu seras évalué dans une semaine.',
    example_en: 'Tu seras assessé dans une semaine.',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'plugger',
    title_fr: 'brancher',
    grammatical_type: 'verbe',
    body: "S'utilise le plus souvent au sens figuré. ",
    example_fr: 'Tout est branché à la base de données. ',
    example_en: 'Tout est pluggé à la database.',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'dummy',
    title_fr: 'factice, fictif',
    grammatical_type: 'adjectif',
    body: 'Généralement utilisé avec des outils permettant de mettre en place des simulations, comme des données.',
    example_fr: 'Ces données factices ne seront pas compatibles avec ce logiciel.  ',
    example_en: 'Ces dummy data ne matcheront pas avec ce software.',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'template ',
    title_fr: 'modèle ',
    grammatical_type: 'nom ',
    body: 'Populaire car très polysémique : modèle en est une traduction assez polyvalente. ',
    example_fr: "Son modèle n'est pas assez précis à moyen-terme.",
    example_en: "Son template n'est pas assez accurate sur le mid-term.",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'feedback',
    title_fr: 'retour',
    grammatical_type: 'nom',
    body: 'Utilisé plus souvent pour le sens de retour que celui de rétroaction. ',
    example_fr: 'Elle attend le retour de son N+2.',
    example_en: 'Elle attend le feedback de son N+2.',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'business angel',
    title_fr: 'investisseur providentiel',
    grammatical_type: 'nom',
    body: 'Investisseur privé à haute tolérance de risque misant sur les start-ups.',
    example_en: "Mon app 'Brothel & Breakfast' n'attend plus qu'un business angel !",
    example_fr: "Mon app 'maison close & petit déjeuner' n'attend plus qu'un investisseur providentiel !",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'roadmap',
    title_fr: 'feuille de route',
    grammatical_type: 'nom',
    body: 'Le superbe plan établi par tes supérieurs hiérarchiques, qui parlent au moins 1,5 langues. ',
    example_fr: 'Sympa votre projet, on voit que vous avez suivi la feulle de route et pris en compte les retours.',
    example_en: 'Trop cool votre projet, on voit que vous avez follow la roadmap et listené les feedbacks. ',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'one-to-one',
    title_fr: 'face-à-face',
    grammatical_type: 'nom',
    body: "One-on-one est la traduction traditionnelle d'un entretien en face-à-face, one-to-one (ou 1-1) a au départ un sens différent,  plus lié à l'idée de transmission, mais son utilisation est maintenant acceptée au niveau informel.",
    example_fr: "Quel est le sujet de l'entretien avec ton chef ?",
    example_en: "C'est quoi le topic du ton 1-1 avec ton manager ?",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'sugar daddy',
    title_fr: 'papa gâteau',
    grammatical_type: 'nom',
    body: "Papa gâteau désignait au départ un père attentionné voire indulgent gâtant ces enfants. En raison de l'évolution de la langue, il désigne à present aussi un homme généralement plus âgé entretenant financièrement un ou une amante.",
    example_fr: 'Ils ont découvert le profil de leur DF sur un site de papas gâteaux.',
    example_en: 'Ils ont découvert le profil de leur CFO sur un site de sugar daddies.',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'looser',
    title_fr: 'perdant / ratés',
    grammatical_type: 'nom',
    body: "Né d'une confusion entre lose et loose, looser signifie en fait 'plus ample / lâche' (comparatif), ce qui n'empêche pas son utilisation fréquente pour traduire perdant. ",
    example_fr: 'La branche audit est remplie de ratés, viens faire du conseil avec nous.',
    example_en: "L'audit, c'est que des loosers, viens faire du conseil avec nous. ",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'forwarder',
    title_fr: 'transférer',
    grammatical_type: 'verbe',
    body: "Promu par les boites mails en anglais, forward à aussi le sens adverbial d'en avant, il siet donc particulièrement aux jeunes cadres dynamiques. ",
    example_fr: "Elle a transféré l'email à toute l'équipe. ",
    example_en: "Elle a forwardé l'email à toute la team. ",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'faire sens',
    title_fr: 'avoir du sens',
    grammatical_type: 'expression',
    body: "Traduction littérale de l'expression 'to make sense'. Faire sens n'a pas de sens, un comble !",
    example_fr: 'Faire sauter les primes des débutants en premier, ça a du sens. ',
    example_en: 'Faire sauter les bonus des juniors en premier, ça fait sens. ',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'cancel culture',
    title_fr: "la culture de l'effacement",
    grammatical_type: 'expression',
    body: 'Dénoncer publiquement, si possible en groupe, des individus dont on désapprouve les propos et/où les actes afin de les ostraciser.',
    example_fr: "Twitter est le fer de lance de la culture de l'effacement.",
    example_en: 'Twitter est le leader de la cancel culture.',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'jour off',
    title_fr: 'jour de congé',
    grammatical_type: 'nom',
    body: 'Mélange de "day off" et de son équivalent français, le jour off permet au go-getter de se ressourcer. ',
    example_fr: "Je me suis pris deux jours de congés la semaine prochaine, on va faire de l'exploration urbaine !",
    example_en: "Je me suis pris deux jours offs la semaine prochaine, on va faire de l'urbex !",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'slide',
    title_fr: 'diapositive',
    grammatical_type: 'nom',
    body: "D'après les dernières estimations, la production de slides représenterait à elle seule 21% de la production globale du secteur tertiaire. ",
    example_fr: 'Ses diapositives sont claquées au sol, jamais il passe responsable !',
    example_en: 'Ses slides sont claquées au sol, jamais il passe manager ! ',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'deadline',
    title_fr: 'date butoir',
    grammatical_type: 'nom',
    body: 'Ce terme anglais, provenant du jargon militaire, désigne une ligne que les prisoniers de guerre ne doivent pas traverser. Il donne tout de suite plus de solennité aux contraintes temporelles du quotidien. ',
    example_en: 'La deadline est dans 2 jours pour notre propale, on est mal...',
    example_fr: 'La date butoir est dans deux jours, on va être justes !',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'closer',
    title_fr: 'conclure, clôturer',
    grammatical_type: 'verbe',
    body: "Se dit d'une vente (ou 'deal'). Par extension, les 'closers' sont aux commerciaux ce que sont les 'clutch players' aux sportifs : ils ramènent la coupe à la maison.",
    example_fr: 'Victoria a converti la moitié de nos clients potentiels ce dernier trimestre.',
    example_en: 'Victoria a closé la moitié de nos prospects du dernier quarter.',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'conf call',
    title_fr: 'conférence téléphonique',
    grammatical_type: 'nom',
    body: 'On lui ajoute aussi de plus en plus le sens de visioconférence, vive la Covid ! ',
    example_fr: "Je sors d'une visioconférence de 2h30 qui aurait pu être un email... jpp.",
    example_en: "Je sors d'une conf call de 2h30 qui aurait pu être un email... jpp.",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'asap',
    title_fr: 'au plus vite',
    grammatical_type: 'expression',
    body: "ASAP est l' abbréviation de 'as soon as possible'. L'utiliser, c'est déjà faire preuve de brièveté, et donc d'un à-propos charmant.",
    example_fr: "Pas de problème, je t'envoie la fiche technique au plus vite. ",
    example_en: "No problem, je t'envoie la sprec cheet asap. ",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'De-livrable',
    title_fr: 'production tangible',
    grammatical_type: 'nom',
    body: "Dérivé du verbe 'to deliver', un délivrable ou livrable ne s'entend pas au sens usuel français. Il représente un travail suffisamment correct pour légitimer la personne ou l'organisation qui l'a produit. ",
    example_fr: "Déjà deux semaines de mission, et on n'a pas une production tangible qui tienne la route.",
    example_en: "Déjà deux semaines de mission, et on n'a pas un livrable qui tienne la route.",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: "implémenter",
    title_fr: 'mettre en place',
    grammatical_type: 'verbe',
    body: 'Valide au scrabble (consécration).',
    example_fr: "Nous metterons en place ce processus dès que nous aurons l'accord du conseil d'administration.",
    example_en: 'Nous implémenterons ce process dès que nous aurons le feu vert du board. ',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'workshop',
    title_fr: 'atelier collaboratif',
    grammatical_type: 'nom',
    body: "Le worshop donne une impression de mise en pratique concrète sans passer par un terme aussi artisanal qu'atelier. ",
    example_fr: 'Les RHs ont réservé un second atelier contre le harcèlement mardi aprèm. Obligatoire, cette fois. ',
    example_en: 'Les RHs ont booké un second worshop anti-harassment mardi aprèm, et mandatory cette fois. ',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'onboarding',
    title_fr: "processus d'intégration",
    grammatical_type: 'nom',
    body: "Désigne la période d'intégration dans une entreprise, elle permet aux nouvelles recrues de se familiariser pleinement avec leur nouvelle famille corporate.",
    example_fr: "L'onboarding et les team building n'ont pas impacté le taux de turnover comme prévu.",
    example_en: "Le processus d'intégration et les séminaires d'équipe n'ont pas eu l'effet escompté sur le taux de rotation. ",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'kick-off',
    title_fr: "coup d'envoi",
    grammatical_type: 'nom',
    body: "Les deux versions se valent, mais l'anglaise donne aussi accès au verbe to kick-off, là où 'coup d'envoiter' reste assez avant-gardiste. ",
    example_fr: "Lundi prochain, c'est le coup d'envoi de la semaine 7... je vomis des cartes trello. ",
    example_en: "Lundi prochain, c'est le kick-off du sprint 7... je vomis des trello cards.",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'soft skills',
    title_fr: 'compétences non techniques',
    grammatical_type: 'nom',
    body: 'À opposer aux hard skills, c.à.d. aux compétences techniques. Se dit des capacités qui vont vraiment vous permettre de vous hisser en haut de la corporate ladder sur le long-run.',
    example_fr: "Erwan produit des feuilles de calcul propres mais il a aucune compétence relationnelle. Un beau défi ! ",
    example_en: "Erwan délivre des spreadsheets propres mais il n'a vraiment aucun soft skill. Quel challenge ! ",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'growth hacking',
    title_fr: 'piratage de croissance',
    grammatical_type: 'nom',
    body: "Cousin du guerilla marketing, le growth hacking vient moderniser le marketing de papa. ",
    example_fr: 'Leur nouvelle cheffe de projet digital est une pirate de croissance née. ',
    example_en: 'Leur nouvelle PO est une growth hackeuse née. ',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'à date',
    title_fr: 'à ce jour',
    grammatical_type: 'expression',
    body: "Traduction littérale de 'to date'. Jusqu'à présent et à ce jour feraient l'affaire, mais ils sont bien trop longs à prononcer. ",
    example_fr: 'Pour ce qui est des Indicateurs Clés de Performance, à ce jour, le Retour Sur Investissement est toujours problématique.',
    example_en: 'Pour ce qui est des KPIs, à date, le ROI est toujours problématique. ',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'todo',
    title_fr: 'tâches à faire',
    grammatical_type: 'nom',
    body: "Version abrégée de la to-do list. Les tâches accomplies disparaissent et les problèmes s'accumulent, comme au tetris. ",
    example_fr: "Leur liste de tâches à faire ressemble plus à une liste de Noël qu'à autre chose. De toute façon, ils ne délivrent pas.",
    example_en: "Leur todo ressemble plus à une Christmas list qu'à autre chose. Anyway, ils shippent pas.",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'issue',
    title_fr: 'problème',
    grammatical_type: 'nom',
    body: "Ne pas confondre avec le sens courant français et bien prononcer avec le son [ʃ] (si ça te fait juste penser à une intégrale, en fait c'est <ch>)",
    example_fr: "On a un problème d'expérience utilisateur, on n'a pas anticipé qu'ils soient encore sur Internet Explorer dans cette boîte.",
    example_en: "On a une issue UX, on n'a pas anticipé qu'ils tournent encore sur Internet Explorer on site.",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'focus group',
    title_fr: 'groupe de discussion',
    grammatical_type: 'nom',
    body: 'Lien indispensable entre la théorie et la pratique, notamment en marketing, le focus group donne un côté un peu plus scientifique au monde corporate.',
    example_fr: "Quelle tané le groupe de réflexion de ce matin... Ils n'ont pas du tout accroché avec notre IU 'hommage au minitel'.",
    example_en: "Quel tanée le le focus group de ce matin. Ils n'ont pas du tout accroché avec notre UI 'minitel tribute'...",
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'out of the box',
    title_fr: 'en dehors du cadre',
    grammatical_type: 'expression',
    body: "Faire preuve d'originallité, être créatif. Selon le contexte, d'autres sens existent tels que 'clés en main'. ",
    example_fr: 'On avait toute la réu de refléxion pour penser en dehors du cadre, maintenant il faut avancer.',
    example_en: 'On avait tout le brainsto pour penser out of the box, maintenant il faut avancer.',
    user: @admin_user,
    validated: true
)

Idiom.create(
    title_en: 'side project',
    title_fr: 'projet parallèle',
    grammatical_type: 'nom',
    body: "Le side project qualifie un 'projet sur le côté' d'une potentielle vraie activité (à compter que l'on sache ce qu'elle est), et est par extension utilisée pour qualifier des passions voire des petits projets internes.",
    example_fr: "A côté, j'apprends aussi à coder, c'est très formateur ! ",
    example_en: 'Mon side project du moment ? Le code, évidemment !',
    user: @admin_user,
    validated: true
)

