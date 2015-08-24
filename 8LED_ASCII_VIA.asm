; File: 8LED_ASCII_VIA.asm
; Feb 09, 2015
; This is a simple example of how to turn on LEDs to represent the ASCII values used by computers to 
; represent the letters in the alphabet.

		org	$1900			    ; This is the location in memory where the program is stored

; When the board is plugged in or reset, Port B of the W65C22 device is setup as INPUTS.  
; Since we are turning LEDS ON and OFF, we want Port B to be OUTPUTS
		lda	#$FF				; LoaD the Accumulator with FF = 1111 1111 (ALL HIGH)
		sta	$7FC2				; STore Accumulator to address $7FC2 which is the Data Direction Register B
										; This sets each of the Port B lines to be OUTPUTS.  

; Now that Port B is setup to turn the LEDs ON, we need to tell it which ones.

		lda #%01000001	        ; ASCII Value is A
		sta $7FC0				; This is the location of the Output Register of Port B		
		lda #%01000010	        ; ASCII Value is B 
		sta $7FC0				; This is the location of the Output Register of Port B
		lda #%01000011          ; ASCII Value is C
		sta $7FC0				; This is the location of the Output Register of Port B		
		lda #%01000100	        ; ASCII Value is D
		sta $7FC0				; This is the location of the Output Register of Port B
		lda #%01000101	        ; ASCII Value is E 
		sta $7FC0				; This is the location of the Output Register of Port B		
		lda #%01000110	        ; ASCII Value is F 
		sta $7FC0				; This is the location of the Output Register of Port B
		lda #%01000111	        ; ASCII Value is G 
		sta $7FC0				; This is the location of the Output Register of Port B		
		lda #%01001000	        ; ASCII Value is H
		sta $7FC0				; This is the location of the Output Register of Port B
		lda #%01001001	        ; ASCII Value is I
		sta $7FC0				; This is the location of the Output Register of Port B		
		lda #%01001010	        ; ASCII Value is J 
		sta $7FC0				; This is the location of the Output Register of Port B
		lda #%01001011	        ; ASCII Value is K 
		sta $7FC0				; This is the location of the Output Register of Port B		
		lda #%01001100	        ; ASCII Value is L 
		sta $7FC0				; This is the location of the Output Register of Port B
		lda #%01001101	        ; ASCII Value is M
		sta $7FC0				; This is the location of the Output Register of Port B		
		lda #%01001110	        ; ASCII Value is N 
		sta $7FC0				; This is the location of the Output Register of Port B
		lda #%01001111	        ; ASCII Value is O
		sta $7FC0				; This is the location of the Output Register of Port B		
		lda #%01010000	        ; ASCII Value is P
		sta $7FC0				; This is the location of the Output Register of Port B
		lda #%01010001	        ; ASCII Value is Q
		sta $7FC0				; This is the location of the Output Register of Port B		
		lda #%01010010	        ; ASCII Value is R
		sta $7FC0				; This is the location of the Output Register of Port B
		lda #%01010011	        ; ASCII Value is S
		sta $7FC0				; This is the location of the Output Register of Port B		
		lda #%01010100	        ; ASCII Value is T
		sta $7FC0				; This is the location of the Output Register of Port B
		lda #%01010101	        ; ASCII Value is U
		sta $7FC0				; This is the location of the Output Register of Port B		
		lda #%01010110	        ; ASCII Value is V 
		sta $7FC0				; This is the location of the Output Register of Port B
		lda #%01010111          ; ASCII Value is W
		sta $7FC0				; This is the location of the Output Register of Port B		
		lda #%01011000	        ; ASCII Value is X 
		sta $7FC0				; This is the location of the Output Register of Port B
		lda #%01011001	        ; ASCII Value is Y 
		sta $7FC0				; This is the location of the Output Register of Port B		
		lda #%01011010	        ; ASCII Value is Z 
		sta $7FC0				; This is the location of the Output Register of Port B	
		jmp $1900				; JuMP to beginning of program

; End of Lesson		

;-----------------------------------------------------------------------------------------------------------------		


;***************************************************************************
;***************************************************************************
; New for WDCMON V1.04
;  Needed to move Shadow Vectors into proper area
;***************************************************************************
;***************************************************************************
SH_vectors:	section
Shadow_VECTORS	SECTION OFFSET $7EFC
					;65C02 Interrupt Vectors
					; Common 8 bit Vectors for all CPUs

;		dw	badVec		; $FFFA -  NMIRQ (ALL)
		dw	$1900		; $FFFC -  RESET (ALL)
;		dw	IRQHandler	; $FFFE -  IRQBRK (ALL)

	        ends


;***************************************************************************

vectors	SECTION OFFSET $FFFC
					;65C02 Interrupt Vectors
					; Common 8 bit Vectors for all CPUs

;		dw	badVec		; $FFFA -  NMIRQ (ALL)
		dw	$1900		; $FFFC -  RESET (ALL)
;		dw	IRQHandler	; $FFFE -  IRQBRK (ALL)
	
	        ends

	        end
