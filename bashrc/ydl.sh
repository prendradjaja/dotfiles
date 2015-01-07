alias ydl='youtube-dl -t -c'

function ydl-mp3 () {
    # usage: ydl-mp3 [YOUTUBE-URL] [FILENAME]
    # downloads youtube video into FILENAME.m4a, then converts to FILENAME.mp3
    youtube-dl -c --extract-audio $1 -o $2.m4a &&
    avconv -v 5 -y -i $2.m4a -acodec libmp3lame -ac 2 -ab 192k $2.mp3
}

function ydl-split () {
    # usage: similar to ydl-mp3 above, with one more argument. (split size)
    # does ydl-mp3, then splits the mp3 into pieces of the given size
    ydl-mp3 $1 $2 &&
    split-mp3 $2.mp3 $3
}

function split-mp3 () {
    # usage: split-mp3 [FILENAME] [CHUNK SIZE AS A FLOAT]
    mp3splt $1 -g %[@N=0,@o] -o "@n @f" -t $2
}
