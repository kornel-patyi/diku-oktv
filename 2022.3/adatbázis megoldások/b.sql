INSERT INTO szemelyek (dijazott_azon, nev, teljes_nev, szuletesi_ev, szuletesi_datum, nem, szuletesi_hely)
VALUES (985, "Roger Penrose", "Roger Penrose", NULL, "1931-08-08", "férfi", "Európa");

VALUES (
    985
    (
        SELECT kategoria_azon FROM kategoria
        WHERE kategoria.nev = "Fizikai"
        LIMIT 1
    ),
    2020,
    "black hole"
)