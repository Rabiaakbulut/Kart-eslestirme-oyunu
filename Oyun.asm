;DERS: Mikroislemci projesi 
;KONU: 3x2 kartlarda renk bulmaca oyunu
;HAZIRLAYAN: Rabia Akbulut 170420822      

org 100h

mov al,0h
mov ah,0
int 10h   ;text modu 40x25  

;MESAJLAR
;satir 0 sutun 0 mesaji
mov al, 1                      ;yazma modu
mov bh, 0                      ;sayfa numarasi
mov bl, 0011_1011b             ;arka plan cyan, karakter light cyan rengi
mov cx, msg2end - offset msg2  ;mesaj boyutu hesaplama
mov dl, 0                      ;sutun
mov dh, 0                      ;satir
push cs
pop es
mov bp, offset msg2
mov ah, 13h
int 10h
jmp msg2end
msg2 db "*Mavi, Yesil ve Sari kartlari eslestir"
msg2end:  

;satir 4 sutun 10 mesaji
mov al, 1
mov bh, 0
mov bl, 0011_1011b
mov cx, msg1end - offset msg1 
mov dl, 10
mov dh, 4
push cs
pop es
mov bp, offset msg1
mov ah, 13h
int 10h
jmp msg1end
msg1 db " ilerleme gostergeniz "
msg1end:

;OYUNDA ILERLEMEYI GOSTEREN GOSTERGE
;Mavi kutu gostergesi
mov dh,4     ;satir
mov dl,5     ;sutun
mov bh,0     ;aktif sayfa numarasi
mov ah,2     ;kursor pozisyonu ayarlama interrupti
int 10h                     
mov al,77    ;M (Mavi) karakteri bastirma
mov bl,07Bh  ;arkaplan light gray(7), karakter light cyan(B)
mov cx,1     ;1 karakter yazdirma
mov ah,09    ;karakter yazma interrupti
int 10h 
  
;Yesil kutu gostergesi
mov dh,4   
mov dl,6   
mov bh,0   
mov ah,2   
int 10h                      
mov al,89   ;Y (Yesil) karakteri bastirma
mov bl,07Ah ;arkaplan light gray(7), karakter light green(A)
mov cx,1    
mov ah,09   
int 10h    

;Sari kutu gostergesi
mov dh,4 
mov dl,7 
mov bh,0  
mov ah,2  
int 10h                     
mov al,83   ;S (Sari) karakteri bastirma
mov bl,07Eh ;arkaplan light gray(7), karakter yellow(E)
mov cx,1    
mov ah,09   
int 10h

  
;3X2 KARTLAR ICIN CERCEVE OLUSTURMA
;not:daha kisa bir yolu olabilir      
mov dh,9   ;satir
mov dl,19  ;sutun
mov bh,0   ;aktif sayfa numarasi
mov ah,2   ;kursor pozisyonu ayarlama interrupti
int 10h                      
mov al,178 ;A karakteri bastirma
mov bl,0ddh;arkaplan ve karakter light magenta(d)
mov cx,5   ;2 karakter yazdirma
mov ah,09  ;karakter yazma interrupti
int 10h       

mov dh,15 
mov dl,19 
mov bh,0  
mov ah,2  
int 10h                      
mov al,178 
mov bl,0ddh
mov cx,5  
mov ah,09 
int 10h       

mov dh,10 
mov dl,19 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h
mov dh,11 
mov dl,19 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h
mov dh,12 
mov dl,19 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h
mov dh,13 
mov dl,19 
mov bh,0 
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h           
mov dh,14 
mov dl,19 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h         
mov dh,11
mov dl,20 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h  
mov dh,13 
mov dl,20 
mov bh,0 
mov ah,2  
int 10h                      

mov al,178
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h 
mov dh,10 
mov dl,21 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h
mov dh,11
mov dl,21 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h    
mov dh,12 
mov dl,21 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h  
mov dh,13 
mov dl,21 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h  
mov dh,14
mov dl,21 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09
int 10h    
mov dh,11 
mov dl,22 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h           
mov dh,13 
mov dl,22 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h 
mov dh,10 
mov dl,23 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h  
mov dh,11 
mov dl,23 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h  
mov dh,12 
mov dl,23 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h  
mov dh,13 
mov dl,23 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h  
mov dh,14 
mov dl,23 
mov bh,0  
mov ah,2  
int 10h                      
mov al,178 
mov bl,0ddh
mov cx,1  
mov ah,09 
int 10h  

    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
  
