#(set-global-staff-size 15.5) 
#(ly:set-option 'point-and-click #f) 

\version "2.10" 

global = { \key g \major \time 4/4 \tempo 4=100 } 

TAAbendlied = \relative es' 
{ 
\partial 4 
bes4 bes4. bes8 bes4 bes c2-> bes4 
bes4 c es d c bes2.  
bes4 bes4. bes8 c4 c d4.( c8) bes4  
c d c8[ d] es4. a,8 bes2 \oneVoice r4 \voiceOne 
bes4 c4. c8 c4 d8[ c] bes2 bes4  
bes4 bes a g f bes2 \oneVoice r4 \voiceOne 
as!\< g4. bes8 es4\mf f8[ es] es2\> c4\! \oneVoice r8 \voiceOne 
c8\pp bes4 bes c4. bes8 bes2\fermata \oneVoice r4\fermata 
\bar "|." 
} 

TBAbendlied = \relative es' 
{ 
\partial 4 
bes4 bes4. bes8 bes4 bes a2 bes4 
g4 as! as as as g2.  
g4 f4. bes8 bes4 a a2 g4  
bes4 bes bes a4. f8 f2 s4 
f4 g4. g8 as!4 as as2 g4  
g4 f f f f f2 s4 
f4 es4. g8 g4 g as2 as4 s8 
f8 f4 f as4. as8 g2 s4 
\bar "|." 
} 

BAAbendlied = \relative es 
{ 
\partial 4 
g4 g4. g8 g4 g fis2 g4 
es4 es es es es es2. 
es4 es( d8) f8 f4 f fis2 d4 
es4 f! es8[ d] c4. es8 d2 \oneVoice r4 \voiceOne 
d4 e4. e8 f4 f d2 es!4 
es4 es es es es d2 \oneVoice r4 \voiceOne 
d4 des4. des8 des4 des c2 es4 \oneVoice r8 \voiceOne 
es8 es4 d!8[ c] d4. d8 es2 \oneVoice r4\fermata 
\bar "|." 
} 

BBAbendlied = \relative es 
{ 
\partial 4 
es4 es4. es8 es4 es es2-> es4 
es4 as, c bes as es'2. 
es4 bes4. d8 f4 f d2 g,4 
g4 f f f4. f8 bes2 s4 
bes4 bes4. bes8 bes4 bes bes2 bes4 
bes4 c c bes a bes2 s4 
bes4\< es,4. es8 bes'4\mf bes as2\> as4\! s8 
a8\pp bes4 bes bes4. bes8 es,2\fermata s4 
\bar "|." 
} 


LAbendliedA = \lyricmode {
\set stanza = "1."
Der A -- bend senkt sich lei -- se, 
der Him -- mel ist so blau; 
nun schlum -- mern al -- le Blu -- men 
und Vög -- lein auf der Au. 
Sie ni -- cken und sie träu -- men; 
o stör nicht ih -- re Lust, 
ist ei -- ne Welt ge -- grün -- det 
auch in der klein -- sten Brust. 
}

LAbendliedB = \lyricmode {
\set stanza = "2."
Im Trau -- me schwingt die Ler -- che 
sich in die kla -- re Luft; 
was je -- de Blum' emp -- fin -- det, 
das haucht sie aus in Duft. 
Das Welt -- all groß und herr -- lich 
mit sei -- nen Wel -- ten klein 
und al -- ler Him -- mel Him -- mel 
nimmt ja mein Bu -- sen ein. 
}

LAbendliedC = \lyricmode {
\set stanza = "3."
Sieh, al -- le Stern er -- flim -- mern, 
es schmilzt des A -- bends Pracht; 
laß kom -- men nur die Stür -- me 
und klei -- den schwarz die Nacht! 
Schlaft süß und träumt, ihr Vög -- lein, 
ihr Blu -- men auf der Au! 
Im Her -- zen ist es ru -- hig, 
da ist der Him -- mel blau. 
}

%--------------------

\header {
 kaisernumber = "190"
 comment = ""
 footnote = "" 
 
 title = "Abendlied"
 subtitle = ""
 composer = "Robert Volkmann (1815–1883)"
 opus = "Op. 30, No. 2"
 meter = \markup {Langsam}
 arranger = ""
 poet = "Hans Christian Andersen (1805–1875)"
 
 mutopiatitle = "Abendlied"
 mutopiacomposer = "VolkmannR"
 mutopiapoet = "H. C. Andersen (1805-1875)"
 mutopiaopus = ""
 mutopiainstrument = "Choir (TTBB)"
 date = ""
 source = "Leipzig : C. F. Peters, 1907"
 style = "Romantic"
 copyright = "Creative Commons Attribution 3.0"
 maintainer = "Klaus Rettinghaus"
 lastupdated = "2008/August/20"
 
 footer = "Mutopia-2008/09/12-1539"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
} 

\score {
\context ChoirStaff 
	<< 
	\context Staff = TenorStaff 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "G_8" 
			\context Voice = TenorA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \transpose es g \TAAbendlied 
				>> } 
			\context Voice = TenorB { \voiceTwo 
 				<< 
				\autoBeamOff 
				\global \transpose es g \TBAbendlied 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Lyrics = versethree 
	\context Staff = BassStaff 
	<< 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = BassA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				\global \transpose es g \BAAbendlied 
				>> } 
			\context Voice = BassB { \voiceTwo 
				<< 
				\autoBeamOff 
				\dynamicDown 
				\global \transpose es g \BBAbendlied 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto TenorA \LAbendliedA 
	\context Lyrics = versetwo \lyricsto TenorA \LAbendliedB 
	\context Lyrics = versethree \lyricsto TenorA \LAbendliedC 
	>> 

\layout {
indent = 0.0\cm
\context {\Score 
\remove "Bar_number_engraver"
\override MetronomeMark #'transparent = ##t 
\override DynamicTextSpanner #'dash-period = #-1.0 
\override BreathingSign #'text = #(make-musicglyph-markup "scripts.rvarcomma") 
}
\context {\Staff 
\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1) 
}
}

\midi {
\context { \Voice 
\remove "Dynamic_performer" 
}
}

}
