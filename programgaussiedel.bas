Cls
Rem "PROGRAM MENCARI SOLUSI SPLTV METODE GAUSS SEIDEL"
Rem  "OLEH : MARSHAL NAZARETH GASONG"
Cls
Print
Print "PROGRAM MENCARI SOLUSI SPLTV METODE GAUSS SIEDEL"
Print "OLEH : MARSHAL NAZARETH GASONG"
Print "NIM : 081911010"
Print "FAKULTAS : TEKNIK INFORMATIKA"
Print "-----------------------------------"
Print "PERSAMAAN SPLTV ADALAH"
Print "Pers 1 : a1x + b1y + c1z = d1"
Print "Pers 2 : a2x + b2y + c2z = d2"
Print "pers 3 : a3x + b3y + c3z = d3"
Print "MASUKKAN KOEFISIEN-KOEFISIEN BERIKUT"
Print

Locate 12, 1: Input "a1 = "; a1
Locate 12, 18: Input "b1 = "; b1
Locate 12, 35: Input "c1 = "; c1
Locate 12, 52: Input "d1 = "; d1
Print
Print
Locate 13, 1: Input "a2 = "; a2
Locate 13, 18: Input "b2 = "; b2
Locate 13, 35: Input "c2 = "; c2
Locate 13, 52: Input "d2 = "; d2
Print
Print
Locate 14, 1: Input "a3 = "; a3
Locate 14, 18: Input "b3 = "; b3
Locate 14, 35: Input "c3 = "; c3
Locate 14, 52: Input "d3 = "; d3
Print
Print
Locate 16, 1: Input " Tebakan x = "; x
Locate 16, 18: Input "Tebakan y = "; y
Locate 16, 35: Input "Tebakan z = "; z
Print
Print
Print "SUDAH BENAR INPUT DATANYA...?"
Print "TEKAN ENTER >>> ...."
Sleep
Cls
Print
Print " PROGRAM MENCARI SOLUSI SPLTV METODE GAUSS SIEDEL CREATED BY MARSHAL NAZARETH G"
Print " ____________________________________________________________________________"
Print " ITERASI    NILAI x     NILAI y     NILAI z     NILAI eror "
Print " ____________________________________________________________________________"

n = 0: e# = 1
While e# > .0000001
    Rem program berjalan selama nilai error di atas 0.0000001
    xn = (1 / a1) * (d1 - (b1 * y) - (c1 * z))
    yn = (1 / b2) * (d2 - (a2 * xn) - (c2 * z))
    zn = (1 / c3) * (d3 - (a3 * xn) - (b3 * yn))
    n = n + 1
    e# = Abs((xn + yn + zn) - (x + y + z)) / (xn + yn + zn)

    Locate 6 + n, 2: Print n
    Locate 6 + n, 12: Print x
    Locate 6 + n, 24: Print y
    Locate 6 + n, 36: Print z
    Locate 6 + n, 48: Print e#
    x = xn: y = yn: z = zn
Wend
End

