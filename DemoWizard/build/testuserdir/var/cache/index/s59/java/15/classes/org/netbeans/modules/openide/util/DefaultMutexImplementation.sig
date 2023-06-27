����   4]	      <org/netbeans/modules/openide/util/DefaultMutexImplementation LOG Ljava/util/logging/Logger;	   	 
 LOCK Ljava/lang/Object;
     enter (ILjava/lang/Thread;J)Z
     <init> ()V
     (Ljava/lang/Object;)V
     L(Lorg/netbeans/modules/openide/util/DefaultMutexImplementation$Privileged;)V
     k(Lorg/netbeans/modules/openide/util/DefaultMutexImplementation$Privileged;Ljava/util/concurrent/Executor;)V
    java/lang/Object	    ! " grantedMode I $ java/util/HashMap
 # &  ' (I)V	  ) * + registeredThreads Ljava/util/Map;	  - . " 	readersNo
  0 1 2 init &(Ljava/lang/Object;)Ljava/lang/Object;	  4 5 6 wrapper Ljava/util/concurrent/Executor; 8 Iorg/netbeans/modules/openide/util/DefaultMutexImplementation$InternalLock
 7  ; "java/lang/IllegalArgumentException = privileged == null
 : ?  @ (Ljava/lang/String;)V
 B C D E F Gorg/netbeans/modules/openide/util/DefaultMutexImplementation$Privileged 	setParent A(Lorg/netbeans/modules/openide/util/DefaultMutexImplementation;)V H java/util/LinkedList
 G 	  K L M waiters Ljava/util/List;	  O P " counter	  R S " cnt	 U V W X Y java/util/logging/Level FINER Ljava/util/logging/Level;
 [ \ ] ^ _ java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z a java/lang/StringBuilder
 `  d [
 ` f g h append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ` j g k (I)Ljava/lang/StringBuilder; m ] created here
 ` o p q toString ()Ljava/lang/String; s java/lang/Exception
 r 
 [ v w x log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  z { | doWrapperAccess Q(Lorg/openide/util/Mutex$ExceptionAction;Ljava/lang/Runnable;Z)Ljava/lang/Object; ~ org/openide/util/MutexException � java/lang/IllegalStateException
  �  � (Ljava/lang/Throwable;)V
 � � � � � java/lang/Thread currentThread ()Ljava/lang/Thread;
  � � � 	readEnter (Ljava/lang/Thread;J)Z � � � �  java/lang/Runnable run
  � � � leave (Ljava/lang/Thread;)V � � � � � &org/openide/util/Mutex$ExceptionAction ()Ljava/lang/Object; � java/lang/RuntimeException
 } �  � (Ljava/lang/Exception;)V
  � � � 
writeEnter
  � � � isReadAccess ()Z
  � � � getThreadInfo ](Ljava/lang/Thread;)Lorg/netbeans/modules/openide/util/DefaultMutexImplementation$ThreadInfo;	 � � � � � Gorg/netbeans/modules/openide/util/DefaultMutexImplementation$ThreadInfo counts [I
  � � � isWriteAccess
  � � � postRequest 7(ILjava/lang/Runnable;Ljava/util/concurrent/Executor;)V � line.separator
 � � � � � java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;
 ` & � DefaultMutexImplementation � 	threads: 
  � � � getRegisteredThreads ()Ljava/util/Map;
 ` � g � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � readersNo:  � 	waiters:  � grantedMode: 
  � � � getGrantedMode (Z)I
  � � � hashCode ()I
 � � � � � java/lang/Integer toHexString (I)Ljava/lang/String; � [# � @ � ] 
 [ � w � A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V � Entering {0}, {1}
 � � � � valueOf (I)Ljava/lang/Integer;
 � � � � � java/lang/Long (J)Ljava/lang/Long;
  � � � doLog ((Ljava/lang/String;[Ljava/lang/Object;)V
  � �  	enterImpl � Entering exit: {0}
 �  � java/lang/Boolean (Z)Ljava/lang/Boolean;
  	 � " mode	 �	
 forced Z pWARNING: Going from readAccess to writeAccess, see #10778: http://www.netbeans.org/issues/show_bug.cgi?id=10778 
  ?	 
 beStrict
 � org/openide/util/Exceptions printStackTrace
  
canUpgrade (II)Z	 � " 	rsnapshot
  ' setGrantedMode! ~WARNING: Going from readAccess to writeAccess through queue, see #10778: http://www.netbeans.org/issues/show_bug.cgi?id=10778 
 #$% isCompatible (I)Z
 �' ( (Ljava/lang/Thread;I)V*+,-. java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;��������
 234 chain ^(ILjava/lang/Thread;I)Lorg/netbeans/modules/openide/util/DefaultMutexImplementation$QueueCell;
6789: Forg/netbeans/modules/openide/util/DefaultMutexImplementation$QueueCell sleep (J)V< Re-Entering {0}
 >?@ reenterImpl (Ljava/lang/Thread;I)ZB Re-Entering exit: {0}
  o���FGHIJ java/util/List get (I)Ljava/lang/Object;FLMJ remove
 OP  wakeUpOthers
6R9 T Leaving {0}
 VW � 	leaveImplY Leaving exit: {0}
 [\] leaveX L(Lorg/netbeans/modules/openide/util/DefaultMutexImplementation$ThreadInfo;)I
 _`] leaveS
 �bcd getRunnableCount (I)I
 fg@ reenteri Processing posted requests: {0}
 kl( privilegedEnter
 �nop dequeue (I)Ljava/util/List;Frs � sizeu java/lang/StackOverflowError
tw y java/lang/ThreadDeath{ java/lang/Error	 �}~ t Ljava/lang/Thread;*�M 2
 ��  wakeUpReaders
6�� � isGotOut	6}	6
6��  wakeMeUp
6� � (ILjava/lang/Thread;)V	6�� " 	priority2F��� add (Ljava/lang/Object;)Z
6��� getPriority ()J    ���F��� (ILjava/lang/Object;)VF�� � isEmpty	 ��
 $assertionsDisabled� java/lang/AssertionError
� 
 ���� enqueue (ILjava/lang/Runnable;)V� Borg/netbeans/modules/openide/util/DefaultMutexImplementation$1Exec
�� � h(Lorg/netbeans/modules/openide/util/DefaultMutexImplementation;ILjava/lang/Thread;Ljava/lang/Runnable;)V����� java/util/concurrent/Executor execute (Ljava/lang/Runnable;)V
 �� � getOrigMode	 ��� cmatrix [[Z*�I 2� ?org/netbeans/modules/openide/util/DefaultMutexImplementation$1R
�� � ~(Lorg/netbeans/modules/openide/util/DefaultMutexImplementation;ZLorg/openide/util/Mutex$ExceptionAction;Ljava/lang/Runnable;)V
� �	���� e !Lorg/openide/util/MutexException;	��� 
 ret
 ���� 	holdsLock	 �� " origMode
���� � java/lang/Class desiredAssertionStatus
��� q getName
 [��� 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;� [Z� (org/openide/util/spi/MutexImplementation NONE ConstantValue     CHAIN    X    S    
MODE_COUNT    	Signature lLjava/util/Map<Ljava/lang/Thread;Lorg/netbeans/modules/openide/util/DefaultMutexImplementation$ThreadInfo;>; ZLjava/util/List<Lorg/netbeans/modules/openide/util/DefaultMutexImplementation$QueueCell;>; create @()Lorg/netbeans/modules/openide/util/DefaultMutexImplementation; Code LineNumberTable 	usingLock R(Ljava/lang/Object;)Lorg/netbeans/modules/openide/util/DefaultMutexImplementation; LocalVariableTable lock MethodParameters controlledBy �(Lorg/netbeans/modules/openide/util/DefaultMutexImplementation$Privileged;)Lorg/netbeans/modules/openide/util/DefaultMutexImplementation; p ILorg/netbeans/modules/openide/util/DefaultMutexImplementation$Privileged; �(Lorg/netbeans/modules/openide/util/DefaultMutexImplementation$Privileged;Ljava/util/concurrent/Executor;)Lorg/netbeans/modules/openide/util/DefaultMutexImplementation; this >Lorg/netbeans/modules/openide/util/DefaultMutexImplementation; 
privileged StackMapTable executor 
readAccess ex runnable Ljava/lang/Runnable;
 java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <(Lorg/openide/util/Mutex$ExceptionAction;)Ljava/lang/Object; Ljava/lang/RuntimeException; Ljava/lang/Exception; action (Lorg/openide/util/Mutex$ExceptionAction; LocalVariableTypeTable -Lorg/openide/util/Mutex$ExceptionAction<TT;>; 
Exceptions H<T:Ljava/lang/Object;>(Lorg/openide/util/Mutex$ExceptionAction<TT;>;)TT; writeAccess m info ILorg/netbeans/modules/openide/util/DefaultMutexImplementation$ThreadInfo; postReadRequest postWriteRequest newline Ljava/lang/String; sbuff Ljava/lang/StringBuilder;! java/lang/String timeout J params [Ljava/lang/Object; tid 	requested !Ljava/lang/IllegalStateException; cell HLorg/netbeans/modules/openide/util/DefaultMutexImplementation$QueueCell; loopc tinfo chainFromLeaveX decrease runsize r Ljava/lang/StackOverflowError; td Ljava/lang/ThreadDeath; Ljava/lang/Error; i 	runnables 
postedMode needLock &Ljava/util/List<Ljava/lang/Runnable;>; qc cursor priority ti 	mutexMode exec threadGranted readOnly ALorg/netbeans/modules/openide/util/DefaultMutexImplementation$1R; ]<T:Ljava/lang/Object;>(Lorg/openide/util/Mutex$ExceptionAction<TT;>;Ljava/lang/Runnable;Z)TT; 	skipCheck n()Ljava/util/Map<Ljava/lang/Thread;Lorg/netbeans/modules/openide/util/DefaultMutexImplementation$ThreadInfo;>; 
access$000 U(Lorg/netbeans/modules/openide/util/DefaultMutexImplementation;ILjava/lang/Thread;J)Z x0 x1 x2 x3 
access$100 R(Lorg/netbeans/modules/openide/util/DefaultMutexImplementation;)Ljava/lang/Object; 
access$200 ()Ljava/util/logging/Logger; <clinit> 
SourceFile DefaultMutexImplementation.java InnerClasses 
Privileged InternalLockW org/openide/util/Mutex ExceptionAction 
ThreadInfo 	QueueCell Exec R !   �   P "        	
   � " �   � � " �   � � " �   � � " �   � � " �   � ��    ! "   � "    	 
    5 6    * + �   �  . "    L M �   �  S "  �
   . 	�� �          � Y� �   �       j 	�� �   3     	� Y*� �   �       n�       	� 
  �   �   	�� �   3     	� Y*� �   �       r�       	��  �   �   	�� �   >     
� Y*+� �   �       v�       
��     
� 6 �   	�  �      �   v     **� *� *� #Y� %� (*� ,**+� /� *� 3�   �       z  L 	 \  a  { $ | ) }�       *      *� 
 �   �      �   r     0*� *� *� #Y� %� (*� ,**� 7Y� 9� /� *� 3�   �         L 	 \  a  � * � / ��       0       �   �     C*� *� *� #Y� %� (*� ,+� � :Y<� >�**� 7Y� 9� /� +*� A*� 3�   �   * 
   �  L 	 \  a  �  � ) � 8 � = � B ��       C      C�     � )   B  �         �   �     -*� *� *� #Y� %� (*� ,*� Y+� � *,� 3�   �       �  L 	 \  a  � ' � , ��        -      -�    - 6 �   	      1 2 �   �     Q*� GY� I� J*� NY`� N� Q� � T� Z� .� � T� `Y� bc� e*� Q� il� e� n� rY� t� u+�   �       �  �  � $ � O ��       Q      Q� 
     � O�   �   � �   �     <*� 3� *+� yW�M� Y,� ��� �M*,	� �W+� � *,� �� N*,� �-��     } % + 3   �   6    �  �  �  �  �  �  � % � + � 0 � 3 � 9 � ; ��   *   	�    <      <   ~     P }	�    � � 	�             �       ?*� 3� *+� y�� �M*,	� �W+� � N*,� �-�N-�N� }Y-� ��:*,� ��   ! ( �  ! + r  ! 5   ( 7 5   �   6    �  �  �  �  � ! � & � ( � ) � + � , � 5 � < ��   4  ) �  , 	�    ?      ?   ,~        ?     �    � �  �B rI	     }�    �          � �   �     ?*� 3� *+� yW� M� Y,� ���� �M*,	� �W+� � *,� �� N*,� �-��     } ( . 6   �   :    �  �  �  �  �  �  � ! � ( � . � 3 � 6 � < � > ��   *   	�    ?      ?  ! ~     R }	 �    � � 	�             �       ?*� 3� *+� y�� �M*,	� �W+� � N*,� �-�N-�N� }Y-� ��:*,� ��   ! ( �  ! + r  ! 5   ( 7 5   �   6    �  �  �  �  � ! � & � ( � ) � + � , � 5 � < ��   4  ) �  , 	�    ?      ?   ,~        ?     �    � �  �B rI	     }�     �           � � �       D*� 3� *� � L+� ��� �L*� YN�*+� �M,� ,� �.� -ì-ç 
:-���   5 ;   6 8 ;   ; ? ;   �   .    �  �  �  �  �  � % � ) � 2 � 6 B�   4     %     D     ,~  B     3 � ! � � �    �   	�    � �          � � �       D*� 3� *� � L+� ��� �L*� YN�*+� �M,� ,� �.� -ì-ç 
:-���   5 ;   6 8 ;   ; ? ;   �   .    	 
    % ) 2 6 B�   4     %     D     ,~  B     3 � ! � � �    �   	�    � �         � �   @     *+� ��   �   
     �              � �    �        � �   @     *+� ��   �   
   $ %�              � �    �          p q �       }�� �L� `Y � �M,¶ e+� eW*� YN�,Ķ e*� ƶ �+� eW,Ͷ e*� ,� i+� eW,϶ e*� J� �+� eW,Ѷ e*� Ӷ i+� eW-ç 
:-��,� n�  # n q   q u q   �   * 
  * + , - #. 5/ G0 Y1 l2 x4�        }     w   l     � q    `  	�         � � �   F     *+ � �   �      =�              ~    "# �   	~  "    � � �   F     *+ � �   �      D�              ~    "# �   	~  "   � � � �   �     =� �� ׸ �N� � T� `Y� b� e*� Q� i� e-� e� e+� e� n,� �   �      H 
I <J�   *    =      =    =$%  
 3& �   	  $      �   �     K� � T� Z6� *�� Y� �SY!� �S� �*,!� �6� *�� Y� �S� ��   �      Q S (U 1W HY�   >    K      K' "    K~    K"#   @ w
  1 �
    
 � (� �   '  ~  "    �  �  �    �:6�*� Y:�*,� �:�=*� Ӛ � Y���� *� �� �� *� �� � Y���� �� g�� �� Q� '� �.� � Y�:	�� 	�	�� �\.`O� � �.� *Y� ,`� ,ì*��� a� Y�:	�� 	�	��� �\.`O� �.�*� �� *�� *� �� � Y��ì� Y �:	�� 	�	�� ;*�"� 3*�*� �,� �Y,�&Y:�) W� *Y� ,`� ,ì!/�� ì*�*,�1:ç :
�
�!�5!	���E/B��>   ��   �9�  :��  ���  ���  ���   �   � 7  ] ^ a 	b d f g %i -n Jo Qq Ys kt su |w �x �z �{ �} � �� �� �� �� �� �� �� �� �� �����$�-�5�:�F�L�O�T�W�_�d�{����������������������   f 
 � �( 	 � R�( 	F �( 	 �   �     �' "   �~   �"#  �)*  �+ "    U � 6� &  �� # � $� ! 2� �  � 2�    �6  	� �   '  ~  "   g@ �   �     B� � T� Z>� *;� Y� �S� �*+�=6� *A� Y� �S� ��   �      � 
�  � (� ?��   4    B      B~    B "  
 8 w
  ( �
    
 �  � �   	~     ?@ �  _     �� **� ә *� �� � Y*�C��*+	� W�*+� �N*� �� -� -� �.� � 6*� �� *� ә � *+	� W�*� ,� � Y*�C��� �Y+�&:*� �+�) W*Y� ,`� ,*��   �   F   � � � "� *� ,� 2� O� e� m� o� v� �� �� �� �� ���   >  �     �      �~    � "  2 y,  O \-
     "	�  �@� 	�   	~     l( �  �     �>*� Y:�*+� �Wç :��*� Y:�� >*Y� ,d� ,*�*+D�1:*� ,� /*� J�E � *� J�K W*�ñ*�*�Nç :���Q���  
          & o    p |     �    �   R   � � 
� � � &� *� ,  6 ; F	 M \ g l p u y � ��   >  F 9)*  � )*    �      �~    � "   �.
    _ �    �  	� �   � 9   �6   �    �   	�    �6  �   	~      � � �   �     D� � T� Z=� *S� Y*� Ӹ �S� �*+�U� *X� Y*� Ӹ �S� ��   �      " 
$ $& )( C)�        D      D~  
 : w
     � $�   ~   W � �  |  
  =>6*� Y:�*+� �M*� Ӫ      c              (   T   ]� Y��,� �.� *,�Z>� ,,� �.� *,�^>� � Y��*,�Z>� 	*,�^>� ,�a6� *+�e6ç :��� �,�a� �*h� Y� �S� �� 	*+�j,�m:�q 66� F�E � �:� � � (:�� :�v�� :�:�����:*+� �� :	*+� �	��   � �   � � �   � � � r � �t � �x � �z �*2  242   �   � /  - . 0 1 3 85 @9 I; R< [= d? lE rG uJ {P Q �S �T �W �Z �[ �] �^ �b �c �e �g �i �x �k �lxnpqxstvw!e'}*/�29�<��   �  � / "   �  � 0  � �  
�1  23  �4  � J5 "  � Y6 M  � Ps "   =     =~  � �  ;7 "  88
      � Y69    y � 8   � �   �    �   	�    � �  (� F^ rItNxDz� � 
   � � 		�   ~   \] �  c     �+� �.� +�+� �.� � Y��+�+� �.� ^+� �\.dO+� �.� �+�+� �.� +�*�� +�*�*� �+�|�� W+�a� 	*���*�N� =+� �.� � Y��+� �\.d[O� *� ,� � Y��*Y� ,d� ,��   �   b   � � � +� 5� >� C� L� Q� Y� ^� c� q� y� }� � �� �� �� �� �� �� �� ���       �      �     	:�      `] �  m    3+� �.� +� �.� � Y��+� �\.dO+� �.�+�*� �+�|�� W*� ,� � Y��*Y� ,d� ,*� ,� *�+�a� �*�N� �+�a� �*� �� �*� ,� �=*� J�q � �*� J�E �6N-Y:�-��� *� J���K Wç `*-��� �:� C�� :-��� � Y��*� J�q � *��*� J�K W-��ç :�����e�  � �#   � #  #(#   �   � %  � � � $� -� 2� @� G� O� Y� `� e� m� o� v� ~� �� �� �� �� �� �� �� �� �� �� �� �� �������#�+�1�   4  � K,  � }:*  � �5 "   3     3    : 4	� � :6 � ' ��    �6  	� � �      34 �  |     ��6Y,��:��*� J�q 6� *� J�� W� l����� *� J�� � Q6*� J�E �6:������ *� J�� � ����� *� J�� W�   �   F       ! 0  <! K$ N' ^) l* y, |/ 0 �2 �3 �7�   R  ^ ;;*  N K5 "    �      �' "    �~    �< "   �:*   �s "    * � 06�  � -   �66  	� �   ' ~ <  P  �  �     �*� �� *� �� � Y��*� J�� � �<*� J�q � �*� J�E �6M,YN�,��� *� J���K W-ç �*,���"� d*� J���K W,��*,���*,��� �� I� �Y,��,���&:�,��� *Y� ,`� ,*� �,���) W� *�-ç -ç 
:-�����B�  H _ �   b � �   � � �   � � �   �   j   < > A &B 'E 6F DH HI OK ]M bP mQ {R S �U �X �Y �[ �\ �_ �` �b �d �f �E �i�   *  � (=  D �:*  ) �5 "    �      & � � 86 � X �� 	D	� �  �  �  �     ղ�� *� ә *� �� ��Y���*� J�� � �<*� J�q � �*� J�E �6M,YN�,��� *� J���K W-ç j,��� V*� J���K W,��*�*,��� �� 4� �Y,��,���&:�*Y� ,`� ,*� �,���) W-ç 
:-�����]�  M d �   g � �   � � �   �   V   l n +o ,r ;s Iu Mv Tx bz g} o~ } �� �� �� �� �� �� �� �r ���   *  �  =  I �:*  . �5 "    �       � � 86 � ZD	� �    � � �  ;  
   �*� 3� *� � :,*� 3� ��� �:*� Y:�*� �:� /�� � �d.� *	� W� ,��ñç :��� >-� -��Y*,���� �*	� W,� � *� �� :*� ���,� � *� �� :	*� �	��  ) a h   b e h   h m h   � � �   � � �   � � �   � � �   �   z   � � � � � !� )� 1� 6� K� W� ^� b� p� u� y� �� �� �� �� �� �� �� �� �� �� �� �� �� ���   R     1 7    �      �> "    � �    �? 6  ! �~  p [    N � : � � 
�    �� �   	�    �� � �  W	
 N	
�   >  � ?   $% �   e     $� *� �� *��� ���2*� �3�   �   
   � ��       $      $' "     �   '    � � �   B     *� �+�� � ��   �      ��             ~ �   ~    �   a     � � *� ,� � �   �      ��              @ "    ' "     @�   	@  '    { | �   �     M��Y*+,��:*� � :� �� � �� �Ƨ *� 3�� ��� 	�ǿ�˰   �   "      &	 . 9 A G�   >    M      M    M    MA
   @ �B   7        M     � &� 
     }�     A �   C  ' �   �     3��� *� �Κ ��Y���*� � � **� ��*� �   �      � � %� -� 2��       3      3 "     �       � � �   b     !��� � *� �Κ ��Y���*� �   �   
   � ��       !      !D
     �   D   � � �   T     ��� *� �Κ ��Y���*�Ѭ   �   
   �  �                � � �   T     ��� *� �Κ ��Y���*� (�   �   
    �              �   EFG �   P     *,!� �   �       #�   *    H     I "    J    K# LM �   /     *� �   �       #�       H  NO �         � �   �       # P  �   �      W�Ԛ � ���ٸܳ ��YSYSY�YTYTYTYTSY�YTYTYTYTS���   �       #  )  D    @ Q   RS   :  B T 	 7 U  �VX	 � Y 6 Z �  [  �  \  