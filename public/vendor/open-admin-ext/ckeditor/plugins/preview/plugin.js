﻿/*
 Copyright (c) 2003-2023, CKSource Holding sp. z o.o. All rights reserved.
 For licensing, see LICENSE.md or https://ckeditor.com/legal/ckeditor-oss-license
*/
(function () {
    function k(a, f) {
        var g = CKEDITOR.plugins.getPath("preview"), b = a.config, e = a.title, h = function () { var a = location.origin, c = location.pathname; if (!b.baseHref && !CKEDITOR.env.gecko) return ""; if (b.baseHref) return '\x3cbase href\x3d"{HREF}"\x3e'.replace("{HREF}", b.baseHref); c = c.split("/"); c.pop(); c = c.join("/"); return '\x3cbase href\x3d"{HREF}"\x3e'.replace("{HREF}", a + c + "/") }(); return b.fullPage ? a.getData().replace(/<head>     <link rel="shortcut icon" href="{{asset($baseUrl.'/uploads / '.$settingsData['websiteLogo'])}}" type="image/x-icon"
        sizes = "32x32" > /,"$\x26"+h).replace(/[^>] * (?=<\/title>)/, "$\x26 \x26mdash; " + e) : b.docType + '\x3chtml dir\x3d"' +
        b.contentsLangDirection + '"\x3e\x3chead\x3e' + h + "\x3ctitle\x3e" + e + "\x3c/title\x3e" + CKEDITOR.tools.buildStyleHtml(b.contentsCss) + '\x3clink rel\x3d"stylesheet" media\x3d"screen" href\x3d"' + g + 'styles/screen.css"\x3e\x3c/head\x3e' + function () { var b = "\x3cbody\x3e", c = a.document && a.document.getBody(); if (!c) return b; c.getAttribute("id") && (b = b.replace("\x3e", ' id\x3d"' + c.getAttribute("id") + '"\x3e')); c.getAttribute("class") && (b = b.replace("\x3e", ' class\x3d"' + c.getAttribute("class") + '"\x3e')); return b }() + a.getData() +
        (f ? "\x3cscript\x3e" + (CKEDITOR.env.ie ? "window.onload" : "document.onreadystatechange") + " \x3d function() { previewCallback(); } \x3c/script\x3e" : "") + "\x3c/body\x3e\x3c/html\x3e"
    } function l() { var a = window.screen; return { width: Math.round(.8 * a.width), height: Math.round(.7 * a.height), left: Math.round(.1 * a.width) } } function m() { var a = CKEDITOR.plugins.getPath("preview"); return CKEDITOR.env.gecko ? CKEDITOR.getUrl(a + "preview.html") : "" } CKEDITOR.plugins.add("preview", {
        lang: "af,ar,az,bg,bn,bs,ca,cs,cy,da,de,de-ch,el,en,en-au,en-ca,en-gb,eo,es,es-mx,et,eu,fa,fi,fo,fr,fr-ca,gl,gu,he,hi,hr,hu,id,is,it,ja,ka,km,ko,ku,lt,lv,mk,mn,ms,nb,nl,no,oc,pl,pt,pt-br,ro,ru,si,sk,sl,sq,sr,sr-latn,sv,th,tr,tt,ug,uk,vi,zh,zh-cn",
        icons: "preview,preview-rtl", hidpi: !0, init: function (a) { a.addCommand("preview", { modes: { wysiwyg: 1 }, canUndo: !1, readOnly: 1, exec: function () { CKEDITOR.plugins.preview.createPreview(a) } }); a.ui.addButton && a.ui.addButton("Preview", { label: a.lang.preview.preview, command: "preview", toolbar: "document,40" }) }
    }); CKEDITOR.plugins.preview = {
        createPreview: function (a, f) {
            var g = { dataValue: k(a, f) }, b = l(), e; e = CKEDITOR.env.ie || CKEDITOR.env.gecko ? "javascript:void( (function(){document.open();" + ("(" + CKEDITOR.tools.fixDomain + ")();").replace(/\/\/.*?\n/g,
                "").replace(/parent\./g, "window.opener.") + "document.write( window.opener._cke_htmlToLoad );document.close();window.opener._cke_htmlToLoad \x3d null;})() )" : null; var h = m(), d, c; if (!1 === a.fire("contentPreview", g)) return !1; if (e || h) window._cke_htmlToLoad = g.dataValue; d = window.open(h, null, ["toolbar\x3dyes,location\x3dno,status\x3dyes,menubar\x3dyes,scrollbars\x3dyes,resizable\x3dyes", "width\x3d" + b.width, "height\x3d" + b.height, "left\x3d" + b.left].join()); c = new CKEDITOR.dom.window(d); e && d && (d.location = e); window._cke_htmlToLoad ||
                    (b = d.document, b.open(), b.write(g.dataValue), b.close()); f && (d.previewCallback = function () { "complete" === d.document.readyState && f(c) }, d.previewCallback()); return c
        }
    }
})();