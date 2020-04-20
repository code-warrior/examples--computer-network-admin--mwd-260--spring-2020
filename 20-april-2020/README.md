# 20 April 2020

## Upgrading Packages Remotely
```bash
sudo apt-get upgrade
```

Reboot machine: `sudo reboot`

---

## Who’s Logged In
`users`
`who`
`w`

And, if you want to know which programs a users is running, try

`ps au`

---

## Truth Tables
### And Case (&&)
| A | B | Z |
|---|---|---
| 1 | 1 | 1 |
| 1 | 0 | 0 |
| 0 | 1* | 0 |
| 0 | 0* | 0 |

Asterisk indicates don’t care situation

---

### Or Case (||)
| A | B | Z |
|---|---|---
| 1 | 1* | 1 |
| 1 | 0* | 1 |
| 0 | 1 | 1 |
| 0 | 0 | 0 |

Asterisk indicates don’t care situation

---
