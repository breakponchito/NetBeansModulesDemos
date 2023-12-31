����   4�	      "org/openide/text/DocumentOpenClose LOG Ljava/util/logging/Logger;  java/lang/StringBuilder
  
   <init> ()V
      java/lang/Object getClass ()Ljava/lang/Class;
      java/lang/Class getSimpleName ()Ljava/lang/String;
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;  @
   ! " # $ java/lang/System identityHashCode (Ljava/lang/Object;)I
  &  ' (I)Ljava/lang/StringBuilder;
  ) *  toString , null
  
	 / 0 1 2 3 org/openide/text/DocumentStatus CLOSED !Lorg/openide/text/DocumentStatus;	  5 6 3 documentStatus	  8 9 : ces )Lorg/openide/text/CloneableEditorSupport;
 < = > ? @ 'org/openide/text/CloneableEditorSupport getLock ()Ljava/lang/Object;	  B C D lock Ljava/lang/Object;	  F G D 
docRefLock
  I J K getRefDocument #()Ljavax/swing/text/StyledDocument;	  M N O docRef 0Lorg/openide/text/DocumentOpenClose$DocumentRef;
 Q R S T @ .org/openide/text/DocumentOpenClose$DocumentRef get V javax/swing/text/StyledDocument
 Q X  Y H(Lorg/openide/text/DocumentOpenClose;Ljavax/swing/text/StyledDocument;)V	  [ \ ] strongDocRef !Ljavax/swing/text/StyledDocument;	 _ ` a b c java/util/logging/Level FINEST Ljava/util/logging/Level;
 e f g h i java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z k open() requested by m java/lang/Exception
 l 

 e p q r log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  t u K retainExistingDocLA	 _ w x c FINER z #open(): Existing openDoc retained.

 e | } ~ finer (Ljava/lang/String;)V	 � � � � � $org/openide/text/DocumentOpenClose$3 *$SwitchMap$org$openide$text$DocumentStatus [I
 / � � � ordinal ()I � Wopen(): status OPENED but doc GCed. Schedule close task followed by possible open task

  � � � closeImplLA %(Ljavax/swing/text/StyledDocument;Z)V	  � � � 
activeOpen 1Lorg/openide/text/DocumentOpenClose$DocumentLoad;
  � �  initLoadTaskLA	  � � � activeOpenTask (Lorg/openide/util/RequestProcessor$Task; � 8open(): status CLOSED. Schedule a synchronous open task
	  � � � activeReload	  � � � activeReloadTask
  � � � invalidStatus #()Ljava/lang/IllegalStateException; � load=
  �  � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � , task= � , this: 
 e � � ~ info
 � � � �  org/openide/util/Task waitFinished	 � � � � � /org/openide/text/DocumentOpenClose$DocumentLoad loadIOException Ljava/io/IOException;	 � � � � loadRuntimeException Ljava/lang/RuntimeException;	 � � � ] loadDoc � $org/openide/text/DocumentOpenClose$1
 � X
 � �  � (Ljava/lang/Runnable;)V
 � � �  run	  � � � $assertionsDisabled Z � java/lang/AssertionError
 � 
	  � � � activeCloseTask
  � �  waitForCloseFinish	 � � � � EMPTY Lorg/openide/util/Task;	  � � � activeClose 2Lorg/openide/text/DocumentOpenClose$DocumentClose;
  � � � initReloadTaskLA >(Ljavax/swing/text/StyledDocument;[Ljavax/swing/JEditorPane;)V	 � � � � � org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;
 � � � � 
readAccess
  � �  cancelCloseLA � java/lang/IllegalStateException � !Open task already inited. State:

 � �  ~ � EinitLoadTaskLA(): Schedule open task followed by change firing task.

 � �  � '(Lorg/openide/text/DocumentOpenClose;)V	  � �  RP #Lorg/openide/util/RequestProcessor;
 !org/openide/util/RequestProcessor create >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;
	
 &org/openide/util/RequestProcessor$Task schedule (I)V 3org/openide/text/DocumentOpenClose$DocumentOpenFire
  4(Lorg/openide/text/DocumentOpenClose$DocumentLoad;)V Reload task already inited.
 �  (Ljava/lang/Object;)V (initLoadTaskLA(): Schedule reload task.

 �  b(Lorg/openide/text/DocumentOpenClose;Ljavax/swing/text/StyledDocument;[Ljavax/swing/JEditorPane;)V Close requested by:
	 !" � 0org/openide/text/DocumentOpenClose$DocumentClose delayedClose$ RcloseImplLA(): Delayed active close already running (can't be cancelled). Return.
& 2closeImplLA(): Close already in progress. Return.

( ) I(Lorg/openide/text/DocumentOpenClose;Ljavax/swing/text/StyledDocument;Z)V+ /closeImplLA(): Scheduled close task with delay=- .
/ ,cancelCloseLA(): Attempt to cancel close by
1 *cancelCloseLA(): Attempt to cancel close.

345 cancel ()Z7 4cancelCloseLA(): activeClose().cancel() successful.

3
 <:;< findLineVector ()Lorg/openide/text/LineVector;> $org/openide/text/DocumentOpenClose$2
=(
ABCDE org/openide/text/LineVector updateLines ,(Lorg/openide/text/LineVector$LineUpdater;)VG Unknown documentStatus=
 I K DocumentOpenClose: 
 M N &(Ljava/lang/Object;)Ljava/lang/String;P , documentStatus=R 	, docRef=
T RU java/lang/ref/ReferenceW (Y )[ 
  activeOpen: ] 
  activeReload: _ 
  activeClose: 
 ab5 desiredAssertionStatusd $org.openide.text Document Processing
f g (Ljava/lang/String;IZZ)V	 <ij  ERR NULL_DOCUMENT_CLOSE_DELAY I ConstantValue  � preReloadEDT Ljava/lang/Runnable; firingCloseDocument  docOpenedWhenFiringCloseDocument Code LineNumberTable LocalVariableTable o StackMapTabley java/lang/String MethodParameters ,(Lorg/openide/text/CloneableEditorSupport;)V this $Lorg/openide/text/DocumentOpenClose; getDocumentStatusLA #()Lorg/openide/text/DocumentStatus; setDocumentStatusLA $(Lorg/openide/text/DocumentStatus;)V getDocument� java/lang/Throwable 	setDocRef $(Ljavax/swing/text/StyledDocument;)V doc setDocumentStronglyReferenced (Z)V stronglyReferenced open load task openDoc 
Exceptions� java/io/IOException openTask ()Lorg/openide/util/Task; existingDocTask existingDoc 	closeTask isDocumentLoadedOrLoading isDocumentOpened 
reloadTask reload ([Ljavax/swing/JEditorPane;)V 	reloadDoc openedPanes [Ljavax/swing/JEditorPane; reloadEDTTask� java/lang/Runnable close delay 
lineVector Lorg/openide/text/LineVector; sb Ljava/lang/StringBuilder; ref Ljava/lang/ref/Reference; LocalVariableTypeTable <Ljava/lang/ref/Reference<Ljavax/swing/text/StyledDocument;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
access$000 ()Ljava/util/logging/Logger; <clinit> 
SourceFile DocumentOpenClose.java InnerClasses DocumentRef DocumentLoad Task DocumentClose DocumentOpenFire� 'org/openide/text/LineVector$LineUpdater LineUpdater 0       �    kl m   n       9 :    C D     6 3     � �     � �     � �     � �    op     � �     � �     N O    G D     \ ]    q �    r ]   � �     N s   m     **� &� Y� 	*� � � � *� � %� (� +�   t       6  7 ' 8 ) 6u       *v D  w    'Axz   v     { s   l     $*� -*� .� 4*+� 7*+� ;� A*� Y� -� E�   t       y  M  z  {  | # }u       $|}     $ 9 : z    9   ~ s   /     *� 4�   t       �u       |}    �� s   >     *+� 4�   t   
    �  �u       |}      6 3 z    6    � K s   /     *� H�   t       �u       |}     J K s   |     $*� EYL�*� L� *� L� P� U� +ðM+�,�        "    t       �  �  �u       $|}  w    �  @ UB�  �� s   �     '*� EYM�*+� � QY*+� W� � L,ç N,�-��    !   ! $ !   t       �  �  � & �u       '|}     '� ] w   2 �    U   �     U    QG�� z   �    �� s   s     � *� HM*,� Z� *� Z�   t       �  � 	 �  �  �  �u      	 � ]    |}     � � w    z   �    � K s      Q� � ^� d� � � ^j� lY� n� o*� AYN�*� s:� � � v� d� � y� {-ð� *� 4� �.�      �             R   ~   �� � v� d� � �� {*� �*� �� *� �*� �L*� �M� N� � v� d� � �� {*� �� *� �*� �L*� �M� "*� �L*� �M� *� �L*� �M� *� ��-ç 
:-��+� ,� .� � Y� 	�� +� ��� ,� ��� *� �� (� �,� �+� �� +� ��+� �� +� ��+� ��  % H �   I � �   � � �   t   � (   �  �  � % � + � 0 � < � D � I � t � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �0 �4 �; �@ �G �L �u   �  � � �  � � �  � � �  � � �  � � �  � � �  � � �  � � �  + �� ]  � � �  � � �   Q|}   � T� �  � T� � w   X � %      U  *
�    � �   �       ��    � �  *�    �  �� s  y     �*� AYL�*� sM,� � �Y� �Y*,� Ʒ �N-� �-+ð*� �� 
*� �+ð� *� 4� �.�    N            +   2   9*� �*� �� +*� �� $*� �+ð� ͚ *� �� � �Y� ӿ*� ��*� �+ð:+��   ( �   ) 6 �   7 z �   { � �   � � �   t   N    �  �  �  � ! � % � ) � 0 � 7 � ` f j m q t
 { � � �u      ! � �   �� ]    �|}  w   " 	� )  U(�     �  �  s   �     *� AYM�*� �L,ç N,�-�+� +� ��            t           u       � �    |}    	� � w   ! �      ��    �    �5 s   �     F*� �*� AYL² *� 4� �.�    &         "      "   "+ì+ì*� ��M+�,�   7 A   8 ; A   < D A   t      " $ % 4' 8+ <- A0u       F|}  w    � 4 D�  �5 s   �     F*� �*� AYL² *� 4� �.�    &         "         +ì+ì*� ��M+�,�   7 A   8 ; A   < D A   t      5 7 8 4< 8> <@ ACu       F|}  w    � 4 D�  �� s   �      *� AYL�*� �� 
