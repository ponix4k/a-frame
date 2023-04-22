// This is where it all goes :)
//= require bootstrap
let audio = null;
let isPlaying = false;
let savedTime = 0;

function toggleSound(soundPath) {
  if (audio === null) {
    audio = new Audio(soundPath);
    audio.addEventListener('timeupdate', () => {
      savedTime = audio.currentTime;
    });
  }

  if (isPlaying) {
    audio.pause();
    isPlaying = false;
    document.getElementById("playPauseIcon").innerText = "Play";
  } else {
    if (savedTime !== 0) {
      audio.currentTime = savedTime;
      savedTime = 0;
    }
    audio.play();
    isPlaying = true;
    document.getElementById("playPauseIcon").innerText = "Pause";
  }
}