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

## Golf Testing

### «ci"», «daw» & Co.: Textobjekte rocken

---

### «ci"», «daw» & Co.: Textobjekte rocken

```
1) Cursor im "hello world" → ci"Hi Vim<Esc>
2) Cursor in (w + h) → da) (löscht die ganze Klammer); danach ggf. daw um das übriggebliebene "+ " zu entfernen
3) Cursor in 'app' → ct' /var/www <Esc>
```

- `c`, `d`, `v`, `y`
- `a`, `i`
- `t` `w` oder explizit `{`, `"`

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

## Golf

### Bewegungen + Operatoren kombinieren

---

### Bewegungen + Operatoren kombinieren

```
Idee: Mit Operatoren + Motion arbeiten, z. B. auf Zeilen mit "# Aufgabe" springen und "cW" → "##", oder "I#" etc.
```

- `ct(`
- `d2w`
- `c$`
- `y}`

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

## Golf

### Visueller Blockmodus zum Spalten-Editieren

---

### Visueller Blockmodus zum Spalten-Editieren

```
Lösungsidee: gg, Ctrl-v, mit j runter, I, "// TODO: " tippen, <Esc>
```

- `gg` `shift+g`
- `ctrl+v` `j` `j`
- `I` `*` `esc`
- `A`, `i`, `a`

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

## Golf

### Suchen & Ersetzen mit «%s» und «\v»

---

### Suchen & Ersetzen mit «%s» und «\v»

```
:%s/user_id/userId/g
:%s/is_active/isActive/g
```

- `%s/search/replace/g`
- `%s/search/replace/gc`
- Mark, `%s//replace/g`
- `%s/\vtest()/hallo()/g`

---

## Vim

- LazyVim (Terminal, File Search, Grep, File Manipulationen, LazyExtras)
- kitty, ZSH (einfach Esc, ip address und ping [scrollback])
- Browser
- Hyprland (Ein ander Mal)

---

## Golf

### Makros aufnehmen und abspielen

---

### Makros aufnehmen und abspielen

```
Lösungsidee: Cursor auf "apple"
qa  (Macro a starten)
A, fruit<Esc>j
q   (stop)
2@a (zweimal abspielen)
```

- `qa` Makro in a speichern
- `A` `, text` `esc` `j` (`q` Recording beenden)
- 2@a zweimal Makro a abspielen
- `.`
- Register: `"_dw`, `"0p`
- Springen: `ma`, `a`
- Undo/Redo `u` `ctrl+r`

---

## danke (esc viw shift+u)

- Buchtipp: Vim Practical Vim: Edit Text at the Speed of Thought \
  978-1680501278

<!--
https://marpit.marp.app
 marp slides.md -w --theme-set custom-theme.css
-->
