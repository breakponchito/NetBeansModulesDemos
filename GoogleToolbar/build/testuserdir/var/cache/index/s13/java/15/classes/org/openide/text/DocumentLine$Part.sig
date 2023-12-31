����   4  org/openide/text/Line	      "org/openide/text/DocumentLine$Part length I	  
   position Lorg/openide/text/PositionRef;
      org/openide/text/Line$Part <init> ()V	     line Lorg/openide/text/Line;
      org/openide/text/PositionRef 	getOffset ()I	     previousOffset
  ! " # limitLength (I)I
  % & ' getCloneableEditorSupport +()Lorg/openide/text/CloneableEditorSupport;
 ) * + , - 'org/openide/text/CloneableEditorSupport getDocument #()Ljavax/swing/text/StyledDocument; / 0 1 2  javax/swing/text/Document 	getLength / 4 5 6 getText (II)Ljava/lang/String;
 8 9 : ; # java/lang/String indexOf
 8 =   ? %javax/swing/text/BadLocationException A java/lang/IllegalStateException
 > C D E 
getMessage ()Ljava/lang/String;
 @ G  H (Ljava/lang/String;)V
 @ J K L 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  N O  	getColumn Q java/io/IOException S 
lineNumber
  U V W firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
  Y Z [ addAnnotation  (Lorg/openide/text/Annotation;)V
 ) ] ^ _ prepareDocument ()Lorg/openide/util/Task;
 a b c d  org/openide/util/Task waitFinished f $org/openide/text/DocumentLine$Part$1
 e h  i e(Lorg/openide/text/DocumentLine$Part;Lorg/openide/text/Annotation;Ljavax/swing/text/StyledDocument;)V k l m n o javax/swing/text/StyledDocument render (Ljava/lang/Runnable;)V
  q r [ removeAnnotation t $org/openide/text/DocumentLine$Part$2
 s h w $org/openide/text/DocumentLine$Part$3
 v y  z [(Lorg/openide/text/DocumentLine$Part;Ljavax/swing/text/StyledDocument;[Ljava/lang/String;)V
  | } ~ getAnnotations ()Ljava/util/List; � � � � � java/util/List iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � � next ()Ljava/lang/Object; � org/openide/text/Annotation
 � � � � isInDocument
 � � � � setInDocument (Z)V
  � � � getPosition ()Ljavax/swing/text/Position;
  0
 � � � Z � org/openide/text/NbDocument ](Ljavax/swing/text/StyledDocument;Ljavax/swing/text/Position;ILorg/openide/text/Annotation;)V � org/openide/text/DocumentLine
 � � � � E java/lang/Class getName
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level;
 � � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 � � r � A(Ljavax/swing/text/StyledDocument;Lorg/openide/text/Annotation;)V � � � � � javax/swing/event/DocumentEvent getType -()Ljavax/swing/event/DocumentEvent$EventType;	 � � � � � )javax/swing/event/DocumentEvent$EventType INSERT +Ljavax/swing/event/DocumentEvent$EventType;
 � � � � � java/lang/Object equals (Ljava/lang/Object;)Z �  � org/openide/text/Annotatable � text	 � � � � REMOVE � 0 � column 9(Lorg/openide/text/Line;Lorg/openide/text/PositionRef;I)V Code LineNumberTable LocalVariableTable this $Lorg/openide/text/DocumentLine$Part; MethodParameters Ljava/lang/String; newLine i !Ljava/lang/IllegalStateException; ex 'Ljavax/swing/text/BadLocationException; suggestedLength d Ljavax/swing/text/Document; end StackMapTable Ljava/io/IOException; getLine ()Lorg/openide/text/Line; 
changeLine (Lorg/openide/text/Line;)V anno Lorg/openide/text/Annotation; doc !Ljavax/swing/text/StyledDocument; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; retStringArray [Ljava/lang/String; attachDetachAnnotations %(Ljavax/swing/text/StyledDocument;Z)V closing Z list Ljava/util/List; LocalVariableTypeTable 0Ljava/util/List<+Lorg/openide/text/Annotation;>; java/lang/Throwable handleDocumentChange $(Ljavax/swing/event/DocumentEvent;)V p0 !Ljavax/swing/event/DocumentEvent; 
access$000 D(Lorg/openide/text/DocumentLine$Part;)Lorg/openide/text/PositionRef; x0 
access$100 '(Lorg/openide/text/DocumentLine$Part;)I 
SourceFile DocumentLine.java InnerClasses Part 	EventType                               �  �   |      *� *,� 	*+� *,� � **�  � �    �      � � 	� � � � �   *      � �                        �              " #  �  f     �*� 	� $� (M,� �*� 	� `>,� . � 
,� . >*� 	� � �,*� 	� *� 	� d� 3 :
� 76� � <� `�:� @Y� B� F:� IW�  9 l m >  �   >   � � � � � %� ,� 7� 9� Q� Z� m� o� }� �� �   R  Q  � �  Z  �   }  � �  o  � �    � � �     � �    } � �   m �   �   ( �  /� � . 8C�     /  > �    �    O   �   [     *� 	� M�L�      P  �      � � 	� �     	  � �     � �   �    H P  2   �   ?     ***� �  � *� �    �   
   � � �        � �    � �  �   /     *� �    �      � �        � �        �   2     *� 	� �    �      � �        � �     � �  �   J     *+� *R+� T�    �      � � � �        � �         �        Z [  �   �     3*+� X*� 	� $� (M,� �*� 	� $� \� `,� eY*+,� g� j �    �      � � � � � "� 2� �        3 � �     3 � �   # � �  �    �  k �    �  �     �    r [  �   �     3*+� p*� 	� $� (M,� �*� 	� $� \� `,� sY*+,� u� j �    �      � � � �   " 2 �        3 � �     3 � �   # � �  �    �  k �    �  �     �    5 E  �   �     **� 	� $� (L+� �� 8M+� vY*+,� x� j ,2�    �           &- �        * � �     � �    � �  �    �  k   � �  �  |  	   �*� {N-Y:�-�  :� � � b� � � �:� ;� �� � �+*� 	� �*� �� �� -:�� �� �� �� �� � �� � �+� ����ç :���  , K N P 
 ~ �   � � �    �   F   3 5 
6 (8 ,: 4; :< K@ N> P? a@ dB lC rD xG {H �I �   >  P  � �  ( P � �    � � �     � � �    � � �   � � �  �      � � �  �   & �  � � �� 8 �B P� � E �  �   	 �   �      �  R     �+� � � ¶ ș *+� � *� � +� � *� *� �`� *�� T+� � � Ӷ ș W+� � *� � +� � *� *� �`� $+� � *� � ++� � +� � `*� � ***� �  � *�� T+� � � ¶ Ț +� � � Ӷ ș +� � *� � *�� T**� 	� � �    �   >   N O .P 6T EU FV eW �Y �Z �^ �_ �` �b �e �f �       � � �     �  �    6-  �       �   /     *� 	�    �      � �        �  	
  �   /     *� �    �      � �        �         2   �   	 e       s       v       � � 