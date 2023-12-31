����   4
      org/openide/text/Line <init> (Lorg/openide/util/Lookup;)V  java/util/ArrayList
  
   (I)V
      java/util/Collections synchronizedList "(Ljava/util/List;)Ljava/util/List;	      org/openide/text/DocumentLine 	lineParts Ljava/util/List;	     pos Lorg/openide/text/PositionRef;   org/openide/text/DocumentLine$LR
      "(Lorg/openide/text/DocumentLine;)V	  " # $ listener "Lorg/openide/text/DocumentLine$LR;
 & ' ( ) * org/openide/text/PositionRef getLine ()I , java/io/IOException	  . / 0 
breakpoint Z
  2 3 4 refreshState ()V
  6 7 8 registerLine A(ILorg/openide/text/DocumentLine;)Lorg/openide/text/DocumentLine;	  : ; 0 error	  = > 0 current
 & @ A B getCloneableEditorSupport +()Lorg/openide/text/CloneableEditorSupport;
 D E F G H 'org/openide/text/CloneableEditorSupport getDocument #()Ljavax/swing/text/StyledDocument;	  J K L docL $Ljavax/swing/event/DocumentListener; N O P Q R javax/swing/text/StyledDocument removeDocumentListener '(Ljavax/swing/event/DocumentListener;)V
 & T U * 	getOffset
 W X Y Z [ org/openide/text/NbDocument 	markError %(Ljavax/swing/text/StyledDocument;I)V
 ] ^ _ ` a org/openide/util/WeakListeners document \(Ljavax/swing/event/DocumentListener;Ljava/lang/Object;)Ljavax/swing/event/DocumentListener; N c d R addDocumentListener
 W f g [ markCurrent
 W i j [ markBreakpoint
 W l m [ 
markNormal
 o p q r * java/lang/Object hashCode	  t u v dlEqualsCounter I	  x y z LOG Ljava/util/logging/Logger;	 | } ~  � java/util/logging/Level FINER Ljava/util/logging/Level;
 � � � � � java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z � java/lang/StringBuilder
 � �  4 �  DocumentLine.equals() performed 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � (I)Ljava/lang/StringBuilder; �  times.
 � � � � toString ()Ljava/lang/String;
 � � � � finer (Ljava/lang/String;)V
  � � * getLineNumber	  � � � assigned Ljava/util/Map; � � � � � java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; �  [Lorg/openide/text/DocumentLine; � � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 � � � � � java/io/ObjectOutputStream writeObject (Ljava/lang/Object;)V
 � � � � writeBoolean (Z)V
 � � � � � java/io/ObjectInputStream 
readObject ()Ljava/lang/Object;
 � � � � readBoolean ()Z
  � � � setBreakpoint � � � � 4 java/util/List clear
 D � � � 
getLineSet ()Lorg/openide/text/Line$Set; � org/openide/text/DocumentLine$1
 � 
 � � � � � org/openide/text/Line$Set findOrCreateLine C(ILorg/openide/text/LineVector$LineCreator;)Lorg/openide/text/Line;
 � � � � � org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
  � � � addAnnotation  (Lorg/openide/text/Annotation;)V
 D � � � prepareDocument ()Lorg/openide/util/Task;
 � � � � 4 org/openide/util/Task waitFinished
 & � � � getPosition ()Ljavax/swing/text/Position; � org/openide/text/DocumentLine$2
 � �  � {(Lorg/openide/text/DocumentLine;Lorg/openide/text/Annotation;Ljavax/swing/text/StyledDocument;Ljavax/swing/text/Position;)V N � � � render (Ljava/lang/Runnable;)V
 � � � � � java/lang/Class getName
 �  	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 | � WARNING
 �	 log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  � removeAnnotation org/openide/text/DocumentLine$3
  `(Lorg/openide/text/DocumentLine;Lorg/openide/text/Annotation;Ljavax/swing/text/StyledDocument;)V 4org/openide/text/DocumentLine$FindAnnotationPosition
  ?(Ljavax/swing/text/StyledDocument;Ljavax/swing/text/Position;)V
 � getAnnotationPosition
  getAnnotations ()Ljava/util/List; � ! iterator ()Ljava/util/Iterator;#$%& � java/util/Iterator hasNext#() � next+ org/openide/text/Annotation
*-. � isInDocument
*01 � setInDocument
 W3 �4 ](Ljavax/swing/text/StyledDocument;Ljavax/swing/text/Position;ILorg/openide/text/Annotation;)V
 W67 A(Ljavax/swing/text/StyledDocument;Lorg/openide/text/Annotation;)V9 "org/openide/text/DocumentLine$Part
