function neko() {
  var nekoEl = document.createElement("div");

  var nekoPosX = 32;
  var nekoPosY = 32;

  var mousePosX = 0;
  var mousePosY = 0;

  var frameCount = 0;
  var idleTime = 0;
  var idleAnimation = null;
  var idleAnimationFrame = 0;
  var direction;

  var IE = document.all ? true : false;

  var nekoSpeed = 10;
  var spriteSets = {
    idle: [[-3, -3]],
    alert: [[-7, -3]],
    scratchSelf: [
      [-5, 0],
      [-6, 0],
      [-7, 0],
    ],
    scratchWallN: [
      [0, 0],
      [0, -1],
    ],
    scratchWallS: [
      [-7, -1],
      [-6, -2],
    ],
    scratchWallE: [
      [-2, -2],
      [-2, -3],
    ],
    scratchWallW: [
      [-4, 0],
      [-4, -1],
    ],
    tired: [[-3, -2]],
    sleeping: [
      [-2, 0],
      [-2, -1],
    ],
    N: [
      [-1, -2],
      [-1, -3],
    ],
    NE: [
      [0, -2],
      [0, -3],
    ],
    E: [
      [-3, 0],
      [-3, -1],
    ],
    SE: [
      [-5, -1],
      [-5, -2],
    ],
    S: [
      [-6, -3],
      [-7, -2],
    ],
    SW: [
      [-5, -3],
      [-6, -1],
    ],
    W: [
      [-4, -2],
      [-4, -3],
    ],
    NW: [
      [-1, 0],
      [-1, -1],
    ],
  };
  function init() {
    nekoEl.id = "oneko";
    nekoEl.ariaHidden = true;
    nekoEl.style.width = "32px";
    nekoEl.style.height = "32px";
    nekoEl.style.position = "absolute";
    nekoEl.style.pointerEvents = "none";
    nekoEl.style.backgroundImage = "url('oneko.gif')";
    nekoEl.style.imageRendering = "pixelated";
    nekoEl.style.left = nekoPosX - 16 + "px";
    nekoEl.style.top = nekoPosY - 16 + "px";
    nekoEl.style.zIndex = Number.MAX_VALUE;

    document.body.appendChild(nekoEl);
    function mousePos(event) {
      if (IE) {
        event = window.event;
      }
      mousePosX = event.clientX;
      mousePosY = event.clientY - 16;
    }
    document.onmousemove = mousePos;
    window.onekoInterval = setInterval(frame, 100);
  }

  function setSprite(name, frame) {
    var length = spriteSets[name].length;
    if (IE) {
      length = 0;
      // Internet explorer is really fucking dumb
      while (length < spriteSets[name].length) {
        if (spriteSets[name][length] != null) {
          length = length + 1;
          continue;
        }
        break;
      }
    }
    var sprite = spriteSets[name][frame % length];
    nekoEl.style.backgroundPosition =
      sprite["0"] * 32 + "px " + sprite["1"] * 32 + "px";
  }

  function resetIdleAnimation() {
    idleAnimation = null;
    idleAnimationFrame = 0;
  }

  function idle() {
    idleTime = idleTime + 1;

    // every ~ 20 seconds
    if (
      idleTime > 10 &&
      Math.floor(Math.random() * 200) == 0 &&
      idleAnimation == null
    ) {
      var avalibleIdleAnimations = ["sleeping", "scratchSelf"];
      if (nekoPosX < 32) {
        avalibleIdleAnimations.push("scratchWallW");
      }
      if (nekoPosY < 32) {
        avalibleIdleAnimations.push("scratchWallN");
      }
      if (nekoPosX > window.innerWidth - 32) {
        avalibleIdleAnimations.push("scratchWallE");
      }
      if (nekoPosY > window.innerHeight - 32) {
        avalibleIdleAnimations.push("scratchWallS");
      }
      idleAnimation =
        avalibleIdleAnimations[
          Math.floor(Math.random() * avalibleIdleAnimations.length)
        ];
    }

    switch (idleAnimation) {
      case "sleeping":
        if (idleAnimationFrame < 8) {
          setSprite("tired", 0);
          break;
        }
        setSprite("sleeping", Math.floor(idleAnimationFrame / 4));
        if (idleAnimationFrame > 192) {
          resetIdleAnimation();
        }
        break;
      case "scratchWallN":
      case "scratchWallS":
      case "scratchWallE":
      case "scratchWallW":
      case "scratchSelf":
        setSprite(idleAnimation, idleAnimationFrame);
        if (idleAnimationFrame > 9) {
          resetIdleAnimation();
        }
        break;
      default:
        setSprite("idle", 0);
        return;
    }
    idleAnimationFrame = idleAnimationFrame + 1;
  }

  function frame() {
    frameCount = frameCount + 1;
    var diffX = nekoPosX - mousePosX;
    var diffY = nekoPosY - mousePosY;
    var distance = Math.sqrt(Math.pow(diffX, 2) + Math.pow(diffY, 2));

    if (distance < nekoSpeed || distance < 48) {
      idle();
      return;
    }

    idleAnimation = null;
    idleAnimationFrame = 0;

    if (idleTime > 1) {
      setSprite("alert", 0);
      // count down after being alerted before moving
      idleTime = Math.min(idleTime, 7);
      idleTime = idleTime - 1;
      return;
    }

    direction = "";
    if (diffY / distance > 0.5) {
      direction = "N";
    } else if (diffY / distance < -0.5) {
      direction = "S";
    }
    if (diffX / distance > 0.5) {
      direction = direction + "W";
    } else if (diffX / distance < -0.5) {
      direction = direction + "E";
    }
    setSprite(direction, frameCount);

    if (distance > nekoSpeed) {
      nekoPosX = nekoPosX - (diffX / distance) * nekoSpeed;
      nekoPosY = nekoPosY - (diffY / distance) * nekoSpeed;
    } else {
      nekoPosX = mousePosX;
      nekoPosY = mousePosY;
    }

    nekoPosX = Math.min(
      Math.max(16, nekoPosX),
      document.getElementsByTagName("body")[0].clientWidth - 16
    );
    nekoPosY = Math.min(
      Math.max(16, nekoPosY),
      document.getElementsByTagName("body")[0].clientHeight - 16
    );

    nekoEl.style.left = nekoPosX - 16 + "px";
    nekoEl.style.top = nekoPosY - 16 + "px";
  }
  init();
}
neko();
