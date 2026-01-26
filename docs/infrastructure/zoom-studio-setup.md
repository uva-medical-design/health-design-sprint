# MDP Zoom Teaching Studio Setup

## Document Purpose

Complete infrastructure guide for the Health Design Sprint virtual teaching setup. This document covers hardware inventory, physical configuration, software setup, and branded asset specifications that integrate with the MDP Design System.

**Status:** Ready for implementation  
**Target:** Operational by February 16, 2026  
**Last Updated:** January 26, 2026

---

## Part 1: Equipment Inventory

### Computers

| Device | Specs | Role | Notes |
|--------|-------|------|-------|
| MacBook Pro 14" (Nov 2023) | Apple M3 Pro, 18GB RAM, 1TB SSD | **Primary teaching machine** | Runs OBS, Zoom; supports 2 external displays |
| Mac Mini (2024) | Apple M4, 16GB RAM, 2TB SSD | **Dedicated AI agent host** | Fresh install for Clawdbot + Vapi agents; full backup preserved |

### Displays

| Display | Resolution | Connection | Notes |
|---------|------------|------------|-------|
| Apple Studio Display | 5K (5120x2880) | Thunderbolt 3 | Primary monitor, VESA mount |
| Dell S3225QS | 4K (3840x2160) 32" | DisplayPort | Secondary monitor |
| MacBook Pro built-in | 3024x1964 14" | N/A | Third screen for notes/controls |

### Cameras

| Camera | Connection | Role | Notes |
|--------|------------|------|-------|
| Insta360 Link 2 | USB-C | Primary presenter camera | AI tracking, gesture control, whiteboard mode |
| Logitech Brio 4K | USB-A | Secondary/whiteboard | Reliable, good low-light |

### Audio

| Device | Connection | Role |
|--------|------------|------|
| Blue Yeti | USB-A | Primary microphone |
| Boom stand | N/A | Off-desk mic positioning |

### Lighting

| Device | Control | Notes |
|--------|---------|-------|
| Elgato Key Light Air (x2) | WiFi / Stream Deck | 1400 lumens each, color temp adjustable |

### Control Surface

| Device | Connection | Notes |
|--------|------------|-------|
| Elgato Stream Deck (15-key) | USB-A | Model 20GAA9902 |

### Equipment to Sell

| Item | Reason | Est. Value |
|------|--------|------------|
| Blackmagic ATEM Mini | USB cameras incompatible (HDMI only); OBS more flexible | $150-200 |
| Satechi Mac Mini Hub | Underpowered, causes drive drops | $40-50 |

---

## Part 2: Required Purchase

| Item | Model | Price | Source | Status |
|------|-------|-------|--------|--------|
| Thunderbolt 4 Dock | **CalDigit TS4** | ~$380 | Amazon | **Ordered** |

### Optional Enhancements (Defer)