;adresi 0800:0000 yaptim 
;burada yazma/okuma islemleri yapilacak

mov ax,0800h      ;ds'ye 0800 atiyoruz
mov ds,ax  

mov si,0          ;si'ya 0 atiyoruz
mov [si+5],0 


mov [si+10],0     ;mavi kartlar eslesmisse 1 olacak
mov [si+11],0     ;yesil kartlar eslesmisse 1 olacak
mov [si+12],0     ;sari kartlar eslesmisse 1 olacak

mov [si+9],0      ;iki kartta bir eslesme olmamissa kartlari ters cevir   

mov [si+3],0      ;her kart eslesmesinde bu degeri 1 arttir
                  ;[si+3] degeri 3 olunca tum kartlar eslesmistiir
                  ;yani oyun biter

  
tekrar:                
mov ax, 1         ;fare isaretcisi
int 33h

mov  ax, 0003h    ;fare konum bilgisi
int  33h        
  
cmp [si+9],2      ;iki kartta bir eslenmeyen kartlari ters cevir
JE ikile
  
cmp bx,1          ;sol tiklanmissa dallan, konumlara bak
je dallan               
  
cmp [si+3],3      ;3 kart da eslenmisse oyunu bitir
JE bitir
             
loop tekrar       ;oyun bitene kadar tekrar et
  

;bu kisim 3x2 kutularin konum bilgileriyle ilgili
;sol tiklanan pixelin konum bilgilerine gore islem yaptim
;konum bilgileriyle ilgili detayli bilgiyi resimden bulabilirsiniz  
dallan:           
mov si,0          ;sol tiklanma konum bilgilerini memorye kaydet
mov [si],cx
mov [si+1],dx  
  
cmp [si],160   ;AO
JAE dallan1 
JB tekrar
          
dallan1:
cmp [si],167   ;A7      
JBE dallan2 
JA dallan1_2

dallan1_2:  
cmp [si],176   ;BO
JAE kutu2_1 
JB tekrar
  
kutu2_1:
cmp [si],183   ;B7
JBE kutu2_2
JA tekrar
  
kutu2_2:
cmp [si+1],80  ;50
JAE kutu2_3 
JB tekrar
  
kutu2_3:
cmp [si+1],87  ;57      ;57 atmis arasi
JBE kutu2_4 
JA kutu4_0

kutu4_0:    
cmp [si+1],96  ;60
JAE kutu4_1
JB tekrar
  
kutu4_1:
cmp [si+1],103 ;67
JBE kutu4_2
JA kutu6_0

kutu6_0:  
cmp [si+1],112 ;70
JAE kutu6_1 
JB tekrar
  
kutu6_1:
cmp [si+1],119 ;77
JBE kutu6_2
JA tekrar
    
dallan2:
cmp [si+1],80
JAE dallan3   
JB tekrar
  
dallan3:
cmp [si+1],87
JBE dallan4
JA kutu3_0 

kutu3_0:           
cmp [si+1],96
JAE kutu3_1
JB tekrar
  
kutu3_1:
cmp [si+1],103
JBE kutu3_2
JA kutu5_0

kutu5_0:  
cmp [si+1],112
JAE kutu5_1
JB tekrar
  
kutu5_1:
cmp [si+1],119
JBE kutu5_2
JA tekrar
  
kutu3_2: 
  
inc [si+9]
mov dh,12 
mov dl,20 
mov bh,0  
mov ah,2  
int 10h  
mov al,178 
mov bl,044h  ;3 numarali mavi kutu
mov cx,1  
mov ah,09 
int 10h                
mov si,0 
cmp [si+5],1
JE dallan100
JNE kutu3_3

kutu3_3:
mov [si+5],3  
mov si,0
cmp si,0
JE tekrar          
          
        
dallan4:
inc [si+9]
mov dh,10 
mov dl,20 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,044h  ;1 numarali mavi kutu
mov cx,1  
mov ah,09 
int 10h       
mov si,0  
cmp [si+5],3
JE dallan100
JNE dallan4_1

dallan4_1:
mov si,0
mov [si+5],1 
cmp si,0
JE tekrar   

dallan100:   ;mavi kartlar eslesmisse
mov dh,5 
mov dl,5 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0BBh
mov cx,1  
mov ah,09 
int 10h  
mov [si+5],0   
mov [si+10],1  
inc [si+3]    

mov si,0
cmp si,0
JE tekrar

