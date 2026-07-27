# For You 💖

A tap-to-open gift page with an animated box, a full readable letter, background
music, and an optional "our memories" photo slideshow.

## Run it locally

```bash
./start.sh
```

Then open **http://localhost:8000** in your browser.

To view it on your **phone** (must be on the same WiFi as this computer):
1. Run `./start.sh` — it will print a link like `http://192.168.x.x:8000`
2. Open that link in your phone's browser

If `start.sh` doesn't run, make sure Python 3 is installed, then use:
```bash
python3 -m http.server 8000 --bind 0.0.0.0
```

## Add your memory photos (optional)

The "See Our Memories 💫" button and photo strip only appear once you add
photos. Drop them into the `memories/` folder, named:

```
memory-1.jpg
memory-2.jpg
memory-3.jpg
...
memory-10.jpg
```

`.jpg`, `.jpeg`, `.png`, and `.webp` all work, and you don't need all 10 —
even 2 or 3 is enough. The page checks the folder automatically; nothing
needs to be edited in the code.

## Change the name or message

Open `index.html`, search for `const herName`, and edit the name and the
`cardMessage.textContent` line right below it in the `openGift()` function.

## Files

| File | What it is |
|---|---|
| `index.html` | The whole page (HTML, CSS, JS) |
| `msg.jpeg` | The "100 reasons" letter — tap it on the page to read it full-size |
| `music.mp3` | Background music (compressed, loads fast on mobile) |
| `music.wav` | Original audio, kept as a fallback for older browsers |
| `memories/` | Drop your own photos here (see above) |
| `start.sh` | One-command local server |

## What was fixed from the original

- The letter photo was being cropped to a tiny, unreadable thumbnail — it's
  now tap-to-expand and fully readable, with pinch-zoom/scroll on mobile.
- The slideshow referenced 10 photos that didn't exist, which would have
  shown as broken images. It now detects what's actually in `memories/`
  and hides itself cleanly if the folder is empty.
- Background music was a 3.9MB WAV; added a 505KB MP3 version so it loads
  almost instantly on mobile data.
- Mobile viewport fixes: proper dynamic viewport height (so the page doesn't
  jump when the phone's address bar shows/hides), safe-area padding for
  notched phones, no tap-flash on buttons, no accidental double-tap zoom.
- Added a favicon, page title/description, and theme color so it looks
  polished if shared as a link.
