(function(a, b) {
    a(document).ready(function() {
        a("a[href$=\".gif\"], a[href$=\".jpg\"], a[href$=\".png\"], a[href$=\".bmp\"]").colorbox();
        a("abbr.blog_commenttimeago").timeago();
        a("#cmdComment").click(function() {
            $dialogComment.dialog("open");
            return false;
        });
        a("#sharrre").sharrre({
            share: { googlePlus: true, facebook: true, twitter: true }, urlCurl: "", template: "<a href=\"#\"><i class=\"fa fa-facebook socialicons facebook\"></i></a><a href=\"#\"><i class=\"fa fa-twitter socialicons facebook\"></i></a><a href=\"#\"><i class=\"fa fa-google-plus socialicons googleplus\"></i></a>", enableHover: false, enableTracking: true,
            render: function(c, d) {
                a(c.element).on("click", ".twitter", function() { c.openPopup("twitter") });
                a(c.element).on("click", ".facebook", function() { c.openPopup("facebook") });
                a(c.element).on("click", ".googleplus", function() { c.openPopup("googlePlus") });
            }
        });
        SyntaxHighlighter.autoloader.apply(null, shpath("applescript            @shBrushAppleScript.js", "actionscript3 as3      @shBrushAS3.js", "bash shell             @shBrushBash.js", "coldfusion cf          @shBrushColdFusion.js", "cpp c                  @shBrushCpp.js", "c# c-sharp csharp      @shBrushCSharp.js", "css                    @shBrushCss.js", "delphi pascal          @shBrushDelphi.js", "diff patch pas         @shBrushDiff.js", "erl erlang             @shBrushErlang.js", "groovy                 @shBrushGroovy.js", "java                   @shBrushJava.js", "jfx javafx             @shBrushJavaFX.js", "js jscript javascript  @shBrushJScript.js", "perl pl                @shBrushPerl.js", "php                    @shBrushPhp.js", "text plain             @shBrushPlain.js", "py python              @shBrushPython.js", "ruby rails ror rb      @shBrushRuby.js", "sass scss              @shBrushSass.js", "scala                  @shBrushScala.js", "sql                    @shBrushSql.js", "vb vbnet               @shBrushVb.js", "xml xhtml xslt html    @shBrushXml.js"));
        SyntaxHighlighter.all();
    });
}(jQuery, window.Sys));

function karmaToggle(a, b, d, c, e) {
    if (c != null) {
        if (!confirm(c)) {
            return false;
        }
    }
    blogService.karmaComment(a, b, d, e);
    return false;
}

function shpath() {
    var a = arguments, c = [];
    for (var b = 0; b < a.length; b++) {
        c.push(a[b].replace("@", appPath + "/desktopmodules/blog/templates/Whatever/js/highlighter/"));
    }
    return c;
};