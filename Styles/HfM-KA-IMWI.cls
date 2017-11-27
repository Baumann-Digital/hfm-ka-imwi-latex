\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{HfM-KA-IMWI-HA}[2017/01/01 v1.0 Basic-Class for using LaTeX at University of Music Karlsruhe. Institute for Musicology and Musicinforrmatics]

%% Standard-Optionen der Klasse "scrartcl"
\DeclareOption{12pt}{
	\PassOptionsToClass{\CurrentOption}{scrartcl}
}

%% Fallback
\DeclareOption*{
	\ClassWarning{HfM-KA-IMWI-HA}{Unknown option '\CurrentOption'}
}

%% Ausführen von Standard-Optionen
\ExecuteOptions{12pt}

%% Process given options
\ProcessOptions\relax

%% Laden der Basis-Klasse, auf der Aufgebaut wird.
\LoadClass[a4paper]{scrartcl}

%% Laden von Zusätzlich benötigten Paketen.

%% Reihenfolge der ersten beiden Pakete nicht ändern! %%
\RequirePackage[T1]{fontenc} % Engraver
\RequirePackage[utf8]{inputenc} % Zeichencode

%% Pakete, die den IMWI-spezifischen Funktionsumfang für Hausarbeiten enthalten %%
%% Reihenfolge beachten, in der die Pakete geladen werden, da einige Variablen auf anderen aufbauen. %%
\RequirePackage{../Styles/HfM-KA-IMWI-HA-MetaDaten}
\RequirePackage{../Styles/HfM-KA-IMWI-Variablen} % Definitionen von Variablen, die zur Textarbeit benutzt werden können.
\RequirePackage{../Styles/HfM-KA-IMWI-Werkzeuge} % Definitionen von Werkzeugen.
\RequirePackage{../Styles/HfM-KA-IMWI-HA} % Spezifikationen für die Hausarbeit.

%% Weitere Pakete, die für die Darstellung essenziell sind %%
\RequirePackage{setspace} % Optimiert Frinheiten im Layout.
\RequirePackage{graphicx} % Erlaubt das HfM-Logo und einzubindende Bilder.
\RequirePackage{geometry} % Erlaubt die Definition von Seitenrändern, u.ä.
\RequirePackage{enumitem} % Erlaubt das Formatieren von Aufzählungen.
\RequirePackage{nameref} % Erlaubt Referenzierungen, Labels.
\RequirePackage[
bookmarksnumbered, % Nummerierte Gliederung in den PDF-LEsezeichen
pdftitle={\titel. \untertitelI\untertitelII}, % Titel für PDF-Metadaten
pdfauthor={\verfasser}, % Autor für PDF-Metadaten
pdfsubject={\modulname--\modulkuerzel},
]{hyperref} % Erlaubt Hyperlinks im PDF.
\RequirePackage{pdfpages} % Erlaubt das Einbinden von PDFs.
\RequirePackage{listings} % Erlaubt das Einbinden von Source Code.
\RequirePackage{longtable} % Erlaubt das Verwenden sehr langer Tabellen mit Seitenumbruch.
\RequirePackage{float} % Erlaubt das Erzwingen von festen Grafik-Positionen mit [H].

%% Praktische Herfer %%
\RequirePackage{blindtext} % Text-Platzhalter zum Testen von Befehlen. (Komanndo: \blindtext).
\RequirePackage{verbatim} % Erlaubt unsichtbare Blockkommentare.

\endinput