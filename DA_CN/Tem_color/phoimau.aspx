<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="phoimau.aspx.cs" Inherits="DA_CN.Tem_color.phoimau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        html,body {margin:0;padding:0;height:100%;min-height:475px;min-width:350px;font-family:"Arial", sans-serif;overflow:hidden;}
        #drag {
          position:relative;
          width:80%;
          height:80%;
          margin: auto;
          margin-top: 3rem;
          margin-bottom: 10rem;
          text-align:center;
          transition:color .5s ease;
          cursor:crosshair;
          z-index: 999;
        }
    h2 {
      display:block;
      font-size:6em;
      padding:0;
      margin:0;
    }
    h3 {
      display:block;
      font-size:2em;
      padding:0;
      margin:0;
    }
    span{
      display:block;
      vertical-align:middle;
    }
.copy,.copyHEX,.copyRGB,.copyHSL {
  display:inline-block;
  position:absolute;
  left:50%;
  margin:0 0 0 -37px;
  padding:10px 0;
  width:74px;
  border-radius:20px;
  cursor:pointer;
  transition:all 0.3s ease;
  -webkit-transform:translate3d(0,0,0);
  -moz-transform:translate3d(0,0,0);
}
.copyHEX,.copyRGB,.copyHSL {opacity:0;}
.Buttonleft {margin:0;opacity:1;-webkit-transform:translate3d(-120px,0,0);-moz-transform:translate3d(-120px,0,0);transition:all 0.4s ease;}
.Buttoncenter {opacity:1;}
.Buttonright {margin:0;opacity:1;-webkit-transform:translate3d(46px,0,0);-moz-transform:translate3d(46px,0,0);transition:all 0.4s ease;}
.contain {
  display:block;
  position:absolute;
  width:240px;
  height:74px;
  top:50%;
  left:50%;
  margin:-37px 0 0 -120px;
}
#instruct {
  display:table;
  width:100%;
  height:100%;
  position:fixed;
  z-index:10;
  top:0;
  left:0;
  background:rgba(0,0,0,0.85);
}
#instruct p {
  font-size:1.5em;
}
.updown {font-size:5em;-webkit-animation:ud 2s infinite;-moz-animation:ud 2s infinite;position:relative;top:-20px;}
.updown span {transform: rotateX(180deg);}
.center {
  display:table-cell;
}
#drag:after {
    content:'This app works best in portrait mode.';
    position:fixed;
    top:0;
    left:0;
    width:50%;
    height:50%;
    padding:10% 0;
    color:white !important;
    background:black;
    display:none;
  }
