Projekt przedstawia aplikację webową - sklep internetowy "Candles&Plants"
Realizacja projektu: Aneta Bruzda, Magdalena Piwko, Patrycja Misterka, Julia Wójtowicz

Strona główna posiada dwie podstrony z produktami, podstronę z kontaktem oraz koszyk. Obsługa koszyka realizowana jest za pomocą scriptu js. Po wybraniu produktów koszyk przenosi uzytkownika na stronę logowania (by zrealizować zakup wymagane jest konto). Na stronie logowania można zalogowć się na swój profil lub utworzyć nieistniejący.

Utworzono dwie bazy, jedna dla adminów, druga dla użytkowników. Po wpisaniu loginu i hasła w przypadku logowania realizowne jest połączenie z odpowiednią bazą. W przypadku zalogowania się admina strona kieruje użytkownika na stronę z tabelką z informacjami do wysyłki zakupionych rzeczy. W przypadku połączenia z bazą "users" następuje przekierownaie na stronę z formularzem, w której użytkownik uzupełnia swoje dane do wysyłki produktu. Zarówno w przypadku logowania, rejestracji i formularza zastosowano walidację danych za pomocą funkcji php. 

W przypadku rejstracji sprawdzany jest klucz ID jakim jest login użytkownika. W przypadku powielenia klucza następuje komunikat, że użytkownik ma już konto. Hasła przechowywane w bazie są zahashowane. 

Po prawidłowym wypełnieniu formularza, następuje przekierowanie na stronę z podsumowaniem zamówienia - zamówione produkty, suma zamówienia oraz dane do wysyłki. Z podsumowania można przejść z powrotem na sklep. 

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Plik mpiwko.sql zawiera wszystkie bazy danych stworzone dla tego projektu.

Przykładowe hasło i login potrzebne do zalogowania jako użytkownik:
Login: maryskaelo    Hasło: maryska123

Przykładowe hasło i login potrzebne do zalogowania się jako administrator:
Login: magdapiwko    Hasło : magda123
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

