DO Lectures subtitling and translation project
==============================================

This is a first attempt to write a proper doc.

License
-------
All the talks are by the [Do Lectures][dolec] and its respective speakers, as for the subs, I put those under an [Attribution Share Alike Creative Common license][creativec]


To sub a lecture:
-----------------

1. download [Transcriptions][transc]
2. download the lecture from the [website][dolec]
3. one line per sub, timestamp at the end (check Maggie Doyne's talk)
4. use `txt2srt` to convert it to srt file

    `ruby txt2srt.rb maggie.txt > maggie.srt`

5. pull request

Caveats:
--------
Unfortunately the code was not cared nor loved, it's just a dirty hack to get things done (tm).

Who Are You?
============
I'm [Emanuel Carnevale][ec] and I'm [@onigiri][ec] on Twitter

[ec]:http://twitter.com/onigiri
[dolec]:http://dolectures.com
[creativec]:http://creativecommons.org/licenses/by-sa/3.0/
[transc]:http://code.google.com/p/transcriptions/