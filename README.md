## Hola! Això és una guia per aprendre a compilar fortran i gnuplot *online*
Si ja estàs dins del *codespace*, segueix llegint [aquí](#qu%C3%A8-fer-un-cop-dins-del-codespace).
## Què és el que volem aconseguir?
El que nosaltres volem és tenir un entorn on poder **compilar Fortran i Gnuplot sense haver d'instal·lar ni configurar res**. El mètode que seguirem ens permetrà tenir un link permanent en el qual tenim els nostres fitxers ordenats per carpetes, podem visualitzar PDFs, fitxers de dades, imatges, etc.

Bàsicament tenir una **versió idèntica del Visual Studio Code** per la web que ens permeti programmar sense masses complicacions encara que no estiguem estem davant del nostre ordinador habitual.

<img src="https://github.com/user-attachments/assets/299c0a48-e8c5-4ca1-b547-4307ac310a0b" alt="Demo" width="800">

Aquest mètode també pot servir a mode de *back-up* per si un dia no us funcionés l'ordinador o tinguéssiu un probema tècnic. D'aquesta manera simplement accedint al vostre repositori de GitHub accediríeu amb un sol click als vostres programes i subrutines. Amb el *plus* de poder-les editar, executar i també guardar (tan al repositori de GitHub com de manera local).

### Vídeo tutorial
Per si de cas us perdeu seguint aquesta guia, aquí teniu un petit vídeo amb els diferents passos seguir.
<details>
  <summary><b>Vídeo tutorial d'exemple</b></summary>

https://github.com/user-attachments/assets/fdad9ae8-e5eb-4dd6-940e-cf516c519d3e

</details>

## Procés per entrar en el *codespace* (és molt ràpid!)

### 1. Crea't un compte de GitHub o inicia la sessió
Si ja tens un usuari [inicia la sessió](https://github.com/login), sinó [registra't](https://github.com/signup).

Consell: Si us registreu amb el correu de la uni i més endavant realitzeu la sol·licitud per tenir [Student Benefits](https://fisicaubwiki.notion.site/Utilitzar-la-IA-GitHub-Copilot-d25a3dd6dd384b0ea4586a309a5b0fdc), obtindreu el pla GitHub Pro gratuïtament i us permetrà augmentar bastant la velocitat dels vostres *codespaces* així com les hores totals de computació que podeu fer servir cada mes (realment només us caldria si ho féssiu servir molt sovint).
### 2. Clica el botó verd "Use this template"
A dalt a la dreta del repositori tens un botó verd que et permet crear un nou repositori a partir d'aquest *template*. Per anar més ràpid, aquí tens una versió del mateix botó. 

Consell: Fes <kbd>Ctrl</kbd>+<kbd>Click</kbd> o <kbd>&#8984;</kbd>+<kbd>Click</kbd> per obrir-ho en una pestanya nova.

[![Create a new repository](https://img.shields.io/badge/Use_this_Template-green.svg)](https://github.com/Mapaor/compilador-fortran/generate)

El que estàs fent ara és clonar (*fork* en slang de GitHub) el meu repositori i crear-ne un idèntic (una còpia que serà teva i podràs fer amb ella el que vulguis).

Si vols li dones un nom diferent o si vols deixes el nom per defecte. Després li dones al botó verd de "Create Fork" a baix a la dreta.

<details>
  <summary>Imatge d'exemple</summary>

  <img width="571" alt="Exemple de com clonar un repositori." src="https://github.com/user-attachments/assets/87605244-64ef-4616-879a-e78dc342b091">
  
</details>

Tardarà uns segons i de seguida tindràs un nou repositori en el teu perfil. Ara mira't aquest README des del TEU repositori.

### 3. Genera el *codespace*
Ara simplement crea un nou *codespace* a partir del teu repositori. 

Per a fer-ho obre el desplegable verd "Code" del repositori i en la pestanya "Codespaces" clica el botó verd "Create codespace on main".
<details>
<summary>Imatge d'exemple</summary>
  
<img width="350" alt="Create codespace on main" src="https://github.com/user-attachments/assets/d1248585-980a-4a91-ab3b-7539f76a7f42">

</details>

Nota: Podria ser segons com que et donés un _network error_.
<details>
<summary>Què fer si em dona aquest error?</summary>
  Segurament sigui degut a que tens un ad-blocker, una extensió que restringeix alguna funcionalitat del navegador o que et trobes en una pestanya d'incògnit. Prova a descativar temporalment alguna de les extensions o canviar de navegador.
</details>

## Què fer un cop dins del *codespace*?
### Primer de tot felicitats!
Molt bé, enhorabona! Estàs llegint aquest README des de dins del *codespace*. Ara mentre esperes que s'acabin d'instal·lar les extensions i el gfortran (aprox 1 min) pots anar llegint com funciona aquest editor (VS Code) i com treure'n el màxim de profit. En breus realitzarem un exemple en què compiles un arxiu de fortran i un de gnuplot.
### L'espai de treball
L'entorn és idèntic al VS Code per escriptori. Disposem d'una barra lateral en la que trobem els nostres fitxers dins la pestanya "Explorador" (<kbd>Ctrl</kbd>+<kbd>Majús</kbd>+<kbd>E</kbd>), o si volem també podem buscar i instal·lar extensions en la pestanya "Extensions" (<kbd>Ctrl</kbd>+<kbd>Majús</kbd>+<kbd>X</kbd>), o publicar els canvis fets al respositori en la pestanya "Control d'Orígen"  (<kbd>Ctrl</kbd>+<kbd>Majús</kbd>+<kbd>G</kbd>), això ho explicarem [més endavant](#com-guardar-els-canvis-a-github).

Tenim també una finestra principal en la que ara estem llegint aquest README i en la que editarem al nostre codi. Aquesta finestra funciona per pestanyes (com un navegador), quan obriu un arxiu (fitxer .f90 o .gnu per exemple) veurem que s'obre en una nova pestanya, la qual podem moure, tancar, etc.

Per últim tenim un buscador centrat a dalt i una finestra inferior on hi tenim la Terminal (entre d'altres eines). Si en algun moment tanquem accidentalment aquesta finestra sempre la podem recuperar buscant `>Terminal` en el buscador.

Nota: La diferència entre buscar `text` i buscar `>text` és important. Són dues cerques diferents. Per més informació: [VS Code - User Interface](https://code.visualstudio.com/docs/getstarted/userinterface).
### Abans de tot, comprovar que s'ha instal·lat fortran correctament
Escriu en la terminal el següent comandament
```
gfortran --version
```
Nota: pot ser que no et deixi enganxar text a la terminal amb dreceres de teclat, fes servir de moment el botó dret i 'Enganxa'. Després si vols pots [configurar el teu navegador](https://code.visualstudio.com/docs/editor/vscode-web#_opening-new-tabs-and-windows) perquè sí que et deixi.

Si et retorna el número de versió és que s'ha instal·lat correctament. 

També ho pots comprovar compilant l'arxiu "prova.f90".
1. `cd PRACTIQUES-FORTRAN` (Entrem dins de la carpeta PRACTIQUES-FORTRAN)
2. `gfortran -o prova prova.f90` (Compilem l'arxiu)
3. `./prova` (Executem l'executable)

Si veiem un `Hello World!` en la consola és que ha funcionat correctament, i de passada hem aprés a compilar i executar des de la terminal.

Pots aprendre a altres commandaments útils de la terminal [aquí](https://fisicaubwiki.notion.site/11011a9761ab80d09229d4f573bd434d).
### Instal·lar gnuplot
Abans hem dit una petita mentida, hem dit que no s'havia d'instal·lar res. Si bé això és cert per Fortran, s'ha optat per no instal·lar Gnuplot, ja que tarda uns 2-5 minuts i podria fer més difícil l'experiència inicial per un usuari que acaba d'entrar al *codespace*.

Per a fer-ho simplement escriu a la terminal el següent:
```
sudo DEBIAN_FRONTEND=noninteractive apt install -y gnuplot
```

Quan acabi ja podem comprovar que funciona compilant el programa "fig1.gnu". Si mirem el codi d'aquest arxiu veurem que utilitza les dades que es troben a `data/dades.dat`, les quals són una simple $y=x^2$ pels primers 9 enters. Generarem el gràfic fent:

```
gnuplot fig1.gnu
```

A dins de la carpeta `/out` s'hauria d'haver creat un fitxer `grafic.png`, si el cliquem hauríem de veure una imatge com la següent:

![fig1](https://github.com/user-attachments/assets/70fda62b-5cc7-4103-8024-c661c6a17d7d)


Si heu arribat fins aquí, tot funciona correctament. Ara sempre que torneu a entrar en el vostre *codespace* ja hi haurà gnuplot instal·lat, i els canvis que aneu fent (tan d'arxius com de configuració/personalització) també s'aniran guardant automàticament.

A continuació explicarem com compilar clicant simplement un botó, i com personalitzar l'entorn del VS Code per tal que sigui més agradable al treballar.
### Compilar a partir del Task Runner
Si et fixes dins de l'Explorador hi tens les teves carpetes i arxius, però també hi tens uns desplegables a la part inferior. Aquests s'anomenen "Contorn" (o "Outline"), "Línia temporal" (o "Timeline") i "Task Runner".

Sols ens interessa el "Task Runner" així que si vols pots desactivar la visibilitat dels altres dos (clicant botó dret en ells i traient-els-hi el tick).

<img width="329" alt="contorn" src="https://github.com/user-attachments/assets/c2c26ab4-1ddd-458d-9ed0-4c8aca1d0302">


Molt bé, si ara desplegues el "Task Runner" veuràs que hi ha quatre tasques diferents.

<img src="https://github.com/user-attachments/assets/163d8447-c319-41f2-a109-618ddec6fccd" width="300">


Aquestes tal com el seu nom indica, permeten o compilar i executar fortran, o sols compilar, o executar gnuplot, o generar les carpetes 'data', 'exes' i 'out' automàticament. 

Nota: Si voleu treballar sense aquest *workflow* de carpetes 'data', 'exes' i 'out', sentiu-vos lliures de canviar el codi de `tasks.json` pel que més us agradi.

D'aquesta manera un/a pot programmar molt més ràpidament sense haver d'estar escrivint a la terminal constantment.
## Opcional: Personalitzar el VS Code
Ara aquest projecte és teu, en el sentit que els canvis que facis es guardaran en el teu *codespace* i ningú més els veurà. Si vols pots personalitzar com vulguis l'entorn de treball (i evidentment també pots modificar tots els fitxers que vulguis). A continuació algunes coses típiques que potser voldríeu personalitzar.
### Utilitzar una drecera de teclat per compilar
Si voleu, també es pot configurar que prement <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>B</kbd> es compili i executi directament el fitxer que teniu obert (ja sigui Fortran o Gnuplot), i que amb <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>B</kbd> es generin les carpetes (si és que no existeixen ja).

Les dreceres de teclat, així com el color de tema i d'altres, són personalitzacions de l'usuari (no es poden configurar en el repositori de GitHub), així que ara explicarem com configurar-les manualment.

Primer caldrà que accediu al fitxer `keybindigs.json`. Per a fer-ho aneu a les tres barres a sobre de l'icona de l'explorador, a continuació 'Fitxer', 'Preferències', i cliqueu l'opció 'Keyboard Shortcuts'. Se us obrirà un fitxer amb totes les dreceres de teclat.

<details><summary>Imatge d'ajuda</summary>

<img width="500" alt="Obrir els Keyboard Shortcuts" src="https://github.com/user-attachments/assets/038ad73d-a7b6-40ad-ab0a-83d5e56e6f00">

</details>

Ara cliqueu al botó de la part superior dreta de la finestra principal que serveix per canviar entre visualització i codi font (per exemple també serveix per canviar entre el codi d'un fitxer markdown i la seva correcta visualització). 

<img width="150" alt="canvi-souruce" src="https://github.com/user-attachments/assets/5ea89499-e257-4542-b03c-8999db6b4208">

Se us obrirà el fitxer `keybindigs.json`, borreu el que sigui que hi hagi i poseu-hi el següent codi en funció del vostre sistema operatiu:
#### Per a Windows o Linux
<details><summary>Codi</summary>
  
```
// Si vols pots modificar aquestes dreceres canviant la 'key'.
[
  {
    "key": "Ctrl+Shift+B",
    "command": "workbench.action.tasks.runTask",
    "when": "resourceExtname == .f90 || resourceExtname == .f || resourceExtname == .f95",
    "args": "Build & Run Fortran"
  },
  {
    "key": "Ctrl+Shift+B",
    "command": "workbench.action.tasks.runTask",
    "when": "resourceExtname == .gnu",
    "args": "Run Gnuplot"
  },
  {
    "key": "Ctrl+Alt+B",
    "command": "workbench.action.tasks.runTask",
    "when": "resourceExtname == .f90 || resourceExtname == .f || resourceExtname == .f95 || resourceExtname == .gnu",
    "args": "Create Folders"
  },
]
```

</details>

#### Per a Mac
<details><summary>Codi</summary>
  
```
// Si vols pots modificar aquestes dreceres canviant la 'key'.
[
  {
    "key": "Cmd+Shift+B",
    "command": "workbench.action.tasks.runTask",
    "when": "resourceExtname == .f90 || resourceExtname == .f || resourceExtname == .f95",
    "args": "Build & Run Fortran"
  },
  {
    "key": "Cmd+Shift+B",
    "command": "workbench.action.tasks.runTask",
    "when": "resourceExtname == .gnu",
    "args": "Run Gnuplot"
  },
  {
    "key": "Cmd+Alt+B",
    "command": "workbench.action.tasks.runTask",
    "when": "resourceExtname == .f90 || resourceExtname == .f || resourceExtname == .f95 || resourceExtname == .gnu",
    "args": "Create Folders"
  },
]
```

</details>

Ara hauríeu de poder executar el fitxer que teniu obert (ja sigui de Fortran o de Gnuplot) mitjançant la drecera de teclat <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>B</kbd> per Windows i Linux, i <kbd>&#8984;</kbd>+<kbd>Shift</kbd>+<kbd>B</kbd> per Mac. I també generar les carpetes 'data', 'exes' i 'out' automàticament fent servir <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>B</kbd> per Windows i Linuxs, i <kbd>&#8984;</kbd>+<kbd>Alt</kbd>+<kbd>B</kbd>) per Mac. Nota mnemotècnica: Per la drecera utilitzem 'B' de 'Build'.

Si voleu podeu canviar aquestes dreceres per unes altres, simplement heu de canviar la `key` del `keybindings.json`.
### Canviar el tema
Pots canviar el tema clicant l'icona de "Settings" després a "Temes" i "Tema de Color". Tria el que més t'agradi.
### Canviar les icones
Es poden canviar les icones de fitxers i carpetes de l'extensio 'Material Icon Theme'. El canvi que nosaltres farem és el següent

<img width="600" src="https://github.com/user-attachments/assets/8a627d24-aea6-44a9-a5f1-bc794295e06b">

Si vols fer aquesta personalització (o una altra similar) segueix les instruccions del desplegable.
<details>
  <summary>Com canviar les icones de fitxers i carpetes</summary>
  Primer busquem de nou l'extensió i obrim la seva configuració ('Configuració de  l'Extensió').

 <img width="500" src="https://github.com/user-attachments/assets/bb196927-7dac-4801-bbcb-65e39faa6e4a">

  A continuació fixa't en l’opció ‘Custom Clones’ i clica ‘Edit in settings.json’. S'obrira un fitxer json que conté els ajustaments d’usuari (la personalització gràfica del vostre vscode).

 <img width="500" src="https://github.com/user-attachments/assets/7031d79f-2a67-4ffd-80b1-9fb5ebfff1dd">

Borra el codi que hi hagi i enganxa-hi el següent:
```
{
    "workbench.iconTheme": "material-icon-theme",
    "material-icon-theme.folders.customClones": [
    {
        "name": "dades-carpeta",
        "base": "folder-content", // opció alternativa: "folder-database"
        "color": "#009688", // Blau per 'data'
        "folderNames": ["data"]
    },
    {
        "name": "exes-carpeta",
        "base": "folder-config", // opció alternativa: "folder-command"
        "color": "#360900", // Vermell fosc per 'exes'
        "folderNames": ["exes"]
    },
    {
        "name": "out-carpeta",
        "base": "folder-environment", // opció alternativa: "folder-images"
        "color": "#2bb302", // Verd per 'out'
        "folderNames": ["out"]
    }
    ],
    "material-icon-theme.files.customClones": [
    {
        "name": "imatge-png",
        "base": "image",
        "color": "#42ab22", // Verd per les imatges
        "fileExtensions": ["png","jpg","jpeg","plt","gif","ico"]
    },
    {
        "name": "fitxer-gnuplot",
        "base": "gleam", // Altres opcions: 'fastlane', 'deepsource', 'sas', 'graphql',
        // 'cmake', 'matlab', 'svg', 'julia', 'nuxt', 'gleam', 'prisma', 'proto'
        "color": "#b00cc2", // Rosa-púrpura
        "fileExtensions": ["gnu"]
    }
    ],
    "material-icon-theme.folders.color": "#e0c810" // Groc (Color carpeta normal)
}
```
Ara guarda el fitxer (Ctrl+S) i reinicia el _codespace_, és a dir tanca la pestanya i torna a obrir-la des del repositori de GitHub. Hauries de veure el canvi d'icones.
</details>

### Afegir altres extensions 
També pots afegir les extensions que consideris. Per a fer-ho busca-les en la pestanya lateral "Extensions" (<kbd>Ctrl</kbd>+<kbd>Majús</kbd>+<kbd>X</kbd>), instal·la-les i comprova que realitzen la funció que vols.

Nota: Si no suprimíssis mai el *codespace* en el que estàs treballant podries fer servir sempre aquestes noves extensions. Tot i així per si de cas un dia el volguéssis reiniciar des de zero, és millor que les acabis d'instal·lar bé. Segueix els següents passos:
1. Busca l'extensió que vols afegir al [VS Code Marketplace](https://marketplace.visualstudio.com/vscode)
2. Un cop dins la pàgina de l'extensió fixa't en la URL. Copia el que ve després de "Name=Url", per exemple pel Modern Fortran seria `fortran-lang.linter-gfortran`.
3. Afegeix l'extensió al fitxer `devcontainer.json` (que es troba dins de la carpeta `.devcontainer`). L'has d'afegir dins la part d'`extensions` en una nova línia.
  
   Nota: vigila no et deixis la coma al final de la línia anterior per tal que el JSON tingui el format correcte.
## Guardar els canvis
### Com guardar els canvis a GitHub
Un cop hagis afegit, suprimit, o modificat arxius, segurament vulguis guardar els canvis (no en el *codespace*, que es fa automàticament sinó) en el teu repositori de GitHub. Per a fer-ho has d'anar a la pestanya lateral anomenada "Control d'Orígen"  (<kbd>Ctrl</kbd>+<kbd>Majús</kbd>+<kbd>G</kbd>) i prémer el botó blau de 'Confirmació' de canvis.

<img width="300" src="https://github.com/user-attachments/assets/958c759a-25e3-4253-9509-4b0559b4ca9a">

Aquest botó el que fa és posar en escena (*stage*) els canvis. Automàticament s'obrirà una finestreta de confirmació en què ens pregunten si volem posar en escena directament tots els canvis (enlloc de sols alguns), li donem a 'Sí' o a 'Sempre' (si no volem que ens torni a sortir).

Analogia: Imaginem que estem fent una mudança, cada objecte del pis seria un canvi, quan posem els objectes en caixes que ens volem endur els estem posant en escena (*stage*). Per exemple potser tenim dos fitxers modificats, però sols volem que s'actualitzi el codi (en el repositori) d'un dels dos, o potser tenim dues caixes de la mudança, però només ens en volem endur una.

Si no volguéssim posar en escena tots els canvis, seleccionaríem només els que volguéssim i després li donaríem a confirmar. Un cop apretat el botó blau de "Confirmació" se'ns obrirà un fitxer git i hi haurem d'inserir un missatge a la línia superior sobre quins canvis hem realitzat (en l'analogia de la mudança seria com posar una etiqueta a la caixa, per exemple 'Objectes Lavabo'). El missatge no és important, és per nosaltres i prou, però per procedir és necessàri posar alguna cosa, sigui la que sigui. 

<img width="650" alt="missatge commit" src="https://github.com/user-attachments/assets/34d79ddc-a6f8-4f3a-b12b-c7460593b01e">

Un cop escrit el missatge li donem al tick que té el fitxer a dalt a la dreta, i se'ns guardarà. A la barra lateral ens apereixerà un botó per "Sincronitzar canvis" (fer *commit* als canvis seleccionats).

<img width="350" src="https://github.com/user-attachments/assets/043367f6-8f34-4019-915e-415583d3b008">

Segurament se'ns obri un missatge de confirmació, li donem a "Ok, don't show again".

I ja estaria, si anem al repositori de GitHub hauríem de veure els canvis actualitzats correctament, i els fitxers modificats haurien de tenir al seu costat el missatge que hem escrit abans.

### Com guardar els fitxers individuals localment
Sempre podem seleccionar qualsevol arxiu de codi que tinguem obert i guardar-lo en local anant a les tres barres laterals, a 'Fitxer', 'Desa com a' i després clicant el botó blau 'Mostra local'.

<details><summary>Imatge d'exemple</summary>
<img width="700" src="https://github.com/user-attachments/assets/addeb77e-4521-4abc-9fb1-0cd7b3c366c4">

I després cliquem 'Mostra local'.

<img width="400" src="https://github.com/user-attachments/assets/cb497472-0455-4df8-af16-b803be0bc95c">

</details>


### Com guardar carpetes senceres localment 
Si volem guardar-nos tota la pràctica (o la carpeta amb tots els nostres programes, o qualsevol carpeta o directori que vulguem), simplement hem de trobar l'URL del directori en el repositori de GitHub (serà al estil `https://github.com/Nom-Usuari/nom-repositori/tree/main/Nom-Carpeta`) i després enganxar-la dins la següent web: [https://download-directory.github.io](https://download-directory.github.io).

<img width="350" src="https://github.com/user-attachments/assets/44a7fc22-0f6c-4094-bfd3-f89421d6790a">

Un cop hi posem l'URL i premem <kbd>Enter</kbd>, automàticament es descarregarà la nostra carpeta comprimida en arxiu zip.

## Altra informació rellevant
### Límits del pla gratuït.
En el pla gratuït normal es disposen de 60h de computació al mes per fer anar els teus *codespaces*. Pel pla de GitHub per estudiants es disposen de 180h. El més probable és que en cap dels dos casos exhauriu les hores de computació (hi hauríeu d'estar realment moltes hores).

Podeu veure les hores de computació que us queden per utilitzar aquí: [https://github.com/settings/billing/summary](https://github.com/settings/billing/summary).
### Com aturar, reanudar, reconstruir i suprimir un *codespace*
Per defecte un *codespace* s'atura als 30 minuts d'inactivitat. Si voleu també el podeu parar manualment perquè no vagi gastant (tot i que de nou, no cal), i per reanudar-lo només l'heu de tornar a obrir.

Quan suprimiu un *codespace*, aquest perd la informació dels canvis que no havíeu sincronitzat encara a GitHub. Quan el torneu a crear, haureu d'esperar que es tornin a instal·lar les extensions, i caldrà tornar a instal·lar fortran i gnuplot de nou, així doncs és millor no suprimir un *codespace* si no és necessàri. A priori els *codespaces* no caduquen, és a dir poden durar indefinidament en el temps... tot i així els de GitHub t'envien un correu quan han passat dos mesos d'inactivitat, demanant-te que siusplau hi tornis a entrar si el vols conservar.

Podeu tenir *codespaces* en repositoris que no són vostres, i fins i tot podeu tenir diversos *codespaces* en un mateix repositori.

Aquí més informació sobre el tema: [GitHub Docs - Understanding the codespace lifecycle](https://docs.github.com/en/codespaces/getting-started/understanding-the-codespace-lifecycle).

### Com funciona a nivell tècnic aquest repositori
#### Què hi ha en la carpeta .devcontainer?
En la carpeta `.devcontainer` es troba la configuració del *codespace* que instal·la el compilador `gfortran` i les extensions Modern Fortran, Gnuplot, PDF Viewer, Material Icon Theme i Task Runner de manera automàtica.
Després manualment instal·lem el Gnuplot, que tarda bastant més (2-5min) i així podem anar programant mentrestant.
#### Què hi ha en la carpeta .vscode?
En la carpeta `.vscode`  hi ha, dins de `settings.json`, alguns ajustaments de l'editor de text per tal d'evitar notificacions molestes innecessàries, i dins de `tasks.json`, la configuració de tasques per poder compilar i executar fortran i gnuplot sense haver d'escriure a la terminal.
