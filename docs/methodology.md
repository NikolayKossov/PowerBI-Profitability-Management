# Metodyka i kontrakt danych

**Ziarnistość:** Jedna pozycja faktury sprzedaży (LineID), przypisana do jednej wysyłki.

Przychód netto = sprzedaż przed rabatem − rabaty, wszystkie kwoty bez VAT w PLN. Koszt wysyłki jest dzielony między pozycje proporcjonalnie do przychodu netto całej wysyłki przed filtrowaniem raportu. Alokacji nie zaokrąglamy na poziomie wiersza, tylko przy prezentacji, aby zachować uzgodnienie. Kontrybucja = netto − COGS − przypisany transport. Cel = przychód netto × docelowy procent segmentu. Nie jest to EBITDA ani zysk netto.

## Zasady wspólne

- Okres: 2024-01-01 — 2025-12-31; pełny kalendarz i relacje 1:N, jednokierunkowe.
- Dane deterministyczne i w całości syntetyczne; brak danych osobowych i firmowych.
- Klucze źródeł muszą być unikalne. Łączenia lewe w M przerywają odświeżanie przy brakach lub zwielokrotnieniu wierszy.
- Puste mianowniki w DAX zwracają BLANK przez DIVIDE, nie pozorne zero.
- Miesiące sortowane jako YYYY-MM. Dla kart m/m należy wybrać jeden miesiąc; na pełnym zakresie DATEADD przesuwa cały zakres dat. Brak wcześniejszego okresu daje BLANK.
- Kolumnę Date[Date] oznaczono jako klucz daty, tabelę jako Time; sprawdź Mark as date table w Desktop.
- Pliki CSV: UTF-8, przecinek, kropka dziesiętna, daty ISO; jawna kultura en-US przy imporcie.

## Integracja ERP

Eksporty są inspirowane typowymi systemami ERP/MES/TMS. Nie jest to konektor ani odtworzenie schematu Comarch ERP Optima. Przed podłączeniem rzeczywistej Optimy należy uzgodnić dokumenty, klucze, korekty i jednostki z administratorem, korzystając z udokumentowanego eksportu lub widoków tylko do odczytu.

## Ograniczenia

Brak zwrotów, korekt, zerowych i ujemnych przychodów, kosztów stałych, VAT i terminów płatności. Dla danych produkcyjnych należy zdefiniować osobną zasadę alokacji korekt i przesyłek bez wartości.

## Walidacja silnika

Kontrole Python/SQL i JSON nie zastępują odświeżenia w Power BI Desktop. Power Query i DAX wymagają końcowej walidacji w tym silniku; nie deklarujemy wykonania jej bez uruchomienia Desktop.