.result {
  text-align:center;
  display:none;
}
.result input {
  margin:0 auto;
  text-align:center;
  margin:7px;
  outline:none;
  border:none;
  font-size:18px;
  background:transparent;
}
.ripple {-webkit-animation:rip .75s 1;opacity:.7;-moz-animation:rip .75s 1;opacity:.7;}
@-webkit-keyframes rip 
{
  0%  {
    box-shadow:0 0 0 0,0 0 0 0 transparent;
  }
  60% {
    box-shadow:0 0 0 20px,0 0 0 20px;
  }
  100% {
    box-shadow:0 0 0 0 transparent,0 0 0 40px transparent;
  }
}
@-webkit-keyframes ud 
{
  0%  {
    top:-20px;
    left:0px;
  }
  20% {
    top:0px;
    left:-15px;
    -webkit-transform:rotate(10deg);
  }
  80% {
    top:0px;
    left:15px;
  }
  100% {
    top:-20px;
    left:0px;
  }
}
@-moz-keyframes rip 
{
  0%  {
    box-shadow:0 0 0 0 rgba(255,255,255,0.7),0 0 0 0 transparent;
  }
  60% {
    box-shadow:0 0 0 20px rgba(255,255,255,0.7),0 0 0 20px rgba(255,255,255,0.7);
  }
  100% {
    box-shadow:0 0 0 0 transparent,0 0 0 40px transparent;
  }
}
@-moz-keyframes ud 
{
  0%  {
    top:-20px;
    left:0px;
  }
  20% {
    top:0px;
    left:-15px;
    -moz-transform:rotate(10deg);
  }
  80% {
    top:0px;
    left:15px;
  }
  100% {
    top:-20px;
    left:0px;
  }
}
@media only screen 
and (max-device-width:1024px) 
and (orientation:landscape) {
  #drag:after {
    display:block;
  }
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="result"><input type="text" /></div>
        <table id="drag">
          <tr>
            <td>
              <div id="instruct"><span class="center"><h2 class='updown'><span class="fas fa-hand-pointer"></span></h2><p>Touch and drag to start.</p></span></div><span>Hue<h2 id="horiz">205</h2></span></td>
          </tr>
          <tr>
            <td>
              <div class="contain">
                <span class="button copyHEX"><h3>+</h3>HEX</span>
                <span class="button copyRGB"><h3>+</h3>RGB</span>
                <span class="button copyHSL"><h3>+</h3>HSL</span>
                <span class="button copy"><h3>+</h3>Copy</span>
              </div>
            </td>
          </tr>
          <tr>
            <td><span>Độ sáng<h2 id="vert">45%</h2></span></td>
          </tr>
        </table>
    <script>
        $('.copy').bind('mousedown touchstart', function () {
            $('.copyHEX').addClass('Buttonleft');
            $('.copyRGB').addClass('Buttoncenter');
            $('.copyHSL').addClass('Buttonright');
            $('.copy').hide();
        });

        $('.copyHEX').bind('mousedown touchstart', function () {
            $(this).addClass('ripple');
            setTimeout(function () {
                $('.copyHEX').removeClass('Buttonleft');
                $('.copyRGB').removeClass('Buttoncenter');
                $('.copyHSL').removeClass('Buttonright');
                $('.copy').show();
                $('.copyHEX').removeClass('ripple');
                $('.result').slideDown(300);
                $('.result input').val(rgb2hex($('#drag').css('background-color'))).select();
            }, 800);
        });

        $('.copyRGB').bind('mousedown touchstart', function () {
            $(this).addClass('ripple');
            setTimeout(function () {
                $('.copyHEX').removeClass('Buttonleft');
                $('.copyRGB').removeClass('Buttoncenter');
                $('.copyHSL').removeClass('Buttonright');
                $('.copy').show();
                $('.copyRGB').removeClass('ripple');
                $('.result').slideDown(300);
                $('.result input').val($('#drag').css('background-color')).select();
            }, 800);
        });

        $('.copyHSL').bind('mousedown touchstart', function () {
            $(this).addClass('ripple');
            setTimeout(function () {
                $('.copyHEX').removeClass('Buttonleft');
                $('.copyRGB').removeClass('Buttoncenter');
                $('.copyHSL').removeClass('Buttonright');
                $('.copy').show();
                $('.copyHSL').removeClass('ripple');
                $('.result').slideDown(300);
                $('.result input').val(HSLvalue).select();
            }, 800);
        });

        ///// Convert to hex. Source (http://stackoverflow.com/questions/1740700/how-to-get-hex-color-value-rather-than-rgb-value)
        var hexDigits = new Array
          ("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f");
        function rgb2hex(rgb) {
            rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
            return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
        }
        function hex(x) {
            return isNaN(x) ? "00" : hexDigits[(x - x % 16) / 16] + hexDigits[x % 16];
        }
        /////

        var widthInitial = parseInt($('#horiz').html());
        var heightInitial = parseInt($('#vert').html());
        var windowWidth = $(window).width() / 100;
        var windowHeight = $(window).height() / 100;

        if (heightInitial >= 0 && heightInitial < 50) {
            $('#drag, .button').css('color', 'white');
            $('.button').css('background', 'rgba(255,255,255,0.15)');
        }
        else if (heightInitial > 50 && heightInitial <= 100) {
            $('#drag, .button').css('color', 'black');
            $('.button').css('background', 'rgba(0,0,0,0.15)');
        }

        $('#drag').css('background', 'hsla(' + widthInitial + ',85%,' + heightInitial + '%,1)');

        $('#drag').bind('mousedown touchstart', function (e) {
            e.preventDefault();
            var widthInitial = parseInt($('#horiz').html());
            var heightInitial = parseInt($('#vert').html());
            var xInitial = e.originalEvent.pageX;
            var yInitial = e.originalEvent.pageY;

            $(document).bind('mousemove touchmove', function (e) {
                e.preventDefault();
                $('.result').slideUp(300);
                $('#instruct').fadeOut();
                var movePos = Math.min(Math.max(parseInt(Math.round((e.originalEvent.pageX - xInitial) / windowWidth * 3.6) + widthInitial), 0), 360);
                var movePosVert = Math.min(Math.max(parseInt(Math.round((e.originalEvent.pageY - yInitial) / windowHeight) + heightInitial), 0), 100);

                $('#drag').css('background', 'hsla(' + movePos + ',85%,' + movePosVert + '%,1)');
                $('.result').css('background', 'hsla(' + (movePos + 5) + ',85%,' + (movePosVert + 15) + '%,1)');

                $('#horiz').html(movePos);
                $('#vert').html(movePosVert + '%');
                if (movePosVert >= 0 && movePosVert < 50) {
                    $('#drag, .button').css('color', 'white');
                    $('.button').css('background', 'rgba(255,255,255,0.15)');
                }
                else if (movePosVert > 50 && movePosVert <= 100) {
                    $('#drag, .button').css('color', 'black');
                    $('.button').css('background', 'rgba(0,0,0,0.15)');
                }

                HSLvalue = 'hsl(' + movePos + ',85%,' + movePosVert + '%)';
            });

        });

        $(document).bind('mouseup touchend', function (e) {
            e.preventDefault();
            $(document).unbind('mousemove touchmove');
        });
    </script>
</asp:Content>
