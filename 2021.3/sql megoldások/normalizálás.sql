UPDATE uszok
SET szarmazas_azon = (
    SELECT kodok.orszag_azon FROM `uszok` ua
    JOIN kodok ON kodok.orszag=ua.szarmazas
    WHERE uszok.helyezes=ua.helyezes
)


UPDATE eremtablazat
SET orszag_azon = (
    SELECT kodok.orszag_azon FROM kodok
    JOIN eremtablazat ert ON kodok.orszag=ert.orszag
    WHERE ert.orszag = eremtablazat.orszag
)

-- ebből hiányzik egy
UPDATE bajnoksag
SET rendezo_azon = (
    SELECT kodok.orszag_azon FROM kodok
    JOIN bajnoksag bjk ON kodok.orszag=bjk.orszag
    WHERE bjk.ev = bajnoksag.ev
)

