����   4�	      +org/openide/util/RequestProcessor$Processor 	procesing #Lorg/openide/util/RequestProcessor;
  	 
   !org/openide/util/RequestProcessor 
access$800 9()Lorg/openide/util/RequestProcessor$TopLevelThreadGroup;
      5org/openide/util/RequestProcessor$TopLevelThreadGroup getTopLevelThreadGroup ()Ljava/lang/ThreadGroup;   Inactive RequestProcessor thread
      java/lang/Thread <init> ,(Ljava/lang/ThreadGroup;Ljava/lang/String;)V	     idle Z   java/lang/Object
  "  # ()V	  % & ' lock Ljava/lang/Object;
  ) * + 	setDaemon (Z)V	  - .  $assertionsDisabled	  0 1 2 pool Ljava/util/Stack;
  4 5 6 	holdsLock (Ljava/lang/Object;)Z 8 java/lang/AssertionError
 7 "
 ; < = > ? java/util/Stack isEmpty ()Z
  A B # start
  D E F checkAccess (Ljava/lang/ThreadGroup;)Z
 ; H I J pop ()Ljava/lang/Object;
  "
 M N O E # java/lang/ThreadGroup Q java/lang/StringBuilder
 P " T &Inactive RequestProcessor thread [Was:
 P V W X append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  Z [ \ getName ()Ljava/lang/String; ^ / ` ]
 P b c \ toString
  e f g setName (Ljava/lang/String;)V
 ; i j k push &(Ljava/lang/Object;)Ljava/lang/Object;
  m n o getPriority ()I
  q r s setPriority (I)V	  u v  source
  x y # notify	  { | } INACTIVE_TIMEOUT I
   � � wait (J)V � java/lang/InterruptedException
 ; � � 6 remove
  � � � logger ()Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level;
 � � � � � java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z � Begining work {0}
 � � � � log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V � org/openide/util/Lookup
  � � � 
access$400 7(Lorg/openide/util/RequestProcessor;)Ljava/lang/Object;
  � � � 
askForWork �(Lorg/openide/util/RequestProcessor$Processor;Ljava/lang/String;[Lorg/openide/util/Lookup;)Lorg/openide/util/RequestProcessor$Task;	  � � � todo (Lorg/openide/util/RequestProcessor$Task;
 � m � &org/openide/util/RequestProcessor$Task
  � � s setPrio �   Executing {0}
  � � � registerParallel N(Lorg/openide/util/RequestProcessor$Task;Lorg/openide/util/RequestProcessor;)V
 � � � � � org/openide/util/lookup/Lookups executeWith 0(Lorg/openide/util/Lookup;Ljava/lang/Runnable;)V �   Execution finished in {0}
 � � � \ debug
  � � � unregisterParallel � java/lang/OutOfMemoryError	 � � � � SEVERE
 � � � � C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � java/lang/StackOverflowError
  � � � doNotify @(Lorg/openide/util/RequestProcessor$Task;Ljava/lang/Throwable;)V � java/lang/ThreadDeath � java/lang/Throwable
  � � ? interrupted � Work finished {0}
 � � � # run
 � � � � 
access$900 R(Lorg/openide/util/RequestProcessor$Task;)Lorg/openide/util/RequestProcessor$Item;
  � � � access$1000 &(Lorg/openide/util/RequestProcessor;)Z
  � � � currentThread ()Ljava/lang/Thread;
  � � # 	interrupt
  �
  � � ? access$1100	 � � � � � &org/openide/util/RequestProcessor$Item message Ljava/lang/String;
 � b
 � � � � 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � Error in RequestProcessor 
   access$1200 &(Lorg/openide/util/RequestProcessor;)I	 � � Ljava/lang/Runnable;	
 java/lang/Runnable getClass ()Ljava/lang/Class;
  access$1300 4(Lorg/openide/util/RequestProcessor;)Ljava/util/Map; java/util/WeakHashMap
 "
  access$1302 C(Lorg/openide/util/RequestProcessor;Ljava/util/Map;)Ljava/util/Map; k java/util/Map get )java/util/concurrent/atomic/AtomicInteger
  s!"# put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
%& o incrementAndGet
( o	 *+, warnedClasses Ljava/util/Map;.  0 	Too many 
2 Z3 java/lang/Class5  (
 P7 W8 -(Ljava/lang/Object;)Ljava/lang/StringBuilder;: -) in shared RequestProcessor; create your own< java/lang/IllegalStateException
;>  g
 �@AB getStackTrace  ()[Ljava/lang/StackTraceElement;
DEFGH java/lang/Exception setStackTrace !([Ljava/lang/StackTraceElement;)V	 �JK � WARNING
NO o decrementAndGet
2QR ? desiredAssertionStatus
 ; "U .org.openide.util.RequestProcessor.inactiveTime  �`
XYZ[\ java/lang/Integer 
getInteger ((Ljava/lang/String;I)Ljava/lang/Integer;
X^_ o intValue
abcde java/util/Collections synchronizedMap  (Ljava/util/Map;)Ljava/util/Map; 	Signature @Ljava/util/Stack<Lorg/openide/util/RequestProcessor$Processor;>; KLjava/util/Map<Ljava/lang/Class<+Ljava/lang/Runnable;>;Ljava/lang/Object;>; Code LineNumberTable LocalVariableTable this -Lorg/openide/util/RequestProcessor$Processor; StackMapTable /()Lorg/openide/util/RequestProcessor$Processor; proc newP g Ljava/lang/ThreadGroup; 
Exceptionsv java/lang/SecurityException MethodParameters B(Lorg/openide/util/RequestProcessor$Processor;Ljava/lang/String;)V last{ java/lang/String priority attachTo &(Lorg/openide/util/RequestProcessor;)V src 	belongsTo r oome Ljava/lang/OutOfMemoryError; e Ljava/lang/StackOverflowError; t Ljava/lang/Throwable; lkp [Lorg/openide/util/Lookup; current em Ljava/util/logging/Logger; loggable� #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
doEvaluate `(Lorg/openide/util/RequestProcessor$Task;Ljava/lang/Object;Lorg/openide/util/RequestProcessor;)V processorLock previous interruptTask N(Lorg/openide/util/RequestProcessor$Task;Lorg/openide/util/RequestProcessor;)Z item (Lorg/openide/util/RequestProcessor$Item; ex number +Ljava/util/concurrent/atomic/AtomicInteger; msg Ljava/lang/Exception; itm rp c Ljava/lang/Class; LocalVariableTypeTable (Ljava/lang/Class<+Ljava/lang/Runnable;>; 
access$100 R(Lorg/openide/util/RequestProcessor$Processor;)Lorg/openide/util/RequestProcessor; x0 <clinit> 
SourceFile RequestProcessor.java InnerClasses 	Processor TopLevelThreadGroup Task Item       	  1 2 f   g  | }    v     � �         & '        +, f   h .       # i   �     9*� � � *� *� Y� !� $*� (� ,� � /� 3� � 7Y� 9��   j      _ X [ ` !a 8bk       9lm  n    � 8     o i       fK� /YL² /� :� *� ?*M,� ,� @,+ð� ,� � � � C� � 7Y� 9�� /� G� M,� ,+ð+ç N+�-�� Y� KK���   # V   $ P V   Q S V   V Y V   j   :   k m n o p q r  t $w >x Hy M{ Q} [~k       pm  H 	pm   dqm  n    �  � ! D ��  
 E F i   4     *� L�   j   
   � �k       rs  t    uw   r   "x i   �     F� /YM�*� PY� RS� U*� Y� U]� U+� U_� U� a� d*� � /*� hW,ç N,�-��   = @   @ C @   j      � � .� 3� ;� E�k       Fpm     Fy � n    � @  z   �� w   	p  y     � s i   S     *� l� *� p�   j      � � �k       lm     | } n    w   |   }~ i   �     *� $YM�*+� t*� $� w,ç N,�-��            j      � � � � �k       lm       n    �       �� w       � � i   |     *� $YM�*� t+� � ,ìN,�-�            j      � � �k       lm     �  n    �  @B �w   �    � # i  ,     L*� $YM�*� t� *� $� z�� ~� N*� tL*� t+� -� /YN�*� � � /*� �W-�,ç�-�,ç��:-��,ç 
:,��M� �N-� �� �6� '*+� -� ��*� Y� �*� � :*� �� �:+� �Y:�*+*,� �� �*� �� 	çç :��**� �� �� �*+� � -� ��*� �� �**� �+� �2*� �� �S� -� ��*� Y� �*� �� �M*� **� �+� § ~:-� �� �*� **� �+� § a:*� �� �*� **� �+� § E:*� **� �+� § 2:*� �� �*� **� �+� § :*� **� �+� ��+� �Y:�*� �� �Wç :	�	����� '*+� -� ��*� Y� �*� � :
*� 
����  	   � 3 D P   I K P   P T P   	 F \   I M \   P Y \   \ ` \   w � �   � � �   � � �   � � �   � � �   �%6 � �%S � �%o � �%� � �%�  6B�  S^�  oq�  ���  ���  ���  ���  ���  ���   j  F Q  � � 	� � � � � $� )� -� 3� :� B� I� P� W� c� e� i� r� w� |� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ������%*3	6�8�BGP	S�U^cl	oqv	�����	���	��������������k   \ 	8 
�� U 	�� � 	��  �/��  ��   e� � �  i���  r��     lm  n   �  �   B � � ) F �� D �� � -   z �  �	� &� E �� !*X �\ �[ �R �[ ��    z ��   �� ^ �� 	    �    �   �� i  �     �*� �:� �6*+� �+� �,Y:�*� �� *� �� �� -� � 	� � �ç :��� =:,Y:	�*� �� *� �� �� -� � 	� � �	ç :
	�
���   > A   A F A     L   S x {   { � {   L N L   j   N   # $ & ' ) * + ., 5/ ;2 I3 L) S* Y+ h, o/ u2 �3 �4k   >    �lm     �� �    �� '    �    �� �   | �  n   B 
� . � E �� B ��  
  �   �   �   E �� � w   �  �     � � i   m     +*� �� �,� � *� �   j      8 : 	= ? Ak        lm     � �      n    	
w   	�       �� i   c     +*� �� �*� ��   j      D E 
G Hk        lm     � �      n    
w   	�     
 � � i   �     G� � #*� �M,� ,� �� ,+� �� �,+� �W,L� �� ǻ PY� R�� U*� �� U� a+� ʱ   j   "   M N O P Q $R &U FVk       ��    G � �     G�� n    &w   	 �  �    � � i  @     �,� �� 
+�� �+�� N,� �Y:�,�� ,�Y��W,�-� �:� ,�-�Y�Y:�  W� 	�$Wç :���',� �� l�)--�  � ]� PY� R/� U-�1� U4� U�69� U� a::+� �:� �;Y�=:�?�C� ��I� ʱ  ! j m   m r m   j   R   \ ] _ a !b (c 4e Cf Hg ai gk ul �m �n �o �p �q �r �t �vk   \ 	 C *��  � 0� �  � -��  � '��    �lm     � � �    ��    ���  u v�� �      ��� n   g 	 � $2  � ,   � 2   �    � 2    ��    � 2  � gzD �� w   	 �  �    � � i   �     @,� �� 
+�� �,� �YN�+��L :,�� ��MW-ç 
:-���   5 8   8 < 8   j      y z | } !~ 3 ?�k   *  ! ��    @lm     @ � �    @�  �     ! �� n     � (   �    �� w   	 �  �  �� i   /     *� �   j      Hk       �m   � # i   f      7�P� � � ,� ;Y�S� /TV�W�]� z�Y��`�)�   j      H J M )Xn    @ �   ��   "   � 
  �  � �  � � 
