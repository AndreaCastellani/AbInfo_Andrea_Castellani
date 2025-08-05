All'interno di questa repository sono contenuti gli esercizi d'esame per il corso di Abilità Informatiche (4 esercizi in bash e 1 esercizio in Python).
All'interno della cartella 'Bash_scripts' sono contenute le cartelle relative ai 4 esercizi in bash (esercizi 1-5-6-7), con all'interno i corrispondenti script, mentre all'interno della cartella 'Python_script' è contenuto lo script dell'esercizio in Python.

ISTRUZIONI PER L'ESECUZIONE:

Scaricare le cartelle 'Bash_scripts' e 'Python_script'

SCRIPT IN BASH:\
All'interno della cartella 'Bash_scripts', rendere eseguibili gli script usando il comando:
chmod +x ex1/ex1.sh ex5/ex5.sh ex6/ex6.sh ex7/ex7.sh

Selezionare un esercizio (entrando nella relativa cartella) ed eseguirlo con './ex*.sh' (* indica il numero dell'esercizio)

SCRIPT IN PYTHON:\
Aprire il file 'Abilita_informatiche.ipynb' ed eseguire il codice

INFORMAZIONI SUGLI ESERCIZI:

EX1:\
Questo script crea 5 file all'interno della cartella 'ex1', li ordina all'interno di un array e li rinomina con la data odierna.
Verranno mostrati in standard output i nomi dei file prima e dopo la modifica.

EX5:\
Questo script crea un file all'interno della cartella 'ex5', contenente una colonna di numeri da 1 a 10, e calcola la somma di tali numeri.
Verrà mostrato in standard output il valore calcolato della somma e confrontato con il valore ottenuto sfruttando la formula di Gauss.

EX6:\
Questo script crea un file all'interno della cartella 'ex6', contenente 'memory requirements', e modifica il valore di MaxMem all'interno del file.
Verranno mostrati in standard output il file originale e il file modificato.

EX7:\
Questo script estrae informazioni sull'architettura della CPU in uso e le copia all'interno del file 'lscpu.txt', nella cartella 'ex7'.
Viene inoltre creato un ulteriore file ('CPU_arch.txt') contenente solo informazioni su 'CPU name', 'Threads', 'Cores' e 'NUMAs'.
Verranno mostrati in standard output le informazioni ricavate e copiate su file.

PYTHON SCRIPT:\
Questo script carica un file contenente dati riguardanti aloni o strutture cosmologiche e lo analizza in vari punti.
Per prima cosa viene mostrato un plot che confronta la massa di DM (dark matter) e la massa barionica associate a ogni alone. A questo plot viene aggiunto un fit lineare.
Il secondo punto crea un plot mettendo in relazione la massa totale di ogni alone con la sua distanza dall'alone più massivo.
Successivamente viene creato un istogramma che mostra la distribuzione degli aloni in funzione della loro massa di DM. Vengono inoltre aggiunti anche i valori di media e mediana.
Il quarto punto richiede la creazione di un plot che contenga la distribuzione degli aloni proiettata sui piani xy (pannello alto-sx), zy (pannello alto-dx) e xz (pannello bassa-sx). Le dimensioni (riscalate) degli aloni identificano la loro massa stellare, mentre il colore identifica la loro massa di gas.
Il punto successivo crea un plot in cui vengono confrontate le masse di BH (black hole) e le masse stellari di tutti gli aloni con una massa di BH sopra una certa soglia. A questo plot vengono aggiunti due fit (lineare e a legge di potenza).
Infine viene mostrato l'istogramma cumulativo che mette in relazione il numero di aloni in funzione della loro massa e della loro distanza da un alone massivo. Per questo istogramma sono stati considerati solo gli aloni con una massa totale sopra una certa soglia e sono stati selezionati i 5 aloni più massivi per calcolare le distanze. Per ognuno di questi aloni massivi è stato creato un istogramma, e la somma dei 5 istogrammi definisce l'istogramma cumulativo richiesto.
Tutti i plot prodotti all'intero di questo script vengono salvati all'interno della cartella contentente lo script stesso e il file dati.

