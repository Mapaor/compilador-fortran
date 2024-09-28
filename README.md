## Si ja estàs dins del Codespace, segueix llegint [aquí]([https://github.com/Mapaor/compilador-fortran](https://github.com/Mapaor/compilador-fortran?tab=readme-ov-file#extra-com-funciona-a-nivell-t%C3%A8cnic))
## Benvigut a aquesta guia! Què és el que volem aconseguir?
El que nosaltres volem és tenir un entorn en el que poder compilar Fortran i Gnuplot i treballar amb fitxers de dades, imatges, PDFs... Bàsicament tenir una versió idèntica del Visual Studio Code a la web sense haver d'instal·lar res.
<details>
  <summary>Aquí podeu veure un vídeo de demostració</summary>
  Bla bla
</details>

## Procés (és molt ràpid!)
### 1. Crea't un compte de GitHub o inicia la sessió
### 2. Clica el botó verd "Use this template" de dalt a la dreta
Si simplement vols veure que efectivament es pot compilar selecciona "Open in a codespace". Si vols crear-ho de manera que ja et serveixi per sempre clica "Create a new repository".

Clica al següent botó:

[![Executa el Codespace d'aquest repositori](https://github.com/codespaces/badge.svg)](https://codespaces.new/Mapaor/compilador-fortran?quickstart=1)
 
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
