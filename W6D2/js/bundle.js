!function(e){var t={};function o(n){if(t[n])return t[n].exports;var r=t[n]={i:n,l:!1,exports:{}};return e[n].call(r.exports,r,r.exports,o),r.l=!0,r.exports}o.m=e,o.c=t,o.d=function(e,t,n){o.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:n})},o.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},o.t=function(e,t){if(1&t&&(e=o(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var n=Object.create(null);if(o.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var r in e)o.d(n,r,function(t){return e[t]}.bind(null,r));return n},o.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return o.d(t,"a",t),t},o.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},o.p="/js/",o(o.s=2)}([function(e,t){function o(e){this.$el=e,this.setupEasel()}window._randomColorString=function(){return"#"+Math.random().toString(16).substr(-6)},o.prototype.exercise0=function(){$("li").removeClass("square")},o.prototype.exercise1=function(){$("li").addClass("orange")},o.prototype.exercise2=function(){$("ul").remove()},o.prototype.exercise3=function(){$("#easel").append("<h1>i love jquery</h1>")},o.prototype.exercise4=function(){$("li").each(function(e){e%2==0&&$(this).text("Alex")})},o.prototype.exercise5=function(){$("ul.row").on("click","li",e=>{alert($(e.currentTarget).attr("data-pos"))})},o.prototype.exercise6=function(){$("li").each(function(){$(this).css("background-color",window._randomColorString())})},o.prototype.exercise7=function(){event.preventDefault(),$("ul.row").on("mouseenter","li",e=>{console.log($(e.currentTarget).css("background-color"))})},o.prototype.setupEasel=function(){const e=$("<button>").html("Add a row");this.$el.append(e),e.on("click",this.addRow.bind(this));for(let e=0;e<=7;e++){const t=$("<button>").html("Exercise "+e);t.on("click",this["exercise"+e]),this.$el.append(t)}for(let e=0;e<20;e++)this.addRow()},o.prototype.addRow=function(){const e=this.$el.find(".row").length,t=$("<ul>").addClass("row").addClass("group");for(let o=0;o<20;o++){const n=$("<li>").addClass("square").attr("data-pos",[e,o]);n.on("mouseenter",e=>{$(e.currentTarget).css("background-color",window._randomColorString())}),t.append(n)}this.$el.append(t)},e.exports=o},function(e,t,o){var n=o(0);$(function(){var e=$("#easel");new n(e)})},function(e,t,o){e.exports=o(1)}]);
//# sourceMappingURL=bundle.js.map