*� �+ð� �+ðM+�,�                 t      I J K M Nu        |}  w    �  E�  �� s  7     �M*� AYN² *� 4� �.�      T         &       #   &� 9� 6*� �� /*� �� (*� L� P� U:� *+� �*� �M� *� ��-ç 
:-��,� 
� �,� �  	 o r   r v r   t   B   R S 	T 4V 7X :[ H\ T] Y_ `` eb hf mi yk }m �ou   *  T � ]    �|}     ���   ��p w    	� 4� *D�� 
z   �    u K s   �     O� *� 4� �.�   =         '           � %*� � *� HL+� *� �*� �� 
+�*� ���   t   .   r (t +w /x 2{ 7| ;~ ? F� H� M�u     7 � ]    O|}  w    (  �  s   �     n*� �� � �Y� Y� 	�� *� �� (� ��� � v� d� � �� {*� �Y*� �� �*� �*� ��� �*� ��� ��Y*� �����   t   & 	  � � "� .� 6� B� P� X� m�u       n|}  w    "  � � s   �     <� ͚ *� �� � �Y��� � v� d� � � {*� �Y*+,�� ��   t      � � $� -� ;�u        <|}     <� ]    <�� w    z   	�  �    �  s   �     %*� AYL�*� HM*,,� � � �+ç N+�-��        "    t      � � � � $�u      � ]    %|}  w   B �     U   U�      U   U�     ��    � � s  �     ݲ � ^� d� � � ^� lY� n� o*� �� H� .*� ޴� $*� �*� �� /� � v� d� � #� {�� � v� d� � %� {�� ͚ *� �� � �Y� ӿ*�Y*+�'� �*� �*� ޶� �� 	� >*� ��� � v� d� #� � Y� 	*� � %,� � (� {�   t   R   � � � &� 4� 8� ?� K� T� U� a� j� k� �� �� �� �� �� �� ��u   *    �|}     �� ]    �" �  � 5�l w    	4  %@� 4z   	�  "     �  s   �     p� � v� d� .� � ^� d� � � ^.� lY� n� o� � 0� {*� �� 4*� ޶2� *� � v� d� � 6� {*� Զ8W*� �*� ޱ   t   .   � � � .� 7� H� T� ]� e� j� o�u       p|}  w    .%  D � s   g     *� 7�9N-�=Y*+�?�@�   t      � � �u   *    |}     � ]    � �   �� z   	� �    � � s   I     � �Y� Y� 	F� *� 4� �� (� ��   t      �u       |}    *  s  X     �� Y ȷHL+J� *� 7�L� O� *� 4� �W*� LM+Q� W,� #,�S� UN+V� -�L� X� W� 
++� W*� �� +Z� *� �� �W*� �� +\� *� �� �W*� �� +^� *� ޶ �W+� (�   t   F   � � � *� /� 7� ;� C� X� [� b� i  x  � � �u   *  C � ]    �|}    ���  / z�� �     / z�� w    � [ T�    �  �� s         � �   t       / �  s   R      '�`� � � ͻYc�e� ��h� �   t       /  3   Dw    @ �   ��   J 	 Q �  �     � � �  �       �  � =      �A