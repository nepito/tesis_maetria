	PROGRAM    listado
! Objetivo: Crear los archivos de entrada de las gráficas que serán
!          presentadas en el congreso.
	IMPLICIT NONE
	CHARACTER(len=20)  :: nomArc, arcSal
	CHARACTER(len=2)   :: nomLan(15)
	INTEGER            :: ic,jc
	REAL               :: dist(15,4)
!=====================================================================
      READ(*,*) nomArc
      READ(*,*) arcSal
      OPEN(UNIT=101,FILE=nomArc,STATUS='OLD',ACTION='READ')
      OPEN(UNIT=201,FILE=arcSal,STATUS='REPLACE',ACTION='WRITE')
      DO ic=1,15
         READ(*,*) nomLan(ic)
         READ(101,'(15X,F7.5)') dist(ic,1)
         READ(101,'(15X,F7.5)') dist(ic,2)
         READ(101,'(15X,F7.5)') dist(ic,3)
         READ(101,'(15X,F7.5)') dist(ic,4)
         WRITE(201,'(A1,A2,A1,4(3X,F7.5))') '"',nomLan(ic),'"',& 
               dist(ic,:)
      ENDDO


	ENDPROGRAM listado
