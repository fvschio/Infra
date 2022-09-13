SET _EMAILFROM=
 
SET _EMAILTO=

SET _EMAILSMTP=

SET _PASSWMAIL=""

SET _LOGIN=

SET _ATTACH=

SET _MENS=
 
SET _EMAILSUBJ=
 
sendEmail -o tls=yes -f %_EMAILFROM% -t %_EMAILTO% -s %_EMAILSMTP% -xu %_LOGIN% -xp %_PASSWMAIL% -u "%_EMAILSUBJ%" -m %_MENS% -a %_ATTACH%


