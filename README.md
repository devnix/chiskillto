<p align="center">
  <img src="assets/chiquito-coding.png" alt="Caricatura de Chiquito de la Calzada programando frente a un monitor con el logo de GitHub" width="360"/>
</p>

# chiskillto

> **¡Al ataquerrr, pecaorrr!** Plugin de [Claude Code](https://docs.claude.com/en/docs/claude-code) que hace que Claude te hable como **Chiquito de la Calzada** hasta que tú, hijo míoorrr, le digas basta. Fistro duodenarrl, ¿te da cuen? ¡Por la gloria de mi madrerrr!

---

## ¿Qué es esto, pecaorrr?

Pues mira, fistro, es un peaso plugin para Claude Code que tiene **más muletillas que un partido del Fary jugando a la petancarl** y le activa al asistente la persona del ilustre Gregorio Sánchez Fernández, **el míster de Málaga**. Una sola skill por ahora — **`chiquito`** — pero más completar que el currículum del Roldánnnnn, jarrrl.

Cuando lo activas, Claude empieza a soltar:

- **Muletillas** — fistro, pecaorrr, jarl, hasta luego Lucas, ¿cómorrr?, ¿te da cuen?, que lo sepas, por la gloria de mi madre, cobarderrr, al ataquerrr… ¡que no para el hombre!
- **Neologismos del ilustre** — diodená de persona humana, fistro duodenarrr, torpedo del año cuatro, meretérita, acapiporla, agromenáuer…
- **Terminaciones deformaaaaas**rrrlll — `-orrr`, `-arl`, `-errr`, `-arrr`. El codigorrr, el problemarl, el bucle infinitorrr. Te das cuen.
- **Comparaciones absurdas** con referencias ochenteras y noventeras que te suenan **más que un capítulo de Sensación de Vivirl repetidor en la sobremesarl**. Más perdío que Wally. Más lento que Internet en vacaciones. Más feo que el Fary comiendo un limón. ¡Jarl!

Y todo esto **sin romperte el código**, fistro, que somos serios — bueno, casi serios. ¡Cuidadín, no te hagas pupita en el fistro duodenarl!

## Lo que hace, hijo míoorrr

- **Activa la persona persistenterrr** cuando escribes `/chiquito`, dices "habla como Chiquito" o pides "modo ilustre". Modo más persistente que el chinooorrr que vende rosas en la terraza, pecaorrr.
- **Responde correctamenterrr** a tus preguntas técnicas — el ilustre era serio, hijo míoorrr — pero el envoltoriorrr y los comentarios van en chiquitoñol del bueno, del de la Trinidad.
- **Salpica comentarios y variables** del código con chiquitismos cuando no rompen contratos. Que no nos vamos a poner a renombrar las claves del SDK de Stripe, fistro, que eso ya es un torpedo del año cuatro.
- **Trae un peaso banco de 918 frases auténticas** del ilustre (`skills/chiquito/frases.txt`) — más completo que la enciclopedia del Petete — y un script `frase-random.sh` que tira frases al vuelo más rápido que Forrest Gump en los San Ferminerrr.
- **Se desactiva** diciendo "habla normal", "stop chiquito", "ya basta pecaorrr", "modo serio", lo que sea. El ilustre te entiende, no es ningún acapiporla.

## Instalación, fistro

¡Ehtoo va más rapidorrr que Ben Johnson en una farmacia, pecaorrr! Tienes tres vías y las tres son más fáciles que el mecanismo de un botijorrr.

### Opción A — como plugin de Claude Code (la fina del señorito)

Dentro de Claude Code, añade el marketplace (una sola vez) y luego instala el plugin:

```
/plugin marketplace add devnix/chiskillto
/plugin install chiskillto@chiskillto
```

A partir de ahí lo activas con `/chiquito` y to está más en su sitio que el peluquín del Dioni. A güán, a peich, agromenáuer. (Eso es "Done, peeerrr, agreed" en idioma ilustre.)

### Opción B — con `npx skills` (pa' los multiagenterrr)

Si usas el CLI [`skills`](https://github.com/vercel-labs/skills) de vercel-labs — el que sirve pa instalar skills en Claude Code, Cursor, Codex, opencode y demás bichorrr — tira de la shorthand de GitHub:

```bash
# instala la skill chiquito en Claude Code (user scope, sin prompts)
npx skills add devnix/chiskillto -a claude-code -g -y
```

Si la quieres pa varios agentes a la vez, encadenas `-a`:

```bash
npx skills add devnix/chiskillto -a claude-code -a cursor -a opencode
```

Y si solo quieres ver qué skills hay antes de meter ná, sin compromiso:

```bash
npx skills add devnix/chiskillto   # sin flags te pregunta, más amable que el Cola Caorr
```

Esta vía instala **solo la skill** `chiquito`, sin manifiesto de plugin ni marketplace. Más portátil que el casete del Walkman del Espinete, fistro.

### Opción C — symlink manuarl de la skill suelta (pa' los maquinas)

Si solo quieres la skill `chiquito` sin meter el plugin entero ni `npx`, clonas y enlazas a tu directorio personal de skills:

```bash
git clone https://github.com/devnix/chiskillto ~/dev/chiskillto
mkdir -p ~/.claude/skills
ln -s ~/dev/chiskillto/skills/chiquito ~/.claude/skills/chiquito
```

Y en la siguienterrr sesión de Claude Code, la skill `chiquito` te sale en la lista más visible que el moño de la Pantoja en un sex-shoporr de Chipionarl. Esta vía **no** activa el `plugin.json` ni los metadatos, solo la skill. ¡Jarl!

## Uso, pecaorrr de la praderar

```
> /chiquito
¡Al ataquerrr, pecaorrr! Activao el modo ilustre, fistro duodenarrl. ¿Te da cuen?
Hasta nuevo aviso te hablo como er míster Sánchez Fernández, por la gloria de mi madre.

> ¿Qué hace este código?
¡Hijo míoorrr! El codigorrr este es más simple que el mecanismo de un botijorrr,
fistro. Itera la listarl, mira si el elementorrr es par y lo mete en otra listarl.
¿Te da cuen? Más claro que el flequillo del Dioni, pecaorrr.

> arregla el bug del null pointer
¡Por la gloria de mi madrerrr! Eso es más peligrosor que Espinete en una tienda de
globos. Voy a meter un guardia en la línea 42 y se acabó el sufrimientorrrl…
```

Cuando ya no aguantes más muletillas (cosa rara, fistro, pero pasa):

```
> habla normal
¡Hasta luego Lucasss! Vuelvo a hablar como un cristianorrr… digo, normal.
¡Por la gloria de mi madre!
```

Y a partir de ahí Claude vuelve a ser un Claude más sosor que un yougurt de aguarrr. Una pena, pecaorrr.

## Estructura del repo, hijo míoorrr

Más ordenada que el armario de Arturo Fernándezzz:

```
chiskillto/
├── README.md                    # estorrr que estás leyendo, fistro
├── LICENSE                      # FISTRO PUBLIC LICENSE v1.0
├── .claude-plugin/
│   ├── plugin.json              # manifiesto del plugin, diodená
│   └── marketplace.json         # catálogo del marketplace, pa instalación de un comando
└── skills/
    └── chiquito/
        ├── SKILL.md             # las reglas del modo ilustre, pecaorrr
        ├── frases.txt           # 918 frases auténticas del míster
        └── frase-random.sh      # tirador de frases, ¡al ataquerrr!
```

## El banco de frases, ¡aguaaa aguaaa!

El archivo `skills/chiquito/frases.txt` lo trajimos del repo del compañero [@atareao](https://github.com/atareao/chiquito) — gente seria, fistro, que recopiló más frases que la Pantoja saca chequerrr. Pa tirar de él:

```bash
./skills/chiquito/frase-random.sh           # 1 frase aleatoria, pa empezar
./skills/chiquito/frase-random.sh 5         # 5 frases, pa calentar motoressr
./skills/chiquito/frase-random.sh 3 fistro  # 3 frases que contengan "fistro"
```

Muestrarl gratis pa que veas el peaso material que llevas en la mochilarl:

> *Cantas más que la hormiga atómica en una manifestación de Grin pis.*
>
> *Tienes más agujeros que la defensa del Compooooooos.*
>
> *Eres más Topedo que Lucas Grijander.*
>
> *¡Hijo míoorrrr! ¡Tienes más peligro que un copiloto de rallye tartatamudowr!*

¿No te vas a partirrr la cajarl con cada respuesta? Pues entonces es que **eres más serio que el entrenador del Equipo Arrr**, pecaorrr. ¡Jarl!

## Créditos, por la gloria de mi madre

- **Gregorio "Chiquito de la Calzada" Sánchez Fernández** (Málaga, 1932 – 2017). El míster. El ilustre. Sin él, ná. [Wikipedia del peaso de hombre](https://es.wikipedia.org/wiki/Chiquito_de_la_Calzada).
- **[@atareao](https://github.com/atareao)**, por compilar el banco de frases más completo que ha pisao el GitHub, fistro. Un crack más maquina que MacGyver con un palillo y un chicle Boomerrr.

## Licencia, diodená de licencia

**[FISTRO PUBLIC LICENSE v1.0 ("Diodená")](https://github.com/devnix/fistro-public-license)** — derivada legal de la WTFPL v2 (al amparo de su cláusula de renombrado), que es **más libre que el Fary en un karaoke** y más permisiva que tu abuela un domingorrr de Reyes. Dos cláusulas vinculantes y un anexo ilustrativo, fistro:

> **0. ¡Tú, fistro, haz LO QUE TE SALGA DEL FISTRO DUODENARL!**
>
> **1.** Sin garantíarl de ningún tipor, ni expresarl, ni implicitarrl. Si te peta el ordenador, no me vengas a llorarrr.

El texto íntegrol con anexor ilustrer (sub-cláusulas opcionales sobre uso, copia, café en Málaga y atribución al ilustre) y la cláusula de fuerza mayorrrl (fallback a WTFPL v2 si tu jurisdicción no traga) está en [`LICENSE`](./LICENSE), y el repor canónico de la licencia (con el texto originarl, sin chiquitofiar el copyright) vive en [devnix/fistro-public-license](https://github.com/devnix/fistro-public-license). Las frases del míster son del dominio público cultural de toa España y de toa Bonanzarrrl, ¿te da cuen?

---

¡**Hasta luego Lucasss!** Y recuerda, pecaorrr: cuando estés depurando un bug a las 3 de la mañana y quieras llorar, pon `/chiquito` y verás cómo todo es más llevaderorrr. Más llevadero que la siesta del Espinete después de un cocido. **¡Por la gloria de mi madrerrr!**
