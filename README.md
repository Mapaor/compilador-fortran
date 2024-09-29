## Benvingut a aquesta guia!
Si ja estàs dins del Codespace, segueix llegint [aquí](#un-cop-dins-del-codespace).
## Què és el que volem aconseguir?
El que nosaltres volem és tenir un entorn on poder **compilar Fortran i Gnuplot de manera online** sense haver d'instal·lar ni configurar res. El mètode que seguirem ens permetrà tenir un link permanent en el qual tenim els nostres fitxers ordenats per carpetes, podem visualitzar PDFs, fitxers de dades, imatges, etc.

Bàsicament tenir una **versió idèntica del Visual Studio Code** per la web que ens permet programmar sense masses complicacions si no estem davant del nostre ordinador habitual.
<details>
  <summary>Aquí podeu veure un vídeo demo</summary>
  Bla bla
</details>

Aquest mètode també pot servir a mòde de *back-up* per si un dia no us funcionés l'ordinador o tinguéssiu un problema tècnic. D'aquesta manera seguiríeu tenint accés a les vostres subrutines i als vostres programes amb la possibilitat d'editar-los, executar-los i guardar-los (tan al repositori de GitHub com de manera local).

## Procés (és molt ràpid!)
### 1. Crea't un compte de GitHub o inicia la sessió
Si ja tens un usuari [inicia la sessió](https://github.com/login), sinó [registra't](https://github.com/signup).

Consell: Si us registreu amb el correu de la uni i més endavant realitzeu la sol·licitud per tenir [Student Benefits](https://fisicaubwiki.notion.site/Utilitzar-la-IA-GitHub-Copilot-d25a3dd6dd384b0ea4586a309a5b0fdc), obtindreu el pla GitHub Pro gratuïtament i us permetrà augmentar bastant la velocitat dels vostres Codespaces així com les hores totals de computació que podeu fer servir cada mes (només us caldria si ho féssiu servir molt sovint).
### 2. Clica el botó verd "Use this template"
A dalt a la dreta del repositori tens un botó verd, el qual és un desplegable en el qual pots triar o l'opció "Open in a codespace" (Si simplement volguéssis veure que efectivament es pot compilar en aquell espai) o l'opció "Create a new repository", que és la que seguirem en aquesta guia i et permetrà tenir un entorn permanent en el que poder compilar i que podràs personalitzar com vulguis i posar-hi tots els teus fitxers.

Per l'opció "Create a new repository" si vols pots simplement clicar el següent botó:

[![Create a new repository](https://img.shields.io/badge/Use_this_Template-green.svg)](https://github.com/Mapaor/compilador-fortran/generate)

És 
 
## Un cop dins del Codespace
### Felicitats
Molt bé, felicitats. Ara mentre esperes que s'acabin d'instal·lar les extensions i el gfortran (aprox 1 min) pots anar llegint la resta del README.
### L'espai de treball
De la mateixa manera que en el VSCode per escriptori, disposem d'una barra lateral 
### 3. Instal·lar gnuplot
Bla bla
## Extra: Com funciona a nivell tècnic
### Carpeta .devcontainer
En la carpeta `.devcontainer` es troba la configuració del Codespace que instal·la el compilador `gfortran` i les extensions Modern Fortran, Gnuplot, PDF Viewer i Material Icon Theme de manera automàtica.
Després manualment instal·lem el Gnuplot, que tarda bastant més (2-5min) i així podem anar programant de mentres.
### Carpeta .vscode
## Extra: TIPS pel VSCode
### Canviar el tema
- Pots canviar el tema clicant l'icona de "Settings" després a "Temes" i "Tema de Color". Tria el que més t'agradi.
- Pots afegir les extensions que consideris. Per a fer-ho busca-les i instala-les, comprova que realitzen la funció que vols.

  Nota: Si no borrésis mai el Codespace en el que estàs podrien fer servir aquesta extensió sempre que vulguis. Tot i així per si de cas volguéssis un dia reiniciar des de zero el Codespace, és millor que la instal·lis bé. Segueix els següents passos:
  1. Busca-la al [VS Code Marketplace](https://marketplace.visualstudio.com/vscode)
  2. Un cop dins la pàgina de l'extensió fixa't en la URL. Copia el que ve després de "Name=Url", per exemple pel Modern Fortran seria `fortran-lang.linter-gfortran`.
  3. Afegeix l'extensió al fitxer `devcontainer.json` (que es troba dins de la carpeta `.devcontainer`) en la part de `extensions` en una nova línia al final de tot.
  4. 
     Nota: No oblidis deixar-te la coma al final de la línia anterior per tal que el JSON tingui el format correcte!

---------
## Antic
Allà hi desactivem algunes coses que molestarien a l'usuari, triem un tema per defecte i facilitem el fet de compilar i executar el codi.
Un/a només pot executar un repositori com a codespace si n'és el propietari. Per a fer-ho cal que clonis aquest repositori. 
<details>
<summary>Com clonar un repositori?</summary>
  1. Cliques a "fork" a dalt a la dreta.
  
  <img width="941" alt="fork_example" src="https://github.com/user-attachments/assets/837b49ec-72d8-4697-972d-3f07d4ffebdd">
  
  2. Si vols li dones un nom diferent (el repositori serà una còpia idèntica, però serà la teva còpia, pots fer amb ella el que vulguis) o si vols deixes el nom per defecte. Li dones al botó verd de "Create Fork".

  <img width="571" alt="Screenshot 2024-09-28 at 23-28-54 Fork Mapaor_compilador-fortran" src="https://github.com/user-attachments/assets/255c396c-483b-4224-8591-98c7cb50c671">
  
  Tardarà uns pocs segons a crear-lo i de seguida tindràs un nou repositori en el teu perfil. 
</details>

Ara mira't aquest README des del TEU repositori.
### 2. Executar el Codespace
Crea un nou Codespace a partir del teu repositori.
<details>
<summary>Com crear un Codespace a partir d'un repositori?</summary>
  Simplement obra el desplegable "Code" i en la pestanya "Codespaces" clica el botó que és un '+'.
  
  ![imatge](https://github.com/user-attachments/assets/25ea5146-3311-4f8a-909d-3bfdeac733c4)
</details>

Nota: Podria ser que et donés network error.
<details>
<summary>Què fer si em dona error?</summary>
  Segurament sigui degut a que tens un ad-blocker o una extensió que restringeix alguna funcionalitat del navegador, o ho estàs obrint en una pestanya d'incògnit. Prova a descativar temporalment alguna de les extensions o canviar de navegador.
</details>