kutu2_4:     

inc [si+9]
mov dh,10 
mov dl,22 
mov bh,0 
mov ah,2  
int 10h                      

mov al,178 
mov bl,0ddh  ;2 numarali yesil kutu
mov cx,1  
mov ah,09 
int 10h 
mov si,0 
cmp [si+5],6
JE dallan101
JNE kutu2_5

kutu2_5:
mov si,0
mov [si+5],2
cmp si,0
JE tekrar 
          
dallan101:
mov dh,5 
mov dl,6 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0aah  ;yesil kartlar eslesmisse
mov cx,1  
mov ah,09 
int 10h  
mov [si+5],0 
mov [si+11],1  
inc [si+3]
mov si,0
cmp si,0
JE tekrar              

kutu4_2:  
inc [si+9]  
mov dh,12 
mov dl,22 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,99h  ;4 numarali sari kart
mov cx,1 
mov ah,09 
int 10h      
cmp [si+5],5
JE dallan102 
JNE kutu4_3

kutu4_3:
mov si,0
mov [si+5],4
cmp si,0
JE tekrar  

dallan102:   ;sari kartlar eslesmisse
mov dh,5
mov dl,7 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,0eeh
mov cx,1  
mov ah,09 
int 10h  
mov [si+5],0  
mov [si+12],1  
inc [si+3]
mov si,0
cmp si,0
JE tekrar 

kutu5_2: 
inc [si+9]   
mov dh,14 
mov dl,20 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,099h  ;5 numarali sari kart
mov cx,1  
mov ah,09
int 10h       
cmp [si+5],4
JE dallan102
JNE kutu5_3

kutu5_3:
mov si,0
mov [si+5],5
cmp si,0
JE tekrar         

kutu6_2:
inc [si+9]    
mov dh,14 
mov dl,22 
mov bh,0  
mov ah,2 
int 10h                      

mov al,178 
mov bl,0ddh  ;6 numarali yesil kutu
mov cx,1     
mov ah,09   
int 10h   
mov si,0 
cmp [si+5],2
JE dallan101 
JNE kutu6_3 

kutu6_3:
mov [si+5],6
mov si,0
cmp si,0
JE tekrar        

;IKI KARTTA BIR ESLESEN KARTLAR HARIC DIGER KARTLARI
;TERS CEVIR,KARART
ikile:
mov [si+5],0
mov [si+9],0
cmp [si+12],1
JNE karart 
JE karart2

karart:
mov dh,12    ;4 numrali kart
mov dl,22 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,00h   ;siyah
mov cx,1  
mov ah,09 
int 10h 

mov dh,14    ;5 numarali kart
mov dl,20 
mov bh,0 
mov ah,2  
int 10h                      

mov al,178 
mov bl,000h  ;siyah
mov cx,1  
mov ah,09
int 10h 
mov si,0
cmp si,0
JE karart2  

karart2:
cmp [si+11],1
JNE karart2_1
JE karart3

karart2_1:
mov dh,14    ;6 numarali kart
mov dl,22 
mov bh,0 
mov ah,2  
int 10h                      

mov al,178 
mov bl,000h  ;siyah
mov cx,1 
mov ah,09 
int 10h  
mov dh,10    ;2 numarali kart
mov dl,22 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,000h  ;siyah
mov cx,1  
mov ah,09 
int 10h  
mov si,0
cmp si,0
JE karart3

karart3:
cmp [si+10],1
JNE karart3_1
JE tekrar

karart3_1:
mov dh,12    ;3 numarali kart
mov dl,20 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,000h  ;siyah
mov cx,1  
mov ah,09 
int 10h 
mov dh,10    ;1 numarali kart
mov dl,20 
mov bh,0  
mov ah,2  
int 10h                      

mov al,178 
mov bl,000h  ;siyah
mov cx,1  
mov ah,09 
int 10h 
mov si,0
cmp si,0
JE tekrar   
   
;tum kartar eslesmisse tebrikler mesaji yazdir ve oyunu bitir
bitir:   
	mov al, 1
	mov bh, 0
	mov bl, 0011_1011b
	mov cx, msg5end - offset msg5 ; calculate message size. 
	mov dl, 5
	mov dh, 20
	push cs
	pop es
	mov bp, offset msg5
	mov ah, 13h
	int 10h
	jmp msg5end
	msg5 db " tebrikler oyunu kazandiniz!"
	msg5end:
	
MOV AH, 0
INT 21H

ret
             