## Benvingut a aquesta guia!
Si ja estàs dins del *codespace*, segueix llegint [aquí](#qu%C3%A8-fer-un-cop-dins-del-codespace).
## Què és el que volem aconseguir?
El que nosaltres volem és tenir un entorn on poder **compilar Fortran i Gnuplot de manera online** sense haver d'instal·lar ni configurar res. El mètode que seguirem ens permetrà tenir un link permanent en el qual tenim els nostres fitxers ordenats per carpetes, podem visualitzar PDFs, fitxers de dades, imatges, etc.

Bàsicament tenir una **versió idèntica del Visual Studio Code** per la web que ens permeti programmar sense masses complicacions encara que no estiguem estem davant del nostre ordinador habitual.

Aquest mètode també pot servir a mode de *back-up* per si un dia no us funcionés l'ordinador o tinguéssiu un problema tècnic. D'aquesta manera seguiríeu tenint accés a les vostres subrutines i als vostres programes amb la possibilitat d'editar-los, executar-los i guardar-los (tan al repositori de GitHub com de manera local).

### Exemple
Aquí pots veure com amb un sol click un/a pot compilar Fortran i Gnuplot sense haver d'instal·lar res.

*gravar pantalla directament amb GIF*

I aquí tens un video tutorial d'exemple per si et perds seguint aquesta guia. 
<details>
  <summary>Vídeo tutorial d'exemple</summary>
  

https://github.com/user-attachments/assets/8b3e09ae-d44b-4f6f-958c-14e8d71a3cb1

  
</details>

## Procés per entrar en el *codespace* (és molt ràpid!)

### 1. Crea't un compte de GitHub o inicia la sessió
Si ja tens un usuari [inicia la sessió](https://github.com/login), sinó [registra't](https://github.com/signup).

Consell: Si us registreu amb el correu de la uni i més endavant realitzeu la sol·licitud per tenir [Student Benefits](https://fisicaubwiki.notion.site/Utilitzar-la-IA-GitHub-Copilot-d25a3dd6dd384b0ea4586a309a5b0fdc), obtindreu el pla GitHub Pro gratuïtament i us permetrà augmentar bastant la velocitat dels vostres *codespaces* així com les hores totals de computació que podeu fer servir cada mes (realment només us caldria si ho féssiu servir molt sovint).
### 2. Clica el botó verd "Use this template"
A dalt a la dreta del repositori tens un botó verd que et permet crear un nou repositori a partir d'aquesta *template*. Per anar més ràpid, aquí tens una versió del mateix botó. 

Consell: Fes <kbd>Ctrl</kbd>+<kbd>Click</kbd> o <kbd>&#8984;</kbd>+<kbd>Click</kbd> per obrir-ho en una pestanya nova.

[![Create a new repository](https://img.shields.io/badge/Use_this_Template-green.svg)](https://github.com/Mapaor/compilador-fortran/generate)

El que estàs fent ara és clonar (*fork* en slang de GitHub) el meu repositori i crear-ne un idèntic (una còpia que serà teva i podràs fer amb ella el que vulguis).

Si vols li dones un nom diferent o si vols deixes el nom per defecte. Després li dones al botó verd de "Create Fork" a baix a la dreta.

<details>
  <summary>Imatge d'exemple</summary>
  <img width="571" alt="Screenshot 2024-09-28 at 23-28-54 Fork Mapaor_compilador-fortran" src="https://github.com/user-attachments/assets/255c396c-483b-4224-8591-98c7cb50c671">
</details>

Tardarà uns segons i de seguida tindràs un nou repositori en el teu perfil. Ara mira't aquest README des del TEU repositori.

### 3. Genera el *codespace*
Ara simplement crea un nou *codespace* a partir del teu repositori. 

Per a fer-ho obre el desplegable verd "Code" del repositori i en la pestanya "Codespaces" clica el botó que és un '+'.
<details>
<summary>Imatge d'exemple</summary>
  <img width="349" alt="new_code_space" src="https://github.com/user-attachments/assets/737c9403-63fe-4c9a-86bf-1b472c894501">
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
L'entorn és idèntic al VS Code per escriptori. Disposem d'una barra lateral en la que trobem els nostres fitxers dins la pestanya "Explorador" (<kbd>Ctrl</kbd>+<kbd>Majús</kbd>+<kbd>E</kbd>), o si volem també podem buscar i instal·lar extensions en la pestanya "Extensions" (<kbd>Ctrl</kbd>+<kbd>Majús</kbd>+<kbd>X</kbd>), o publicar els canvis fets al respositori en la pestanya "Control d'Orígen"  (<kbd>Ctrl</kbd>+<kbd>Majús</kbd>+<kbd>M</kbd>), això ho explicarem [més endavant](#com-guardar-els-canvis-a-github).

Tenim també una finestra principal en la que ara estem llegint aquest README i a on editarem al nostre codi. Aquesta finestra funciona per pestanyes (com un navegador), quan obriu un arxiu (fitxer .f90 o .gnu per exemple) veurem que s'obre en una nova pestanya, la qual podem moure, tancar, etc.

Per últim tenim un buscador centrat a dalt i una finestra inferior on hi tenim la Terminal (entre d'altres eines). Si en algun moment tanquem accidentalment aquesta finestra sempre la podem recuperar buscant `>Terminal` en el buscador.

Nota: La diferència entre buscar `text` i buscar `>text` és important. Són dues cerques diferents. Per més informació: [VS Code - User Interface](https://code.visualstudio.com/docs/getstarted/userinterface).
### Abans de tot, comprovar que s'ha instal·lat fortran correctament
Escriu en la terminal el següent comandament
```
gfortran --version
```
Nota: pot ser que no et deixi enganxar a la terminal amb dreceres de teclat, fes servir de moment el botó dret i 'Enganxa'. Després si vols pots [configurar el teu navegador](https://code.visualstudio.com/docs/editor/vscode-web#_opening-new-tabs-and-windows) perquè sí que et deixi.

Si et retorna el número de versió és que s'ha instal·lat correctament. 

També ho pots comprovar compilant l'arxiu "prova.f90".
1. `cd PRACTIQUES-FORTRAN` (Entrem dins de la carpeta PRACTIQUES-FORTRAN)
2. `gfortran -o prova prova.f90` (Compilem l'arxiu)
3. `./prova` (Executem l'executable)

Si veiem un `Hello World!` en la consola és que ha funcionat correctament, i de passada hem aprés a compilar i executar des de la terminal.

Pots aprendre a altres commandaments útils de la terminal [aquí](https://fisicaubwiki.notion.site/10e11a9761ab80f49c23f87a4c490d68#10e11a9761ab805899e5d8f1efc14684).
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

A dins de la carpeta `/out` s'hauria d'haver creat un fitxer `fig1.png`, si el cliquem hauríem de veure una imatge com la següent:

![fig1](https://github.com/user-attachments/assets/70fda62b-5cc7-4103-8024-c661c6a17d7d)


Si hem arribat fins aquí ja estaria, tot funciona correctament. Ara sempre que torneu a entrar en el vostre *codespace* ja hi haurà gnuplot instal·lat, i els canvis que aneu fent (tan d'arxius com de configuració/personalització) també s'aniran guardant automàticament.

A continuació explicarem una última cosa, com compilar un arxiu fortran o gnuplot sense haver d'escriure els mateixos comandaments una vegada i una altra en la terminal.
### Compilar a partir del Task Runner
Si et fixes dins de l'Explorador hi tens les teves carpetes i arxius, però també hi tens un desplegable a la part inferior anomenat "Task Runner". Si el desplegues veuràs que hi ha les quatre tasques configurades en el fitxer `tasks.json` (dins de `.vscode`). 

![Build and run](https://github.com/user-attachments/assets/163d8447-c319-41f2-a109-618ddec6fccd)


Aquestes tal com el seu nom indica, permeten compilar i executar fortran i gnuplot, i també generar les carpetes 'data', 'exes' i 'out' automàticament. 

Nota: Si voleu treballar sense aquest *workflow* de carpetes, sentiu-vos lliures de canviar el codi de `tasks.json` pel que més us agradi.

D'aquesta manera un pot programmar molt més ràpidament sense haver d'estar escrivint a la terminal constantment.
### Opcional: Dreceres de teclat per compilar directament
Les dreceres de teclat, així com el color de tema i d'altres, són personalitzacions de l'usuari (no es poden configurar en el repositori de GitHub). Ara aprendrem com configurar-les per tal de poder compilar sense haver d'utilitzar cap commandament. 

Primer caldrà que accediu al fitxer `keybindigs.json`. Per a fer-ho aneu a les tres barres a sobre de l'icona de l'explorador, a continuació 'Fitxer', 'Preferències', i cliqueu l'opció 'Keyboard Shortcuts'. Se us obrirà un fitxer amb totes les dreceres de teclat.

<details><summary>Imatge d'ajuda</summary>

![imatge](https://github.com/user-attachments/assets/038ad73d-a7b6-40ad-ab0a-83d5e56e6f00)


</details>

Ara cliqueu al botó de la part superior dreta de la finestra principal, que serveix per canviar entre visualització i codi font (per exemple també serveix per canviar entre el codi d'un fitxer markdown i la seva correcta visualització) 

<img width="184" alt="canvi-souruce" src="https://github.com/user-attachments/assets/5ea89499-e257-4542-b03c-8999db6b4208">

Se us obrirà el fitxer `keybindigs.json`, borreu el que sigui que hi hagi i poseu-hi el següent codi en funció del vostre sistema operatiu:
#### Per a Windows o Linux
<details><summary>Codi</summary>
  
```
// Si vols també pots modificar aquestes dreceres canviant la 'key'.
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
// Si vols també pots modificar aquestes dreceres canviant la 'key'.
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

Ara hauríeu de poder executar el fitxer que teniu obert (ja sigui de Fortran o de Gnuplot) mitjançant la drecera de teclat <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>B</kbd> per Windows i Linux, i <kbd>&#8984;</kbd>+<kbd>Shift</kbd>+<kbd>B</kbd> per Mac. I per tal de generar les carpetes 'data', 'exes' i 'out' automàticament podeu fer servir <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>B</kbd> (o <kbd>&#8984;</kbd>+<kbd>Shift</kbd>+<kbd>B</kbd>). Nota mnemotècnica: Per la drecera utilitzem 'B' de 'Build'.

## Informació rellevant
Ús del Codespace i límits del pla gratuït, com aturar, reanudar i suprimir un *codespace*. Bla bla.
## Com guardar els canvis a GitHub
Bla bla
## Com guardar els fitxers localment
Bla bla
## Extra: TIPS pel VSCode
### Canviar el tema
Pots canviar el tema clicant l'icona de "Settings" després a "Temes" i "Tema de Color". Tria el que més t'agradi.
### Afegir altres extensions 
Pots afegir les extensions que consideris. Per a fer-ho busca-les, instal·la-les i comprova que realitzen la funció que vols.

Nota: Si no suprimíssis mai el *codespace* en el que estàs treballant podries fer servir sempre aquesta extensió. Tot i així per si de cas volguéssis un dia reiniciar des de zero el *codespace*, és millor que l'acabis d'instal·lar bé. Segueix els següents passos:
1. Busca-la al [VS Code Marketplace](https://marketplace.visualstudio.com/vscode)
2. Un cop dins la pàgina de l'extensió fixa't en la URL. Copia el que ve després de "Name=Url", per exemple pel Modern Fortran seria `fortran-lang.linter-gfortran`.
3. Afegeix l'extensió al fitxer `devcontainer.json` (que es troba dins de la carpeta `.devcontainer`) en la part de `extensions` en una nova línia al final de tot.
  
   Nota: No oblidis deixar-te la coma al final de la línia anterior per tal que el JSON tingui el format correcte!
## Extra: Com funciona a nivell tècnic
### Què hi ha en la carpeta .devcontainer?
En la carpeta `.devcontainer` es troba la configuració del *codespace* que instal·la el compilador `gfortran` i les extensions Modern Fortran, Gnuplot, PDF Viewer i Material Icon Theme de manera automàtica.
Després manualment instal·lem el Gnuplot, que tarda bastant més (2-5min) i així podem anar programant de mentrestant.
### Què hi ha en la carpeta .vscode?
En la carpeta `.vscode`  hi ha per una banda dins de `settings.json` alguns ajustaments del editor de text per tal d'evitar notificacions molestes innecessàries. I dins de `tasks.json` i `keybindings.json` la configuració per tal de poder compilar i executar fortran i gnuplot sense haver d'escriure-ho a la terminal.
