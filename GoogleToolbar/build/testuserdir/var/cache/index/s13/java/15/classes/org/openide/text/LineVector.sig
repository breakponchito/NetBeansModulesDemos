����   4_
      java/lang/Object <init> ()V  java/util/ArrayList
  
   (I)V	      org/openide/text/LineVector pendingLineUpdaters Ljava/util/List;  org/openide/text/LineVector$Ref	     refArray "[Lorg/openide/text/LineVector$Ref;	     	gapLength I
     lockCheckUpdate
    ! " refCount ()I	  $ % & refArrayUnsorted Z ( java/lang/Integer���
  + , - rawIndex (I)I
  / 0 1 get ()Ljava/lang/Object; 3 org/openide/text/Line
 2 5 6 " getLineNumber	  8 9 : LOG Ljava/util/logging/Logger;	 < = > ? @ java/util/logging/Level FINE Ljava/util/logging/Level;
 B C D E F java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z H java/lang/StringBuilder
 G  K *!!!LineVector: ARRAY BECAME UNSORTED!!!
  
 G M N O append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  Q R S toStringDetail ()Ljava/lang/String; U     lineIndex=
 G W N X (I)Ljava/lang/StringBuilder; Z , lowLineIndex= \ , highLineIndex= ^ 	
    low= ` , high= b , mid= d 

 G f g S toString	 < i j @ INFO l java/lang/Throwable
 k 
 B o p q log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  s t  unlockCheckUpdate	  v w  gapStart y z { | } 'org/openide/text/LineVector$LineCreator 
createLine (I)Lorg/openide/text/Line;
   � � addLine 1(ILorg/openide/text/Line;)Lorg/openide/text/Line; � � � � � java/util/List add (Ljava/lang/Object;)Z	  � � � 
lockThread Ljava/lang/Thread; � � � " size
  �  � (Ljava/util/Collection;)V � � �  clear � � � � iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � 1 next � 'org/openide/text/LineVector$LineUpdater � � � � 
updateLine (Lorg/openide/text/Line;)V
  
  � �  moveGap
  � �  
reallocate
  �  � 7(Lorg/openide/text/LineVector;Lorg/openide/text/Line;)V
 � � � � � java/lang/System 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V	  � �  disposedRefCount
  � �  removeEmptyRefs � 5LineVector.removeDisposedRefsLockAcquired() refCount= � , emptyCount=
 B � � � fine (Ljava/lang/String;)V � -LineVector.reallocate() from refArray.length= �  to newLength=
  � �  lock
  � �  checkRemoveEmptyRefs
 � � � � � java/lang/Thread currentThread ()Ljava/lang/Thread;
  � �  wait � java/lang/InterruptedException � java/lang/Error � "Interrupted attempt to aquire lock
 � �  � � java/lang/IllegalStateException � 6Recursive line vector locking prohibited. LineVector: 
 G � N � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � �	  � �  	lockDepth
  � �  updateLinesCheck
  � �  unlock
  � �  	notifyAll � refArray.length= � , gapStart= � , gapLength= � , disposedRefCount= � , activeRefCount=  
  refArrayUnsorted=
 G N (Z)Ljava/lang/StringBuilder; , lockThread= , lockDepth=	 , pendingLineUpdaters=
 G 

  f
 G N (C)Ljava/lang/StringBuilder; [ ]:	
 S java/lang/Class getName
 B 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; 	Signature ;Ljava/util/List<Lorg/openide/text/LineVector$LineUpdater;>; Code LineNumberTable LocalVariableTable this Lorg/openide/text/LineVector; findOrCreateLine C(ILorg/openide/text/LineVector$LineCreator;)Lorg/openide/text/Line; index msg Ljava/lang/String; mid ref !Lorg/openide/text/LineVector$Ref; line Lorg/openide/text/Line; 	lineIndex lowLineIndex highLineIndex last low high findLineIndex lineCreator )Lorg/openide/text/LineVector$LineCreator; StackMapTable MethodParameters updateLines ,(Lorg/openide/text/LineVector$LineUpdater;)V lineUpdater )Lorg/openide/text/LineVector$LineUpdater; lineUpdaters LocalVariableTypeTable getLinesInRange (II)Ljava/util/List; lines startLineIndex endLineIndex )Ljava/util/List<Lorg/openide/text/Line;>; -(II)Ljava/util/List<Lorg/openide/text/Line;>; moveSize refGC cnt 
validIndex 
emptyCount gapEnd topValidIndex newGapLength aboveGapLength 	newLength newRefArray  e  Ljava/lang/InterruptedException; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; i sb Ljava/lang/StringBuilder; <clinit> 
SourceFile LineVector.java InnerClasses Ref LineCreator LineUpdater 0     	  9 :         w          �     % &    � �    �                   \     "*� *� Y� 	� *� � **� �� �          M  K  N  O ! P        "!"    #$   �    �*� *� d>66*� #�76)6�)`|6*� *� *2:		� .� 2:

