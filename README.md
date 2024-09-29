## Benvingut a aquesta guia!
Si ja estàs dins del *codespace*, segueix llegint [aquí](#qu%C3%A8-fer-un-cop-dins-del-codespace).
## Què és el que volem aconseguir?
El que nosaltres volem és tenir un entorn on poder **compilar Fortran i Gnuplot de manera online** sense haver d'instal·lar ni configurar res. El mètode que seguirem ens permetrà tenir un link permanent en el qual tenim els nostres fitxers ordenats per carpetes, podem visualitzar PDFs, fitxers de dades, imatges, etc.

Bàsicament tenir una **versió idèntica del Visual Studio Code** per la web que ens permet programmar sense masses complicacions si no estem davant del nostre ordinador habitual.

Aquest mètode també pot servir a mòde de *back-up* per si un dia no us funcionés l'ordinador o tinguéssiu un problema tècnic. D'aquesta manera seguiríeu tenint accés a les vostres subrutines i als vostres programes amb la possibilitat d'editar-los, executar-los i guardar-los (tan al repositori de GitHub com de manera local).

### Exemple
Aquí pots veure com amb quatre clicks un/a pot compilar Fortran i Gnuplot en línia.
<details>
  <summary>Vídeo tutorial d'exemple</summary>
  
  

https://github.com/user-attachments/assets/8b3e09ae-d44b-4f6f-958c-14e8d71a3cb1


  
</details>

## Procés per entrar en el *codespace* (és molt ràpid!)

### 1. Crea't un compte de GitHub o inicia la sessió
Si ja tens un usuari [inicia la sessió](https://github.com/login), sinó [registra't](https://github.com/signup).

Consell: Si us registreu amb el correu de la uni i més endavant realitzeu la sol·licitud per tenir [Student Benefits](https://fisicaubwiki.notion.site/Utilitzar-la-IA-GitHub-Copilot-d25a3dd6dd384b0ea4586a309a5b0fdc), obtindreu el pla GitHub Pro gratuïtament i us permetrà augmentar bastant la velocitat dels vostres *codespaces* així com les hores totals de computació que podeu fer servir cada mes (realment només us caldria si ho féssiu servir molt sovint).
### 2. Clica el botó verd "Use this template"
A dalt a la dreta del repositori tens un botó verd. És un desplegable en el qual pots triar o l'opció "Open in a codespace" (si simplement volguéssis veure que efectivament es pot compilar des d'un *codespace*) o l'opció "Create a new repository", que és la que seguirem en aquesta guia i et permetrà tenir un entorn permanent en el que poder compilar i que podràs personalitzar com vulguis i posar-hi tots els teus fitxers.

Per anar més ràpid (opció "Create a new repository") aquí tens una versió del mateix botó. 

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
De la mateixa manera que en el VSCode per escriptori, disposem d'una barra lateral en la que tenim els nostres fitxers i podem canviar (funciona per pestanyes) al mode "Extensions" per buscar i afegir-ne una o al mode "Workspace" (on tenim els nostres arxius), entre d'altres.

Tenim també una finestra principal en la que tenim diferents pestanyes (com un navegador). Segurament ara està oberta [Visualització prèvia | README.md]. Si despleguem la carpeta PRACTIQUES-FORTRAN i cliquem l'arxiu "prova.f90" hauríem de veure com se'ns obra en aquesta finestra principal en una nova pestanya.

Per últim tenim un bucador a dalt al mig i una finestra inferior on hi tenim la Terminal (i altres eines). Si en algun moment tanquem accidentalment aquesta finestra sempre la podem recuperar buscant `>Terminal` en el buscador.

Nota: La diferència entre buscar `text` i buscar `>text` és important. Són dues cerques diferents. Per més informació: [VS Code - User Interface](https://code.visualstudio.com/docs/getstarted/userinterface).
### Abans de tot, comprovar que s'ha instal·lat fortran correctament
Escriu en la terminal el següent comandament
```
gfortran --version
```
Si et retorna el número de versió és que s'ha instal·lat correctament. 

També ho pots comprovar compilant l'arxiu "prova.f90".
1. `cd PRACTIQUES-FORTRAN` (Entrem dins de la carpeta PRACTIQUES-FORTRAN)
2. `gfortran -o prova prova.f90` (Compilem l'arxiu)
3. `./prova` (Executem l'executable)

Si veiem un `Hello World!` en la consola és que ha funcionat correctament, i de passada hem aprés a compilar i executar des de la terminal.

Pots aprendre a altres commandaments útils de la terminal [aquí](https://fisicaubwiki.notion.site/Instal-lar-Fortran-i-Gnuplot-per-Mac-XCode-i-VSCode-10e11a9761ab80f49c23f87a4c490d68#10e11a9761ab805899e5d8f1efc14684). (Fes <kbd>Ctrl</kbd>+<kbd>Click</kbd>).
### Instal·lar gnuplot
Abans hem dit una petita mentida, hem dit que no s'havia d'instal·lar res. Si bé això és cert per Fortran, s'ha optat per no instal·lar Gnuplot (ja que tarda uns 2-5 minuts) i podria fer més difícil l'experiència inicial per un usuari que acaba d'entrar al *codespace*.

Per a fer-ho simplement escriu a la terminal el següent:
```
sudo DEBIAN_FRONTEND=noninteractive apt install -y gnuplot
```

Quan acabi ja podem comprovar que funciona generant un gràfic compilant el programa "fig1.gnu". Si mirem el codi d'aquest arxiu veurem que utilitza les dades que es troben a `data/dades.dat`, les quals són una simple $y=x^2$ pels 9 primers enters. Generarem el gràfic fent:

```
gnuplot fig1.gnu
```

A dins de la carpeta `/out` s'hauria d'haver creat un fitxer `fig1.png` si el cliquem hauríem de veure una imatge com la següent

![fig1](https://github.com/user-attachments/assets/70fda62b-5cc7-4103-8024-c661c6a17d7d)


Si hem arribat fina aquí ja estaria, tot funciona correctament. I el millor és que ara sempre que torneu a entrar en el vostre *codespace* ja hi haurà gnuplot instal·lat, així com tots els canvis que aneu fent (tan d'arxius com de configuració/personalització).
## Informació rellevant
Ús del Codespace i límits del pla gratuït, com aturar, reanudar i suprimir un *codespace*. Bla bla.
## Extra: Com funciona a nivell tècnic
### Carpeta .devcontainer
En la carpeta `.devcontainer` es troba la configuració del *codespace* que instal·la el compilador `gfortran` i les extensions Modern Fortran, Gnuplot, PDF Viewer i Material Icon Theme de manera automàtica.
Després manualment instal·lem el Gnuplot, que tarda bastant més (2-5min) i així podem anar programant de mentres.
### Carpeta .vscode
Per evitar notificacions molestes innecessàries.
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