8;<= attachDetachAnnotations %(Ljavax/swing/text/StyledDocument;Z)V? java/lang/StringA org/openide/text/DocumentLine$4
@C D V(Lorg/openide/text/DocumentLine;Ljavax/swing/text/StyledDocument;[Ljava/lang/String;)V �FGH add (Ljava/lang/Object;)Z	 |JK � FINEM VDocumentLine.addLinePart(): Added part at column={0}, length={1}, lineParts.size()={2}
8OP * 	getColumn
RSTUV java/lang/Integer valueOf (I)Ljava/lang/Integer;
8XY * 	getLength �[\ * size
 �^_ A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V �abH remove
 def addLinePart '(Lorg/openide/text/DocumentLine$Part;)V
8hij 
changeLine (Lorg/openide/text/Line;)V �l �m (I)Ljava/lang/Object;
8opq handleDocumentChange $(Ljavax/swing/event/DocumentEvent;)V
8 T
 Wtuv findLineNumber %(Ljavax/swing/text/StyledDocument;I)I
8x )y ()Lorg/openide/text/Line;
  �
|}~� !org/openide/text/DocumentLine$Set 
getCurrent (I)Lorg/openide/text/Line;
 ��� moveLinePart F(Lorg/openide/text/DocumentLine$Part;Lorg/openide/text/DocumentLine;)V� T� javax/swing/text/Position
 W��v findLineOffset
 D��� getPositionManager (()Lorg/openide/text/PositionRef$Manager;	����� javax/swing/text/Position$Bias Forward  Ljavax/swing/text/Position$Bias;
 &� � J(Lorg/openide/text/PositionRef$Manager;ILjavax/swing/text/Position$Bias;)V� "java/lang/IllegalArgumentException
� �
 �� 4 updatePositionRef� org/openide/text/Line$Part� line
8��� firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
 ;� java/util/WeakHashMap
� 
 	Signature ZLjava/util/Map<Lorg/openide/text/CloneableEditorSupport;[Lorg/openide/text/DocumentLine;>; serialVersionUID J ConstantValue,���[o:� 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; 6Ljava/util/List<Lorg/openide/text/DocumentLine$Part;>; :(Lorg/openide/util/Lookup;Lorg/openide/text/PositionRef;)V Code LineNumberTable LocalVariableTable this Lorg/openide/text/DocumentLine; obj Lorg/openide/util/Lookup; MethodParameters init ex Ljava/io/IOException; StackMapTable show (II)V kind column b isBreakpoint previous unmarkError markCurrentLine unmarkCurrentLine doc !Ljavax/swing/text/StyledDocument; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; equals dl o Ljava/lang/Object; prev indx es )Lorg/openide/text/CloneableEditorSupport; arr (Ljava/io/ObjectOutputStream;)V oos Ljava/io/ObjectOutputStream; 
Exceptions (Ljava/io/ObjectInputStream;)V ois Ljava/io/ObjectInputStream;�  java/lang/ClassNotFoundException readResolve� java/io/ObjectStreamException p Ljavax/swing/text/Position; anno Lorg/openide/text/Annotation; fap 6Lorg/openide/text/DocumentLine$FindAnnotationPosition; $Lorg/openide/text/DocumentLine$Part; closing annoPos list LocalVariableTypeTable 0Ljava/util/List<+Lorg/openide/text/Annotation;>;� java/lang/Throwable getText retStringArray [Ljava/lang/String; linePart newLine notifyChange h(Ljavax/swing/event/DocumentEvent;Lorg/openide/text/DocumentLine$Set;Ljavax/swing/text/StyledDocument;)V part i e lineStartOffset support annos p0 !Ljavax/swing/event/DocumentEvent; set #Lorg/openide/text/DocumentLine$Set; javax/swing/event/DocumentEvent 
notifyMove documentOpenedClosed closed <clinit> 
SourceFile DocumentLine.java InnerClasses LR Set 'org/openide/text/LineVector$LineCreator org/openide/text/LineVector LineCreator FindAnnotationPosition Part $org/openide/text/PositionRef$Manager Manager Bias!     
 
 � � �   � �� �   �       / 0 �    �    �   � ; 0 �    �    �   � > 0 �    �    �   � # $   � K L      �   �  u v     � �   d     *+� *� Y� 	� � *,� �   �       R  I  S  T�        ��     ��       �   	�       � 4 �   ;     *� Y*� � !�   �   
    Y  Z�       ��    � * �   [     *� � %�L�      + �       d  e 	 g�     	 ��    ��  �    H +�� �   	�  �  �    �    �    � � �   [     *� -� *� -*� 1�   �       v  w  x  z�       ��     � 0 �    �   �  �    �    �   � � �   /     *� -�   �       �       ��  �    �    �    Z 4 �   x     **� 5L+� +� 9+� 1*� 9*� 1�   �       �  �  �  �  �  �  ��       ��    �� �    �  �    �    �   � 4 �   G     *� 9*� 5W*� 1�   �       �  �  �  ��       ��  �    �    �   � 4 �   x     **� 5L+� +� <+� 1*� <*� 1�   �       �  �  �  �  �  �  ��       ��    �� �    �  �    �    �   � 4 �   G     *� <*� 5W*� 1�   �       �  �  �  ��       ��  �    �    �     3 4 �   �     y*� � ?� CL+� l*� I� +*� I� M *� 9� "+*� � S� V+**� !+� \Z� I� b �*� <� +*� � S� e�*� -� +*� � S� h�+*� � S� k��   �   F    �  �  �  �   � ' � 2 � E � F � M � X � Y � ` � k � l � w � x ��       y��    n�� �    �   N%�    �    �    r * �   5     *� � ?� n�   �       ��       ��  �    �   �H �   �     o+� � i+� M,� � ?*� � ?� S� s`� s� s~� /� w� {� �� #� w� �Y� ��� �� s� ��� �� �� �,� �*� �� � ��   �   & 	   �  �  �  � % � 0 � < � \ � m ��       a��    o��     o�� �    � \ @�  �   �  �    �    7 8 �   �     A*� � ?:� �� � � �:� 2N� � :� �� � WN,S-�   �   & 	   	 	  % + 8 : ?�   H  " ��    A��     A� v    A��  : ��  	 8��   )� � �   # � %  D ��      D �  �   	�  �  �    �    �    �� �   M     +*� � �+*� -� ��   �        ! "�       ��     �� �     +�   �    �� �   ]     *+� �� &� *+� �� �*� � � �   �      ' ( ) *�       ��     �� �     +��   �    � � �   x     $*� � ?� �*� � %� �Y*� Ӷ ԰L+� �*�      + �      2 : ; "<�      ��    $��  �    ] +�    �  � � �   �     P*+� �*� � ?� CM,� �*� � ?� � �*� � �N,� �Y*+,-� � � � N� �� ��-��  " ; > + �   .   D F I J M "P *Q ;b >` ?a Od�   4  * ��  ? ��    P��     P��   @�� �    �  Nh +�   � �    �    � �   �     3*+�
*� � ?� CM,� �*� � ?� � �,�Y*+,�� � �   �      j l o p s "u 2�        3��     3��   #�� �    �  N�   � �    �    <= �  W  
   �N� :*� � �N�Y+-�:+� � �N� :� �� ���*�:Y:�� :�" � C�' �*:� �,� (�/+-�2� �,� �/+�5���ç :��*� Y:�*� � :�" � �' �8:+�:���ç :	�	��   ' * + I � �   � � �   � � �   � � �   �   n   � � � � � !� '� *� ,� =� C� I� h� l� t� z� �� �� �� �� �� �� �� �� �� �� ���   \ 	  ��  , ��  h 1��  � ��    ���     ���    �� 0   ���  C ��  �     C ��� �   I � *   N�  +�  � o#� 2*� � E�� �  o#� E�� �   	�  �   � � �   �     **� � ?� CL+� ��>M+�@Y*+,�B� � ,2�   �      � � � � � &��        *��    ��   �� �    �  N�    �    ef �   �     K*� +�E W� w�I� �� 6� w�IL� oY+�N�QSY+�W�QSY*� �Z �QS�]�   �      � � � '� G� J��       K��     K�� �    � J�   �    �� �   `     *� +�` W,+�c+,�g�   �      � � � ��        ��     ��    �� �   	�  �    �� �  �    Z*� Y:�6*� �Z � P*� �k �8:+�n-�r�s�w�z�  ,-�r�s�{� :*���������ç :��*� � �:� :� �� ���:� �--�� �s��6*� � ?:*� &Y������� *�:Y:	��Z � n*� � �:� :
��Y���� :

�" � E
�' �*:�,� �/� C�5�,� �/� C�2���	ç :	���   i l   l q l   t } � + � � � + �NQ  QVQ   �   � $  � � � )� /� C� U� ]� `� f� t }	 � � � � � � � � � � � � � � �#-"5#;$H&K(Y*�   �  U ��  ) =��   [� v  } ��  � ��  � �� 
 3��  � �� v  � ���  � ��    Z��    Z    Z   Z��  � ��� �     � ��� �   � �   o� T  | N8 o  �   | N  o  E�� K +�  �� U 
 | N � D � o  +	� #� -*� � E��   | N �  �        �     4 �   �     A*��*� YL�*� � M,�" � ,�' �8N-������+ç 
:+���   6 9   9 = 9   �      . 0 1 (2 13 44 @5�     ( 	��    A��  �    �  o#� D��  � 4 �   +      �   �      ]�       ��    = �   Q     *� 1*+���   �      j k 
l�        ��     ��     0 �   	�     	 4 �   $      ��Y��� ��   �       - 
      j     � 	 �       �              8  @      | 	 & �� � 	