� 3d6� (*� *� *2:		� .� 2:

� � 	�����
� 
� 4� 6� 
� �� 7� ;� A� n� GY� IJ� L*� P� LT� L� VY� L� V[� L� V]� L� V_� L� Va� L� Vc� L� e:� 7� h� kY� m� n*� #� 7� `66� !� d66� 
:*� r����*� #� E� 9*� *� *2:� .� 2:� � 4� :*� r�����*� u6,� *,� x � ~� :*� r�:*� r�  B�  I��  ���  ���      � 6   S  U  V  W  X  Y  Z  [ & \ / ] < ^ F _ K ` Q a V b c c m d r e u g { j � k � l � m � n � q s t v w$ x+ y1 z7 {> }B �F }I L �S �Y �f �p �~ �� �� �� �� �� �� �� �� �� �� �� �    �  Q *%   � &'  /(   <)* 	 F+, 
 � �-   1.   -/  f #)* p +,  �0   �1   �2    �!"    �3    �45 6   q �    y  � 1   y  2  #� @� � v� 
   y  � 5@ 2�    y  k7   	3  4    89    �     )*YM�*� +� � W*� �� *� *� r,ç N,�-��     #   # & #          �  �  �  �  �  � ( �        )!"     ):; 6    �  D k� 7   :    �    �     �*YM�*� � � � � Y*� � �L*� � � � L,ç N,�-�+� {+� � M,� � � k,� � � �N6*� u�  *� 2� .� 2:-� � ����*� u*� `6*� ��  *� 2� .� 2:-� � ���ܧ���   , /   / 2 /      J    �  �  �  � ( � * � 4 � 8 � R � ^ � m � u � { � � � � � � � � � � �    \ 	  <   * <   m +,  U & ,   � +,  � ' ,   R [:;    �!"   4 }<  =       <  * <  4 }< 6   Q 
� (  �    �   �       k�    �  � 
 ��  �� %� 
� &�   >?   �    '*� � Y� �N*� d666*� #��6)6�W`|6	*� *	� *2:

� .� 2:� 3	d6� (*� *� *2:

� .� 2:� � 	������ � 4� 6� 
� �*� #� 7� ;� A� ӻ GY� IJ� L*� P� LT� L� VY� L� V[� L� V]� L� V_� L� Va� L	� Vc� L� e:� 7� h� kY� m� n� e� 	`66� O� 	d66� <�	�	� +*� *	� *2:

� .� 2:���� 4��֧ 	`6� ���*� #� D� =*� *� *2� .� 2:		� 	� 46

� 
� -	� � W����*� #� D� =*� *� *2� .� 2:� � 46� � -� � W����-:*� r�:*� r�           � ?   �  �  �  �  �  � " � % � ) � 0 � 9 � F � P � U � [ � ` � m � w � | �  � � � � � � � � � � � � � � �" �( �. �5 �; �A �H �P �] �g �u �x �~ �� �� �� �� �� �� �� �� �� �� �����$    �  [ *%   &'  9H(  	 F;)* 
 P1+,  � �-  � -  
� !+, 	 %�.   )�/  � -  � !+,  @   
0   1   2    '!"    'A    'B  =     @C 6   o � ) 	  �  � 1   �  2  #� @� � ~/�  	  �  :� :� 	    k7   	A  B     D  � �    �     ?*� �*� � **� �`z� �*� *Y� uZ`� u� Y*,� �S*Y� d� ,�             3 =         ?!"     ?%     ?+, 6    7   	%  +    ! "    5     *� �*� d�                 !"    , -    ^     *� u� � 	*� `�           ! "          !"     %  6    E7   %    �     �     P*� u� %*� ud=*� *� *� u*� `d� �� #*� ud=*� *� u*� `*� *� u� �*� u�      "   ( ) * '+ *, 1- J/ O0    *   E   1 E     P!"     P%  6    *7   %    F     9     *Y� �`� ��      
   3 
4        !"    �     �     '*YM�*� �<,ç N,�-�� *� |� *� ��                  8 9 	: ; "< &>       	 G     '!"    G  6    �       k�       �    U  	   �<=>*� u*� `6*� u� /*� 2:� .� � *� S�� �����*� u*� �<6��� .*� 2:� .� ��� *� S� ����*� ud6*� � *� �S��� 7� ;� A� -� 7� GY� I�� L*� � V�� L� Vc� L� e� �*Y:�*Y� �d� �ç :���  � � �   � � �      � !  A B C D F G !H )I .J 6L <N ?P BQ ER JU PV SW \X dY lZ u[ �^ �` �a �b �d �e �g �h �j �k �l �m    \ 	 ! !)*  d  )*    �!"    � ,    �H    �I    �J   S �K   � mL  6   H �     � $ � � � - � � 5�      k�   �    "     �*� u*� `=*� �d>*� u``6� :*� *� u� �*� d� �� 7� ;� A� /� 7� GY� Iƶ L*� �� Vȶ L� Vc� L� e� �*� *� �      .   p 
q r s #t 2u Av Mw yz ~{ �|    >    �!"     �L   
 {J    sM    iN   # bO  6    � y  P  7   L         ;     	*� �*� ͱ          � �        	!"   " �     �     W� �L*� �� +*� �� *� ֧��M� �Yݷ ߿*� �� � �Y� GY� I� L*� � e� �*+� �*Y� �`� �     �    .   � � � � � � %� ,� G� L� V�        
QR    W!"    S � � 6    �  �U �
!  t     ;     	*� �*� �         � � �        	!"   " �     ^     *Y� �d� �*� � *� �*� �         � 
� � � �        !"  6      g S    �     �� GY� I�� L*� �� V�� L*� u� V�� L*� � V�� L*� �� V�� L*� *� �d� V�� L*� #�� L*� �� �� L*� � V� L*� � � e�         � >� �        �!"  S    T    R S        r� GY �
L*� �+*�� L
�W=*� � 9*� *� *2N-� .� 2:+� L� V� L� �
�W����*� � :*� ��+� e�   ] d   d f d      6   � � � � '� 2� ;� W� ]� a� d� j� m�    4  2 %)*  ; +,   >U     r!"    gVW 6    �  G� =F k X     $      ��� 7�          ) Y   Z[      \  y ] � ^