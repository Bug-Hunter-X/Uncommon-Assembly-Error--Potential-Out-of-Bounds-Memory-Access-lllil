mov ecx, some_safe_ecx_value ; ensure ecx is always within a safe range. 
mov eax, [ebx+ecx*4] ; Access memory only after validation

mov edi, some_safe_edi_value; ensure edi is within a safe range.
mov edx, [esi+edi*8] ; Access memory only after validation

;Example validation code. Implement appropriate checks for your specific use case
;...Bounds checking code...
;if (ecx * 4 > maximum_safe_offset) {
;  ; Handle error condition
;}
;...Bounds checking code... 