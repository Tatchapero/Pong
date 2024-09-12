class Score {
  int playerScore;
  int cpuScore;
  int matchPoint;
  int timer;
  int delay;
  int playerScoreX;
  int playerScoreY;
  int playerScoreWidth;
  int playerScoreHeight;
  int cpuScoreX;

  Score() {
    playerScore = 0;
    cpuScore = 0;
    matchPoint = 11;
    timer = 0;
    delay = 3000;
    playerScoreX = width/4;
    playerScoreY = height/8;
    playerScoreWidth = height/10;
    playerScoreHeight = width/10;
    cpuScoreX = width-playerScoreX;
  }

  void display() {
    switch (playerScore) {
    case 1:
      drawScoreBackground(playerScoreX);
      drawVerticalMiddleBar(playerScoreX);
      break;
    case 2:
      drawScoreBackground(playerScoreX);
      drawBottomBar(playerScoreX);
      drawTopBar(playerScoreX);
      drawHorizontalMiddleBar(playerScoreX);
      drawTopRightBar(playerScoreX);
      drawBottomLeftBar(playerScoreX);
      break;
    case 3:
      drawScoreBackground(playerScoreX);
      drawRightBar(playerScoreX);
      drawTopBar(playerScoreX);
      drawHorizontalMiddleBar(playerScoreX);
      drawBottomBar(playerScoreX);
      break;
    case 4:
      drawScoreBackground(playerScoreX);
      drawTopLeftBar(playerScoreX);
      drawRightBar(playerScoreX);
      drawHorizontalMiddleBar(playerScoreX);
      break;
    case 5:
      drawScoreBackground(playerScoreX);
      drawTopBar(playerScoreX);
      drawTopLeftBar(playerScoreX);
      drawHorizontalMiddleBar(playerScoreX);
      drawBottomRightBar(playerScoreX);
      drawBottomBar(playerScoreX);
      break;
    case 6:
      drawScoreBackground(playerScoreX);
      drawLeftBar(playerScoreX);
      drawHorizontalMiddleBar(playerScoreX);
      drawBottomBar(playerScoreX);
      drawBottomRightBar(playerScoreX);
      break;
    case 7:
      drawScoreBackground(playerScoreX);
      drawTopBar(playerScoreX);
      drawRightBar(playerScoreX);
      break;
    case 8:
      drawScoreBackground(playerScoreX);
      drawTopBar(playerScoreX);
      drawHorizontalMiddleBar(playerScoreX);
      drawBottomBar(playerScoreX);
      drawLeftBar(playerScoreX);
      drawRightBar(playerScoreX);
      break;
    case 9:
      drawScoreBackground(playerScoreX);
      drawTopBar(playerScoreX);
      drawRightBar(playerScoreX);
      drawTopLeftBar(playerScoreX);
      drawHorizontalMiddleBar(playerScoreX);
      break;
    case 10:
      drawScoreBackground(playerScoreX);
      drawLeftBar(playerScoreX);
      drawRightBar(playerScoreX);
      drawBottomBar(playerScoreX);
      drawTopBar(playerScoreX);
      drawVerticalMiddleBar(playerScoreX-playerScoreWidth);
      break;
    case 11:
      drawScoreBackground(playerScoreX);
      drawVerticalMiddleBar(playerScoreX);
      drawVerticalMiddleBar(playerScoreX-playerScoreWidth);
      break;
    case 0:
    default:
      drawScoreBackground(playerScoreX);
      drawLeftBar(playerScoreX);
      drawRightBar(playerScoreX);
      drawBottomBar(playerScoreX);
      drawTopBar(playerScoreX);
      break;
    }

    switch (cpuScore) {
    case 1:
      drawScoreBackground(cpuScoreX);
      drawVerticalMiddleBar(cpuScoreX);
      break;
    case 2:
      drawScoreBackground(cpuScoreX);
      drawBottomBar(cpuScoreX);
      drawTopBar(cpuScoreX);
      drawHorizontalMiddleBar(cpuScoreX);
      drawTopRightBar(cpuScoreX);
      drawBottomLeftBar(cpuScoreX);
      break;
    case 3:
      drawScoreBackground(cpuScoreX);
      drawRightBar(cpuScoreX);
      drawTopBar(cpuScoreX);
      drawHorizontalMiddleBar(cpuScoreX);
      drawBottomBar(cpuScoreX);
      break;
    case 4:
      drawScoreBackground(cpuScoreX);
      drawTopLeftBar(cpuScoreX);
      drawRightBar(cpuScoreX);
      drawHorizontalMiddleBar(cpuScoreX);
      break;
    case 5:
      drawScoreBackground(cpuScoreX);
      drawTopBar(cpuScoreX);
      drawTopLeftBar(cpuScoreX);
      drawHorizontalMiddleBar(cpuScoreX);
      drawBottomRightBar(cpuScoreX);
      drawBottomBar(cpuScoreX);
      break;
    case 6:
      drawScoreBackground(cpuScoreX);
      drawLeftBar(cpuScoreX);
      drawHorizontalMiddleBar(cpuScoreX);
      drawBottomBar(cpuScoreX);
      drawBottomRightBar(cpuScoreX);
      break;
    case 7:
      drawScoreBackground(cpuScoreX);
      drawTopBar(cpuScoreX);
      drawRightBar(cpuScoreX);
      break;
    case 8:
      drawScoreBackground(cpuScoreX);
      drawTopBar(cpuScoreX);
      drawHorizontalMiddleBar(cpuScoreX);
      drawBottomBar(cpuScoreX);
      drawLeftBar(cpuScoreX);
      drawRightBar(cpuScoreX);
      break;
    case 9:
      drawScoreBackground(cpuScoreX);
      drawTopBar(cpuScoreX);
      drawRightBar(cpuScoreX);
      drawTopLeftBar(cpuScoreX);
      drawHorizontalMiddleBar(cpuScoreX);
      break;
    case 10:
      drawScoreBackground(cpuScoreX);
      drawLeftBar(cpuScoreX);
      drawRightBar(cpuScoreX);
      drawBottomBar(cpuScoreX);
      drawTopBar(cpuScoreX);
      drawVerticalMiddleBar(cpuScoreX-playerScoreWidth);
      break;
    case 11:
      drawScoreBackground(cpuScoreX);
      drawVerticalMiddleBar(cpuScoreX);
      drawVerticalMiddleBar(cpuScoreX-playerScoreWidth);
      break;
    case 0:
    default:
      drawScoreBackground(cpuScoreX);
      drawLeftBar(cpuScoreX);
      drawRightBar(cpuScoreX);
      drawBottomBar(cpuScoreX);
      drawTopBar(cpuScoreX);
      break;
    }
  }

  void drawScoreBackground(int xPosition) {
    fill(0);
    rect(xPosition, playerScoreY, playerScoreWidth, playerScoreHeight);
  }
  void drawLeftBar(int xPosition) {
    fill(255);
    rect(xPosition-playerScoreWidth/2, playerScoreY, playerScoreWidth/4, playerScoreHeight);
  }
  void drawRightBar(int xPosition) {
    fill(255);
    rect(xPosition+playerScoreWidth/2, playerScoreY, playerScoreWidth/4, playerScoreHeight);
  }
  void drawTopBar(int xPosition) {
    fill(255);
    rect(xPosition, playerScoreY-playerScoreHeight/2+playerScoreWidth/8, playerScoreWidth, playerScoreWidth/4);
  }
  void drawBottomBar(int xPosition) {
    fill(255);
    rect(xPosition, playerScoreY+playerScoreHeight/2-playerScoreWidth/8, playerScoreWidth, playerScoreWidth/4);
  }
  void drawVerticalMiddleBar(int xPosition) {
    fill(255);
    rect(xPosition, playerScoreY, playerScoreWidth/4, playerScoreHeight);
  }
  void drawHorizontalMiddleBar(int xPosition) {
    fill(255);
    rect(xPosition, playerScoreY, playerScoreWidth, playerScoreWidth/4);
  }
  void drawTopLeftBar(int xPosition) {
    fill(255);
    rect(xPosition-playerScoreWidth/2+playerScoreWidth/4/2, playerScoreY-playerScoreHeight/4, playerScoreWidth/4, playerScoreHeight/2);
  }
  void drawTopRightBar(int xPosition) {
    fill(255);
    rect(xPosition+playerScoreWidth/2-playerScoreWidth/4/2, playerScoreY-playerScoreHeight/4, playerScoreWidth/4, playerScoreHeight/2);
  }
  void drawBottomLeftBar(int xPosition) {
    fill(255);
    rect(xPosition-playerScoreWidth/2+playerScoreWidth/4/2, playerScoreY+playerScoreHeight/4, playerScoreWidth/4, playerScoreHeight/2);
  }
  void drawBottomRightBar(int xPosition) {
    fill(255);
    rect(xPosition+playerScoreWidth/2-playerScoreWidth/4/2, playerScoreY+playerScoreHeight/4, playerScoreWidth/4, playerScoreHeight/2);
  }

  void updateScore(Ball ball) {
    if (ball.ballXPosition >= width && timer == 0) {
      playerScore++;
      timer = millis();
    } else if (ball.ballXPosition <= 0 && timer == 0) {
      cpuScore++;
      timer = millis();
    } else if (millis() - timer >= delay && timer != 0) {
      timer = 0;
      ball.respawn();
      matchPoint();
    }
  }

  void matchPoint() {
    if (playerScore == matchPoint) {
      delay(5000);
      resetScore();
    } else if (cpuScore == matchPoint) {
      delay(5000);
      resetScore();
    }
  }

  void resetScore() {
    playerScore = 0;
    cpuScore = 0;
  }
  
  int playerScore () {
    return playerScore;
  }
}
