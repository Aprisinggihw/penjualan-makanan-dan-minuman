.model small
.code
org 100h
start:
      jmp mulai
nama db 13,10,"Nama Pembeli: $"
tampung_nama db 30,?,30 dup(?)
daftar db 13,10,'|--------------------------------------------------|'
       db 13,10,'|-------------------Menu Makanan-------------------|'
       db 13,10,'|--------------------------------------------------|'
       db 13,10,'|No |    Nama makanan     |         harga          |'
       db 13,10,'|--------------------------------------------------|'   
       db 13,10,'| 1 |    Ayam Goreng      |       Rp10.000         |'
       db 13,10,'|--------------------------------------------------|'
       db 13,10,'| 2 |    Ayam  Bakar      |       Rp12.000         |'
       db 13,10,'|--------------------------------------------------|'
       db 13,10,'| 3 |    Nasi Goreng      |       Rp10.000         |'
       db 13,10,'|--------------------------------------------------|'
       db 13,10,'| 4 |    Nasi Uduk        |       Rp10.000         |'
       db 13,10,'|--------------------------------------------------|'
       db 13,10,'| 5 |    Pecel lele       |       Rp10.000         |'
       db 13,10,'|--------------------------------------------------|'
       db 13,10,'| 6 |    Lontong Sayur    |       Rp10.000         |'
       db 13,10,'|--------------------------------------------------|','$'
       
daftar2 db 13,10,'|--------------------------------------------------|'
        db 13,10,'|-----------------Menu Minuman---------------------|'
        db 13,10,'|--------------------------------------------------|'
        db 13,10,'|No |   Nama Minuman      |         harga          |'
        db 13,10,'|--------------------------------------------------|'   
        db 13,10,'| 1 |   Teh Manis         |        Rp3.000         |'
        db 13,10,'|--------------------------------------------------|'
        db 13,10,'| 2 |   Milo Dingin       |        Rp7.000         |'
        db 13,10,'|--------------------------------------------------|'
        db 13,10,'| 3 |   Kopi Susu         |        Rp4.000         |'
        db 13,10,'|--------------------------------------------------|'
        db 13,10,'| 4 |   Kpoi Hitam        |        Rp4.000         |'
        db 13,10,'|--------------------------------------------------|'
        db 13,10,'| 5 |   Soda Gembira      |        Rp7.000         |'
        db 13,10,'|--------------------------------------------------|'
        db 13,10,'| 6 |   Es Jeruk          |        Rp4.000         |'
        db 13,10,'|--------------------------------------------------|','$'
        
error    db 13,10,'NOMOR YANG ANDA MASUKAN SALAH $'
pilih    db 13,10,'Silahkan Pilih Makanan Yang Anda Ingin Beli: $'
pilih2   db 13,10,'Silahkan Pilih Minuman Yang Anda Ingin Beli: $'

mulai:
    
    mov ah,09h
    lea dx,nama
    int 21h
    mov ah,0ah
    lea dx,tampung_nama
    int 21h 
     
    mov ah,09h
    mov dx,offset daftar
    int 21h
     
    jmp proses
   
     
      
error_nsg: 
      mov ah,09h
      mov dx,offset error
      int 21h
      int 20h

proses: 
      mov ah,09h
      mov dx,offset pilih
      int 21h
      
      mov ah,1
      int 21h
     
      mov bl,al
      
      cmp bl,'1'
      je hasil1
      
      
      cmp bl,'2'
      je hasil2 
      
      
      cmp bl,'3'
      je hasil3 
      
      
      cmp bl,'4'
      je hasil4 
      
      
      cmp bl,'5'
      je hasil5 
      
      
      cmp bl,'6'
      je hasil6 
      jne error_nsg 
;--------------------------------------
      
proses2:

      mov ah,09h
      mov dx,offset daftar2
      int 21h
       
      mov ah,09h
      mov dx,offset pilih2
      int 21h
       
      mov ah,1
      int 21h
      mov bl,al
      
      
      cmp bl,'1'
      je hasil7 
      
      cmp bl,'2'
      je hasil8
      
      cmp bl,'3'
      je hasil9 
      
      cmp bl,'4'
      je hasil10 
      
      cmp bl,'5'
      je hasil11 
      
      cmp bl,'6'
      je hasil12
      
      jne error_nsg
;-------------------------------------

hasil1:
     mov ah,09h
     lea dx,teks1
     int 21h
     jmp proses2
     int 20h
hasil2:
     mov ah,09h
     lea dx,teks2
     int 21h
     jmp proses2
     int 20h
hasil3:
     mov ah,09h
     lea dx,teks3
     jmp proses2
     int 21h
     int 20h
hasil4:
     mov ah,09h
     lea dx,teks5
     int 21h 
     jmp proses2
     int 20h
hasil5:
     mov ah,09h
     lea dx,teks5
     int 21h    
     jmp proses2
     int 20h
hasil6:
     mov ah,09h
     lea dx,teks6
     int 21h    
     jmp proses2
     int 20h
hasil7:
     mov ah,09h
     lea dx,teks7
     int 21h
     int 20h
hasil8:
     mov ah,09h
     lea dx,teks8
     int 21h
     int 20h
hasil9:
     mov ah,09h
     lea dx,teks9
     int 21h
     int 20h
hasil10:
     mov ah,09h
     lea dx,teks10
     int 21h
     int 20h
hasil11:
     mov ah,09h
     lea dx,teks11
     int 21h
     int 20h
hasil12:
     mov ah,09h
     lea dx,teks12
     int 21h
     int 20h


;----------------------------------------------

teks1 db 13,10,'Anda Memesan Ayam Goreng Rp10.000 $'
      

teks2 db 13,10,'Anda Memesan Ayam Bakar Rp12.000 $'
      
     
teks3 db 13,10,'Anda Memesan Nasi Goreng Rp10.000 $'
      
      
teks4 db 13,10,'Anda Memesan Nasi Uduk Rp10.000 $'
      
      
teks5 db 13,10,'Anda Memesan Pecel lele Rp10.000 $'
     
      
teks6 db 13,10,'Anda Memesan Lontong Sayur Rp10.000 $'
 
;-------------------------------------------------      
      
teks7 db 13,10,'Anda Memesan Teh Manis Rp3.000'
      db 13,10,'Mohon ditunggu pesananya,Terimakasih $'
      
teks8 db 13,10,'Anda Memesan Milo Dingin Rp7.000'
      db 13,10,'Mohon ditunggu pesananya,Terimakasih $'
      
teks9 db 13,10,'Anda Memesan Kopi Susu Rp4.000'
      db 13,10,'Mohon ditunggu pesananya,Terimakasih $'
      
teks10 db 13,10,'Anda Memesan Kpoi Hitam Rp4.000'
      db 13,10,'Mohon ditunggu pesananya,Terimakasih $'
      
teks11 db 13,10,'Anda Memesan Soda Gembira Rp7.000'
      db 13,10,'Mohon ditunggu pesananya,Terimakasih $'
      
teks12 db 13,10,'Anda Memesan Es Jeruk Rp4.000'
      db 13,10,'Mohon ditunggu pesananya,Terimakasih $'
      

end start                                                                                                                                
