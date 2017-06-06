document.addEventListener("DOMContentLoaded", function(){

  const canvas = document.getElementById("newCanvas");

  canvas.width = 500;
  canvas.height = 500;

  const ctx = canvas.getContext('"2d"');

  ctx.fillStyle = "blue";
  ctx.fillRect(0, 0, 500, 500);

  ctx.beginPath();
  ctx.arc(75, 75, 10, 0, Math.PI*2, true);
  ctx.strokeStyle = "black";
  ctx.lineWidth = 3;
  ctx.stroke();
  ctx.fillStyle = "yellow";
  ctx.fill();
});
