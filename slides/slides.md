---
marp: true
theme: custom-theme
---

# Mein neues Tooling – dazwischen spielen wir Golf

- Persönlicher Erfahrungsbericht, nach 3 Monaten!
- Mehr Tastatur, weniger Maus
- Sicherheit
- Reproduzierbarkeit und Dokumentation
- Gerne eure Erfahrungen und Tipps im Nachgang

---

## Tastatur

### Pro

- <https://bastardkb.com> komplett Open Source
- Mehr Möglichkeiten mit dem Daumen
- Weniger Bewegung, alles erreichbar
- Klein und handlich
- Konfigurierbar und überall Einsetzbar
- VIA (Demo) - Der Weg ist das spielen

---

## Tastatur

### Contra

- Daumentasten
- USB Buchse
- Controller
- Laptop unterwegs

---

## FIDO2

- <https://www.token2.swiss/>
- Backup
- Diverse Einsätze (Passwortlos, Zweiter-Faktor, SSH)
- Key bleibt auf Gerät, kein Phising (Domain, Keys und TLS)
- Datenschutz (Daten auf Gerät (Biometrisch))
- LUKS, OS, SSH und diverse Online Kontos

![width:500px](Fido2_app_architecture.png)

---

## NixOS

### Pros

- Deklarativ
- Reproduzierbar (Echte Encryption)
- Atomare Updates & Rollbacks
- Isolierte Builds
- Mehrere Versionen Parallel
- Cross Platform

---

## NixOS

### Contra

- Lernkurve
- Ökosystem
- Packaging Edge Cases
- Read-Only

---

## Demo

- Reboot (Rollback / Token2)?
- which openssl
- nix-shell -p openssl
- nix develop (flake.nix, shell.nix)
- configuration.nix (waybar, user)

---

## Vim

- LazyVim (Terminal, File Search, Grep, File Manipulationen, LazyExtras)
- kitty, ZSH (einfach Esc, ip address und ping [scrollback])
- Browser

---

## danke (esc viw shift+u)

<!--
https://marpit.marp.app
 marp slides.md -w --theme-set custom-theme.css
-->
