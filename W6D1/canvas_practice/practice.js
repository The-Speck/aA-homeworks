document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('mycanvas');
  canvas.width = 500;
  canvas.height = 500;

  const ctx = canvas.getContext('2d');
  ctx.fillStyle = "blue";

  // ctx.fillRect(0, 0, 200, 200);
  //
  // ctx.beginPath();
  // ctx.arc(100, 100, 50, 0, 2*Math.PI, false);
  // ctx.lineWidth = 4;
  // ctx.closePath();
  //
  // ctx.strokeStyle = "black";
  // ctx.stroke();
  //
  // ctx.fillStyle = "red";
  // ctx.fill();


  function draw () {
  ctx.clearRect(0, 0, 500, 500);
  ctx.translate(250, 250);

  ctx.beginPath();
  ctx.rotate(Math.PI/180);
  ctx.translate(-250, -250);

  ctx.moveTo(250, 250);
  ctx.lineTo(300, 200);
  ctx.lineTo(300, 300);

  ctx.fill();
  ctx.closePath();


  ctx.restore();

  window.requestAnimationFrame(draw);
  }

  setInterval(draw(), 1000);
});
