����   4 m	      ,org/openide/text/EditorSupportLineSet$Closed support )Lorg/openide/text/CloneableEditorSupport;
  	 
   org/openide/text/Line$Set <init> ()V
      org/openide/util/WeakListeners change X(Ljavax/swing/event/ChangeListener;Ljava/lang/Object;)Ljavax/swing/event/ChangeListener;
      'org/openide/text/CloneableEditorSupport addChangeListener %(Ljavax/swing/event/ChangeListener;)V
     findLineVector ()Lorg/openide/text/LineVector;	      delegate Lorg/openide/text/Line$Set;
  " # $ getLines ()Ljava/util/List; & java/util/ArrayList
 % 	
  ) * + getOriginal (I)Lorg/openide/text/Line;
  - . + 
getCurrent
   1 ?org/openide/text/EditorSupportLineSet$Closed$SupportLineCreator
 0 3  4 Z(Lorg/openide/text/EditorSupportLineSet$Closed;Lorg/openide/text/EditorSupportLineSet$1;)V
 6 7 8 9 : org/openide/text/LineVector findOrCreateLine C(ILorg/openide/text/LineVector$LineCreator;)Lorg/openide/text/Line;
  < = > getDocument #()Ljavax/swing/text/StyledDocument; @ %org/openide/text/EditorSupportLineSet
 ? B  C M(Lorg/openide/text/CloneableEditorSupport;Ljavax/swing/text/StyledDocument;)V E  javax/swing/event/ChangeListener ,(Lorg/openide/text/CloneableEditorSupport;)V Code LineNumberTable LocalVariableTable this .Lorg/openide/text/EditorSupportLineSet$Closed; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; StackMapTable 	Signature ,()Ljava/util/List<+Lorg/openide/text/Line;>; line I 
Exceptions V #java/lang/IndexOutOfBoundsException stateChanged "(Ljavax/swing/event/ChangeEvent;)V doc !Ljavax/swing/text/StyledDocument; ev Ljavax/swing/event/ChangeEvent; 
access$200 Y(Lorg/openide/text/EditorSupportLineSet$Closed;)Lorg/openide/text/CloneableEditorSupport; x0 
SourceFile EditorSupportLineSet.java InnerClasses Closed e org/openide/text/Line Set SupportLineCreator i 'org/openide/text/EditorSupportLineSet$1 k 'org/openide/text/LineVector$LineCreator LineCreator      D                F  G   S     *� *+� +*+� � �    H       �  � 	 �  � I        J K         L            G   2     *� � �    H       � I        J K   M     N    # $  G   R     *� � *� � !�� %Y� '�    H       �  �  � I        J K   O     P    Q  * +  G   [     *� � *� � (�*� ,�    H       �  �  � I        J K      R S  O     T     U L    R    . +  G   F     *� /� 0Y*� 2� 5�    H       � I        J K      R S  T     U L    R   ! W X  G   �     6*� � "*� � ;M,� *� ?Y*� ,� A� � *� � ;� *� �    H   "    �  �  �  � # � & � 0 � 5 � I        Y Z    6 J K     6 [ \  O    # L    [   ] ^  G   /     *� �    H       � I        _ K    `    a b   *   ? c   d f	 0  g  h     j 6 l