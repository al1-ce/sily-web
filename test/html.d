#!/usr/bin/env dub
/+ dub.sdl:
name "htmlparsetest"
dependency "sily-web:html" path="../"
targetType "executable"
targetPath "../bin/"
+/

import std.stdio;

import sily.html;

void main() {
    string s = q"{
<a href="#p64001914" class="quotelink">
    &gt;&gt;64001914
</a>
<br>
Before summer, I think.... They&#039;re probably gonna be at CTW2 this summer. I hope...
<img/>
<img />
<br/> <br />
<img>
<div class="none help" style="test {iam: #25545;}">
    Testing my text wow wohoooo
    <div> child 1 dam</div>
    <div> child 2 wo <div> subchild 1 </div></div>
</div>

Live Edition<br>Previous Thread <a href="/vt/thread/63970658#p63970658" class="quotelink">&gt;&gt;63970658</a><br> <br><span class="quote">&gt;Upcoming Stream</span><br>https://www.youtube.com/watch?v=Prc<wbr>76a9aquA<br><span class="quote">&gt;Previous Stream</span><br>https://www.youtube.com/watch?v=zYx<wbr>u4gRSgm4<br> <br><span class="quote">&gt;Shorts</span><br>https://www.youtube.com/@FUWAMOCOch<wbr>/shorts<br><span class="quote">&gt;Schedule</span><br>https://twitter.com/fuwamoco_en/sta<wbr>tus/1731220863696175147<br><span class="quote">&gt;Debut</span><br>https://www.youtube.com/watch?v=Ktt<wbr>t7pb5o6I<br><span class="quote">&gt;Unarchived Karaoke 2023-08-27 download links</span><br>https://pastebin.com/h01yShmq<br><span class="quote">&gt;Twitter Space </span><br>https://archive.lytexx.dev/spaces/h<wbr>ololive/EN/fuwamoco_en/<br><br><span class="quote">&gt;Songs</span><br><span class="quote">&gt;Cover - KAIBUTSU</span><br>https://www.youtube.com/watch?v=Yr1<wbr>EI_jYBB8<br>https://pastebin.com/KchRJHmN - TL of Fuwamoco&#039;s version of Kaibutsu<br><span class="quote">&gt;Cover - Cute na Kanojo</span><br>https://www.youtube.com/watch?v=XYm<wbr>ZUh_YAq0<br><span class="quote">&gt;Cover - Identity</span><br>https://www.youtube.com/watch?v=B9q<wbr>gXaihce8<br><span class="quote">&gt;Original Song - Lifetime Showtime</span><br>https://youtu.be/-wzgy7uTuSk<br><span class="quote">&gt;Advent Gen Song - Rebellion</span><br>https://www.youtube.com/watch?v=pYN<wbr>YhSsR8EE<br><br><span class="quote">&gt;Merch</span><br>https://shop.hololivepro.com/produc<wbr>ts/startingvoice_fuwawaabyssgard<br>https://shop.hololivepro.com/produc<wbr>ts/startingvoice_mococoabyssgard<br>https://shop.hololivepro.com/produc<wbr>ts/hololiveen_advent_debut?variant=<wbr>44013781188828<br>https://shop.hololivepro.com/en/pro<wbr>ducts/hololive_sportsfestival_voice<wbr>pack?variant=44163472982236<br>https://shop.hololivepro.com/en/pro<wbr>ducts/hololive_christmasvoice2023?v<wbr>ariant=44256038846684<br><span class="quote">&gt;Voice Drama</span><br>https://shop.hololivepro.com/en/pro<wbr>ducts/hololiveen_advent_horrorvoice<wbr>drama<br><span class="quote">&gt;Advent Merch</span><br>https://twitter.com/hololive_En/sta<wbr>tus/1716323805843648808<br><br><span class="quote">&gt;/baubau/ sings LTST</span><br>https://twitter.com/Ruffian5000/sta<wbr>tus/1708479258354434288 (tweet contains a link to song only ver)<br>https://files.catbox.moe/ozlx6q.mp4<wbr> (intro+outro voices)<br><span class="quote">&gt;FUWAMOCO VN &amp; Anime list</span><br>https://pastebin.com/BGvNtvJ4<br><span class="quote">&gt;VRChat AnimeNYC 2023 Day 2</span><br>https://mega.nz/file/kjU3jYiS#hVIso<wbr>Z4WWL_il77wEzqvIUvF8S_dYGjmcK6efwRJ<wbr>gtw<br><span class="quote">&gt;Anime NYC: Rock n&#039; Rawr Party Mini</span><br>https://gofile.io/d/dsEcKM<br><span class="quote">&gt;Q&amp;A Stream</span><br>https://mega.nz/file/d2szTRiI#sVXL7<wbr>pRubmfQB0pnZoEzCZTP7b__7JnQTQ5XUBoc<wbr>Q5k<br> <br><span class="quote">&gt;Thread Template</span><br>https://pastebin.com/bgugZTcD
    }";
//     string s = q"{
// <a href="#p64001914" class="quotelink">
//     &gt;&gt;64001914
// </a>
// <br>
// Before summer, I think.... They&#039;re probably gonna be at CTW2 this summer. I hope...
//     }";
    writeln(s);

    HTMLTag[] tags = parseHTML(s);

    writeln();

    foreach (tag; tags) {
        // writeln("TAG!!!!", (*tag).type, "!!!!TAG");
        writeln(tag.toString());
        writeln();
    }
}