| Item | Price | Purpose |
|------|-------|---------|
| Monitor Arm (Studio Display) | $100-180 | VESA mount, desk space |
| Monitor Arm (Dell 32") | $150-200 | Heavy-duty for 32" |
| Laptop Stand | $50-80 | Elevates MacBook to monitor height |

---

## Part 3: Physical Desk Layout

### Recommended Configuration

```
┌─────────────────────────────────────────────────────────────────┐
│                          DESK LAYOUT                            │
│                                                                 │
│    ┌─────────┐         ┌─────────────┐         ┌─────────┐     │
│    │  Dell   │         │   Studio    │         │ MacBook │     │
│    │  32"    │         │   Display   │         │   Pro   │     │
│    │ (4K)    │         │    (5K)     │         │  14"    │     │
│    │         │         │             │         │         │     │
│    │Secondary│         │   PRIMARY   │         │ Tertiary│     │
│    │Landscape│         │  Landscape  │         │Landscape│     │
│    └─────────┘         └─────────────┘         └─────────┘     │
│                                                                 │
│         LEFT                CENTER                 RIGHT        │
│     (References,         (Zoom window,          (Notes,        │
│      Chat, Q&A)          Presentation)          Controls)      │
│                                                                 │
│    ┌───────┐                                                   │
│    │Stream │     [  Keyboard  ]    [ Trackpad ]                │
│    │ Deck  │                                                   │
│    └───────┘                                                   │
│                                                                 │
│    [Yeti Mic on Boom - positioned from left side]              │
│    [Insta360 Link 2 - mounted on top of Studio Display]        │
│    [Brio 4K - mounted on tripod aimed at whiteboard]           │
│    [Key Light Air x2 - 45° angles, slightly above eye level]   │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## Part 4: Hub Setup & Cable Architecture

### CalDigit TS4 Connection Map

```
┌─────────────────────────────────────────────────────────────────┐
│                     CalDigit TS4 Dock                           │
│                                                                 │
│  REAR PORTS                                                     │
│  [TB4 Host]────────────────────► MacBook Pro (single cable)    │
│  [TB4 Down]────────────────────► Studio Display (5K)           │
│  [DisplayPort]─────────────────► Dell S3225QS (4K)             │
│  [USB-C 10Gbps]────────────────► Insta360 Link 2               │
│  [USB-A 10Gbps]────────────────► Logitech Brio 4K              │
│  [USB-A 10Gbps]────────────────► Blue Yeti                     │
│  [USB-A 5Gbps]─────────────────► Stream Deck                   │
│  [2.5Gb Ethernet]──────────────► Router (optional)             │
│                                                                 │
│  FRONT PORTS                                                    │
│  [USB-C]───────────────────────► Quick-connect (phone, etc.)   │
│  [Audio Jack]──────────────────► Headphones (monitoring)       │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

### Dock/Undock Workflow

**To start teaching session:**
1. Plug single Thunderbolt cable into MacBook
2. All displays, cameras, mic, Stream Deck activate automatically
3. Open OBS, verify camera/audio
4. Start Zoom, select "OBS Virtual Camera"

**To end/leave:**
1. Close Zoom
2. Unplug single Thunderbolt cable
3. MacBook is fully portable

---

## Part 5: Video Platform

### OBS Studio (Confirmed)

OBS with Virtual Camera is the delivery platform. Zoom does **not** have native lower thirds or custom overlays.

**Why OBS:**
- Full control over scene composition
- Custom lower thirds and overlays
- Animated transitions
- Background music integration
- Industry standard, free
- Stream Deck integration

**How it works:**
- OBS composes your video (camera + lower third + frame)
- OBS Virtual Camera sends composed output to Zoom
- Zoom sees "OBS Virtual Camera" as your webcam
- Students see professional broadcast-quality video

### OBS Scene List

| Scene Name | Description | Sources |
|------------|-------------|---------|
| `[MDP] Main Camera` | Primary teaching view | Insta360, Lower Third, Logo, Frame |
| `[MDP] Whiteboard` | Secondary camera | Brio 4K, Logo, Frame |
| `[MDP] Screen Share` | Presentation mode | Display Capture, Camera PiP, Lower Third |
| `[MDP] Guest Mode` | Interview layout | Zoom Window Capture, Camera PiP |
| `[MDP] Starting Soon` | Pre-session holding | Slide, Background Music |
| `[MDP] Break` | Intermission | Slide, Background Music |
| `[MDP] Outro` | Session end | Slide |

### OBS Settings

```
Base Resolution:      1920x1080
Output Resolution:    1920x1080
FPS:                  30
Encoder:              Apple VT H264 Hardware
Recording Format:     MKV (remux to MP4 after)
Recording Path:       ~/Movies/OBS Recordings/
```

---

## Part 6: Stream Deck Configuration

### Button Layout (15 keys)

```
┌─────────────────────────────────────────────────────────────┐
│  Row 1: SCENES                                              │
│  ┌─────────┐ ┌─────────┐ ┌─────────┐ ┌─────────┐ ┌─────────┐│
│  │  MAIN   │ │ WHITE-  │ │ SCREEN  │ │  GUEST  │ │  BREAK  ││
│  │ CAMERA  │ │  BOARD  │ │  SHARE  │ │  MODE   │ │         ││
│  └─────────┘ └─────────┘ └─────────┘ └─────────┘ └─────────┘│
│                                                             │
│  Row 2: CONTROLS                                            │
│  ┌─────────┐ ┌─────────┐ ┌─────────┐ ┌─────────┐ ┌─────────┐│
│  │  MUTE   │ │   CAM   │ │ LOWER   │ │ LIGHTS  │ │ LIGHTS  ││
│  │   MIC   │ │ ON/OFF  │ │  THIRD  │ │   UP    │ │  DOWN   ││
│  └─────────┘ └─────────┘ └─────────┘ └─────────┘ └─────────┘│
│                                                             │
│  Row 3: SESSION                                             │
│  ┌─────────┐ ┌─────────┐ ┌─────────┐ ┌─────────┐ ┌─────────┐│
│  │  START  │ │  STOP   │ │STARTING │ │  OUTRO  │ │   OBS   ││
│  │ RECORD  │ │ RECORD  │ │  SOON   │ │  SLIDE  │ │SETTINGS ││
│  └─────────┘ └─────────┘ └─────────┘ └─────────┘ └─────────┘│
└─────────────────────────────────────────────────────────────┘
```

### Icon Design Requirements

All Stream Deck icons should be:
- **144x144 pixels** (Stream Deck native)
- **Monochrome** using MDP palette (`#1a1a1a` on `#f5f5f5` or inverse)
- **Legible at glance** — clarity over style
- **Functional first** — teaching moments, not decoration

---

## Part 7: Branded Asset Specifications

### Design System Reference

All assets use the MDP Design System tokens:

```yaml
# From brand/tokens/design-tokens.json
colors:
  nearBlack: "#1a1a1a"      # Primary text on light
  offWhite: "#f5f5f5"       # Primary text on dark
  darkGray: "#333333"       # Secondary text
  midGray: "#666666"        # Tertiary/accent lines
  paleGray: "#e0e0e0"       # Borders
  
  # Optional accent (use sparingly)
  teal: "#00897B"           # For subtle highlights

typography:
  fontFamily: "'JetBrains Mono', monospace"
  fontWeight:
    regular: 400
    bold: 700

logo:
  logomark: "brand/assets/favicon.svg"           # <> chevrons only
  fullLogo: "brand/assets/logo-primary-*.svg"    # <mdp> full mark
```

### Lower Third Design

**Layout:**

```
┌──────────────────────────────────────────────────────────────┐
│                                                              │
│  ╔════════════════════════════════════════════════════════╗  │
│  ║  Matthew Trowbridge MD MPH                             ║  │
│  ║  Health Design Sprint                    [swappable]   ║  │
│  ╚════════════════════════════════════════════════════════╝  │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

**Specifications:**

| Element | Value |
|---------|-------|
| Dimensions | 1920 x 120 pixels |
| Position | Bottom of frame, 40px from edge |
| Background | `#1a1a1a` at 85% opacity |
| Name text | JetBrains Mono Bold 36px, `#f5f5f5` |
| Context text | JetBrains Mono Regular 24px, `#cccccc` |
| Left accent | 4px vertical bar, `#00897B` (teal) |
| Animation | Slide in from left, 0.4s ease-out |

**Text content:**
- Line 1 (fixed): `Matthew Trowbridge MD MPH`
- Line 2 (swappable): `Health Design Sprint` / `Medical Design Program` / `UVA SOM` etc.

### Logo Placement (Corner Bug)

**Layout:**

```
┌──────────────────────────────────────────────────────────────┐
│  ┌────┐                                                      │
│  │<>  │  ← Logomark in upper left                           │
│  └────┘                                                      │
│                                                              │
│                    [ Video Feed ]                            │
│                                                              │
│                                                              │
│  ════════════════════════════════════════════════════════    │
│  Lower Third                                                 │
└──────────────────────────────────────────────────────────────┘
```

**Specifications:**

| Element | Value |
|---------|-------|
| Logo file | `brand/assets/favicon.svg` (the `<>` mark) |
| Size | 48 x 48 pixels |
| Position | 24px from top, 24px from left |
| Opacity | 100% on appear, fade to 60% after 3 seconds |
| Background | None (transparent) or subtle `#1a1a1a` at 40% |

### Subtle Frame

**Concept:** Thin accent lines along bottom edge, echoing the chevron geometry.

**Specifications:**

| Element | Value |
|---------|-------|
| Line weight | 2px |
| Color | `#666666` (mid gray) at 50% opacity |
| Position | Bottom edge, with subtle 15° angle at corners (chevron hint) |
| Coverage | Bottom 100%, sides 20% up from corners |

*Note: Frame should be subtle enough to be almost invisible during active teaching but provide polish on recordings.*

### Holding Slides

**Starting Soon Slide:**
- Dimensions: 1920 x 1080
- Background: `#1a1a1a` (near-black)
- Logo: `<mdp>` centered, 200px width
- Text: "Starting Soon..." in JetBrains Mono Regular 48px, `#f5f5f5`
- Optional: Slow chevron animation (diverge/converge, 8s cycle)

**Break Slide:**
- Same styling
- Text: "Taking a Short Break"
- Subtext: "Back in a few minutes"

**Outro Slide:**
- Same styling
- Text: "Thank You"
- Subtext: Course-specific contact or URL

---

## Part 8: Background Music

### Immediate Option: Pixabay (Royalty-Free)

| Track | Artist | Duration | Use Case | Search Term |
|-------|--------|----------|----------|-------------|
| Calming Minimal Ambient | Top-Flow | 1:55 | Starting Soon, general holding | "calming minimal ambient" |
| Modern Chillout (Future Calm) | penguinmusic | 1:06 | Higher energy holding | "modern chillout future calm" |
| Please Calm My Mind | music_for_video | 2:55 | Break slide, softer | "please calm my mind" |
| Technological Minimalism | penguinmusic | 1:58 | Tech-adjacent moments | "technological minimalism" |

**License:** Pixabay Content License — free for commercial use, no attribution required.

### Stretch Goal: Custom MDP Audio (Suno AI)

Generate a branded ambient loop that embodies the MDP identity.

**Suno Prompt:**

```
Create a 90-second ambient instrumental loop for a medical education program.

Style: Minimal electronic ambient with subtle warmth. Think Brian Eno meets 
modern tech podcast intros.

Structure:
- Gentle build (0-30s): Soft pads, subtle rhythmic pulse emerging
- Sustained middle (30-60s): Add light melodic elements, maintain calm energy
- Graceful resolve (60-90s): Elements recede, returns to opening texture 
  (seamless loop point)

Mood: Thoughtful, innovative, human-centered. Professional but not corporate. 
Suggests "possibility" and "exploration" without being cheesy.

Instruments: Soft synth pads, subtle electronic pulse (not beat-heavy), 
occasional piano notes, light textural elements. No drums, no vocals.

Tempo: Slow to moderate (70-85 BPM)
Key: Major or modal (Dorian/Mixolydian for subtle sophistication)

This is for "Medical Design Program" - a design thinking and AI prototyping 
course for physicians. The music should feel like the audio equivalent of 
well-designed white space.
```

**Usage notes:**
- Suno free tier: 50 credits/day (~10 generations)
- For commercial use: Suno Pro ($10/mo) grants full rights
- Iterate with: "make it more minimal" or "add subtle piano"

---

## Part 9: File Structure

All studio assets integrate with the existing repository:

```
health-design-sprint/
├── brand/
│   ├── assets/                    # Existing logo files
│   │   ├── favicon.svg            # <> logomark
│   │   ├── logo-primary-dark.svg  # <mdp> for dark bg
│   │   └── logo-primary-light.svg # <mdp> for light bg
│   │
│   └── studio/                    # NEW: Studio-specific assets
│       ├── lower-thirds/
│       │   ├── presenter.html     # Animated HTML version
│       │   └── presenter.png      # Static fallback
│       ├── holding-slides/
│       │   ├── starting-soon.html # With optional animation
│       │   ├── starting-soon.png
│       │   ├── break.png
│       │   └── outro.png
│       ├── overlays/
│       │   ├── logo-bug.png       # Corner logo
│       │   └── frame.png          # Subtle frame overlay
│       ├── stream-deck-icons/
│       │   ├── scene-main.png
│       │   ├── scene-whiteboard.png
│       │   ├── scene-screenshare.png
│       │   ├── scene-guest.png
│       │   ├── scene-break.png
│       │   ├── control-mute.png
│       │   ├── control-camera.png
│       │   ├── control-record.png
│       │   └── control-stop.png
│       └── audio/
│           └── README.md          # Links to Pixabay tracks + Suno experiments
│
├── docs/
│   └── infrastructure/
│       └── zoom-studio-setup.md   # THIS DOCUMENT
```

---

## Part 10: Implementation Checklist

### Phase 1: Hardware (This Week)

- [x] Order CalDigit TS4 dock (Amazon)
- [ ] Receive and test CalDigit TS4
- [ ] Sell ATEM Mini
- [ ] Sell Satechi hub
- [ ] Physically arrange desk per layout
- [ ] Connect all devices to CalDigit TS4
- [ ] Test all connections with MacBook Pro

### Phase 2: Software Setup

- [ ] Install OBS Studio
- [ ] Install Elgato Stream Deck software
- [ ] Install Elgato Control Center (Key Lights)
- [ ] Configure OBS scenes (placeholder assets)
- [ ] Configure Stream Deck buttons
- [ ] Test OBS Virtual Camera with Zoom

### Phase 3: Design Assets (Claude Code)

- [ ] Generate lower third (HTML + PNG)
- [ ] Generate holding slides (PNG)
- [ ] Generate logo bug overlay (PNG)
- [ ] Generate frame overlay (PNG)
- [ ] Generate Stream Deck icons (PNG set)
- [ ] Download Pixabay music tracks
- [ ] (Optional) Generate Suno custom audio

### Phase 4: Integration

- [ ] Import assets into OBS
- [ ] Apply Stream Deck icons
- [ ] Configure scene transitions
- [ ] Test complete workflow

### Phase 5: Production Test

- [ ] Conduct test Zoom session
- [ ] Adjust lighting (Key Light positions)
- [ ] Adjust camera framing (Insta360 settings)
- [ ] Backup OBS profile
- [ ] Backup Stream Deck profile

---

## Appendix: Troubleshooting

| Issue | Likely Cause | Solution |
|-------|--------------|----------|
| Display not detected | Cable/port | Try different TB4 port on dock |
| Camera not in OBS | Permission | System Settings → Privacy → Camera → Allow OBS |
| Mic not working | Permission/routing | Privacy → Microphone; check OBS audio settings |
| Stream Deck blank | Software | Launch Elgato Stream Deck app |
| Key Lights unresponsive | WiFi | Ensure same network, restart Control Center |
| OBS Virtual Camera not in Zoom | Not started | OBS → Tools → Start Virtual Camera |
| Zoom shows wrong camera | Selection | Zoom → Video Settings → OBS Virtual Camera |

---

*Document Version: 2.0*  
*Created: January 26, 2026*  
*For: Health Design Sprint - MDP Design System Integration*
