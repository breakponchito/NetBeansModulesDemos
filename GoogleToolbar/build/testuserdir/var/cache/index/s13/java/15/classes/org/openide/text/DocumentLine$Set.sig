����   4 �
      !org/openide/text/DocumentLine$Set offset (I)I
  	 
   org/openide/text/Line$Set findOrCreateLine C(ILorg/openide/text/LineVector$LineCreator;)Lorg/openide/text/Line;
     <init> M(Ljavax/swing/text/StyledDocument;Lorg/openide/text/CloneableEditorSupport;)V
     ()V  org/openide/text/LineListener
  	     listener Lorg/openide/text/LineListener;
     getLinesFromRange (II)Ljava/util/List;	    ! " support )Lorg/openide/text/CloneableEditorSupport;
 $ % & ' ( 'org/openide/text/CloneableEditorSupport getDocument #()Ljavax/swing/text/StyledDocument; * + , - . java/util/List iterator ()Ljava/util/Iterator; 0 1 2 3 4 java/util/Iterator hasNext ()Z 0 6 7 8 next ()Ljava/lang/Object; : org/openide/text/Line < org/openide/text/Annotatable > text
 9 @ A B firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V D org/openide/text/DocumentLine
 C F G H notifyChange h(Ljavax/swing/event/DocumentEvent;Lorg/openide/text/DocumentLine$Set;Ljavax/swing/text/StyledDocument;)V J 
lineNumber
 C L M  
notifyMove
  O P Q findLineVector ()Lorg/openide/text/LineVector;
 S T U V  org/openide/text/LineVector getLinesInRange	  X Y Z list Ljava/util/List; \ org/openide/text/LazyLines
 [ ^  _ &(Lorg/openide/text/DocumentLine$Set;)V
  a b  getLine d 3org/openide/text/DocumentLine$Set$OffsetLineCreator
 c f  g G(Lorg/openide/text/DocumentLine$Set;Lorg/openide/text/DocumentLine$1;)V
  i j  safelyFindOrCreateLine	 C l m n pos Lorg/openide/text/PositionRef;
 p q r s t org/openide/text/PositionRef getCloneableEditorSupport +()Lorg/openide/text/CloneableEditorSupport; v #org/openide/text/DocumentLine$Set$1
 u x  y ?(Lorg/openide/text/DocumentLine$Set;Lorg/openide/text/Line;[I)V { | } ~  javax/swing/text/Document render (Ljava/lang/Runnable;)V � � � �  java/lang/Runnable run
 � � � � � org/openide/text/NbDocument findLineOffset %(Ljavax/swing/text/StyledDocument;I)I � 3org/openide/text/DocumentLine$Set$1DocumentRenderer
 � �  � P(Lorg/openide/text/DocumentLine$Set;ILorg/openide/text/LineVector$LineCreator;)V � | � javax/swing/text/StyledDocument
 � �	 � � � � result Lorg/openide/text/Line; 	Signature )Ljava/util/List<Lorg/openide/text/Line;>; $(Ljavax/swing/text/StyledDocument;)V Code LineNumberTable LocalVariableTable this #Lorg/openide/text/DocumentLine$Set; doc !Ljavax/swing/text/StyledDocument; MethodParameters linesChanged &(IILjavax/swing/event/DocumentEvent;)V line it Ljava/util/Iterator; startLineNumber I endLineNumber p0 !Ljavax/swing/event/DocumentEvent; changedLines LocalVariableTypeTable -Ljava/util/Iterator<Lorg/openide/text/Line;>; StackMapTable 
linesMoved (II)V 
movedLines 
lineVector Lorg/openide/text/LineVector; -(II)Ljava/util/List<Lorg/openide/text/Line;>; getLines ()Ljava/util/List; ,()Ljava/util/List<+Lorg/openide/text/Line;>; getOriginal (I)Lorg/openide/text/Line; newLine 
Exceptions � #java/lang/IndexOutOfBoundsException getOriginalLineNumber (Lorg/openide/text/Line;)I ces dl Lorg/openide/text/DocumentLine; ret [I d Ljavax/swing/text/Document; r Ljava/lang/Runnable; � #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
getCurrent 
createLine 	lineIndex lineCreator )Lorg/openide/text/LineVector$LineCreator; renderer 5Lorg/openide/text/DocumentLine$Set$1DocumentRenderer; 
access$301 f(Lorg/openide/text/DocumentLine$Set;ILorg/openide/text/LineVector$LineCreator;)Lorg/openide/text/Line; x0 x1 x2 
access$400 '(Lorg/openide/text/DocumentLine$Set;I)I 
SourceFile DocumentLine.java InnerClasses Set � 'org/openide/text/LineVector$LineCreator LineCreator OffsetLineCreator � org/openide/text/DocumentLine$1 DocumentRenderer!            Y Z  �    �    �  �   ?     *+� �    �   
   � � �        � �      � �  �    �        �   X     *� *� Y+,� � �    �      � � � �         � �      � �     ! "  �   	 �   !     � �  �       Y*� :*� � � #:� ) :� / � 4� 5 � 9:=� ?� � C� � C-*� E��ȱ    �   & 	  � � � '� 3� <� I� U� X� �   R  3 " � �   ; � �    Y � �     Y � �    Y � �    Y � �   Q � Z   E � �  �      ; � �   Q � �  �    �  * � 07�  �    �   �   �     � �  �   �     B*� N-� ) :� / � +� 5 � 9:I� ?� C� � C� K��ѱ    �   "   � � � %� .� 6� >� A� �   >  %  � �   2 � �    B � �     B � �    B � �   ; � Z  �      2 � �   ; � �  �    �  * 0.�  �   	 �   �       �   X     *� NN-� R�    �   
   � � �   *     � �      � �     � �    � �  �   	 �   �   �    � ! � �  �   S     *� W� *� [Y*� ]� W*� W�    �      � � � �        � �   �     �    �  � �  �   Z     *� � `=*� cY*� e� h�    �   
   � 	� �         � �      � �  	  � �  �     � �    �    � �  �       V�
MN+� C� &+� C:� k� � k� o:� 	� #N� uY*+,� w:-� -� z � 
� � ,.�    �   6   � � � � � � %� *� 0� <	 @ K R �   H  %  � "    � �    V � �     V � �   R � �   P � �  <  � �  �    � 0 � {�  � �    �  �     �    � �  �   C     *� cY*� e� h�    �       �        � �      � �  �     � �    �       �   {     *� � � #M,� � ,� �>�    �         �   *     � �      � �    � �     �  �   
 �  �D �    �   � �  �        j   �   �     1*� � � #N� �Y*,� �:-� -� � � � �� ��    �      9 : ; < &> +A �   4    1 � �     1 � �    1 � �   & � �    � �  �    � & � � �   	 �  �  � �  �   E     *,� �    �      � �         � �      � �     � �  � �  �   :     *� �    �      � �        � �      � �   �    � �   :   C �	  9 �	 � S � c  �  �       u       �   �  