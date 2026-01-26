# Zoom Teaching Studio Setup - Complete

> Setup completed January 26, 2026

## Saved Profiles

**Location:** `~/Projects/` (repo root)

| File | Application | Purpose |
|------|-------------|---------|
| `HDS-Teaching.json` | OBS Studio | Scene collection with all branded scenes |
| `HDS-Full-Setup.streamDeckProfile` | Elgato Stream Deck | Button configuration for scene switching |

## OBS Configuration

### Scene Collection: "HDS Teaching"

| Scene | Sources | Purpose |
|-------|---------|---------|
| Main Camera | Webcam + Logo Bug + Lower Third | Primary teaching view |
| Starting Soon | Holding slide (starting-soon.png) | Pre-session waiting |
| Break | Holding slide (break.png) | Mid-session breaks |
| Screen Share | Display Capture + PiP Camera | Screen sharing with camera |
| Outro | Holding slide (outro.png) | Session end |

### Settings
- Resolution: 1920x1080 @ 30fps
- Virtual Camera: Enabled (for Zoom)
- WebSocket Server: Port 4455, no authentication

## Stream Deck Configuration

### Profile: "HDS - Full Setup"

**Row 1 - Scene Switching:**
| Button 1 | Button 2 | Button 3 | Button 4 | Button 5 |
|----------|----------|----------|----------|----------|
| Main Camera | Starting Soon | Break | Screen Share | Outro |

### Connection
- OBS Plugin installed
- Connected via WebSocket to OBS

## Zoom Settings

- Camera: OBS Virtual Camera
- Mirror my video: OFF
- Touch up appearance: OFF
- Adjust for low light: OFF

## Brand Assets Created

### Lower Thirds (`brand/studio/lower-thirds/`)
- `event-hds.png` - Energy amber chevron with "Health Design Sprint" (Pillow-generated, true transparency)
- `presenter.png` - Original name/title version (needs regeneration)

### Overlays (`brand/studio/overlays/`)
- `logo-mdp.png` - 96x96 <mdp> logo bug (Pillow-generated, true transparency)
- `logo-bug.png` - Original <> version

### Holding Slides (`brand/studio/holding-slides/`)
- `starting-soon.png` - <mdp> + "Starting Soon..."
- `break.png` - <mdp> + "Taking a Short Break"
- `outro.png` - <mdp> + "Thank You"

### Stream Deck Icons (`brand/studio/stream-deck-icons/`)
- 9 icons for scene switching and controls

## Key Learnings

### Transparency for OBS Overlays
AI image generators (Gemini, DALL-E) cannot produce true alpha transparency. Use **Python/Pillow** for any overlay assets requiring transparency. See `docs/infrastructure/ai-model-decision-matrix.md` for full workflow.

### Virtual Camera Setup
macOS requires Camera Extension permission:
System Settings → Privacy & Security → Camera Extensions → Enable OBS

## TODO / Future Enhancements

- [ ] Create "HDS - Laptop" profile for single-screen setup
- [ ] Add Virtual Camera + Record buttons to Stream Deck
- [ ] Apply custom icons to Stream Deck buttons
- [ ] Test full multi-display setup when CalDigit TS4 arrives
- [ ] Regenerate presenter.png lower third with Pillow

## Quick Start

1. Open OBS → Scene Collection → "HDS Teaching"
2. Open Stream Deck app (auto-loads profile)
3. In OBS: Click "Start Virtual Camera"
4. Open Zoom → Video Settings → Camera: "OBS Virtual Camera"
5. Use Stream Deck buttons to switch scenes

---

*Documentation generated from setup session with Claude, January 26, 2026*
