����   4 �
      java/lang/Object <init> ()V  org/openide/text/LineStruct
  	      org/openide/text/LineListener struct Lorg/openide/text/LineStruct;
      org/openide/text/NbDocument findLineRootElement =(Ljavax/swing/text/StyledDocument;)Ljavax/swing/text/Element;      javax/swing/text/Element getElementCount ()I	     lines I	  ! "  orig $ java/lang/ref/WeakReference
 # &  ' (Ljava/lang/Object;)V	  ) * + rootRef Ljava/lang/ref/Reference;	  - . / support )Lorg/openide/text/CloneableEditorSupport;
 1 2 3 4 5 org/openide/util/WeakListeners document \(Ljavax/swing/event/DocumentListener;Ljava/lang/Object;)Ljavax/swing/event/DocumentListener; 7 8 9 : ; javax/swing/text/StyledDocument addDocumentListener '(Ljavax/swing/event/DocumentListener;)V
  = > ? convert (IZ)I
 A B C D E java/lang/ref/Reference get ()Ljava/lang/Object;
 G H I J K 'org/openide/text/CloneableEditorSupport getDocument #()Ljavax/swing/text/StyledDocument; M N O P  javax/swing/event/DocumentEvent 	getOffset
  R S T findLineNumber %(Ljavax/swing/text/StyledDocument;I)I
  V W X deleteLines (II)V
 G Z [ \ 
getLineSet ()Lorg/openide/text/Line$Set; ^ !org/openide/text/DocumentLine$Set
 ] ` a b linesChanged &(IILjavax/swing/event/DocumentEvent;)V
 ] d e X 
linesMoved
  g h X insertLines j "javax/swing/event/DocumentListener 	Signature 5Ljava/lang/ref/Reference<Ljavax/swing/text/Element;>; M(Ljavax/swing/text/StyledDocument;Lorg/openide/text/CloneableEditorSupport;)V Code LineNumberTable LocalVariableTable this Lorg/openide/text/LineListener; doc !Ljavax/swing/text/StyledDocument; root Ljavax/swing/text/Element; MethodParameters getOriginalLineCount getLine (I)I i getOld removeUpdate $(Ljavax/swing/event/DocumentEvent;)V p0 !Ljavax/swing/event/DocumentEvent; elem delta 
lineNumber set Lorg/openide/text/Line$Set; StackMapTable � org/openide/text/Line$Set changedUpdate insertUpdate 
SourceFile LineListener.java InnerClasses � org/openide/text/Line Set � org/openide/text/DocumentLine 0    i   "     * +  k    l             . /      m  n   �     @*� *� Y� 	� 
+� N**-�  Z� �  *� #Y-� %� (*,� ,+*+� 0� 6 �    o   "    1  2  3  4 # 5 / 6 4 8 ? 9 p   *    @ q r     @ s t    @ . /   , u v  w   	 s   .    x   n   /     *�  �    o       = p        q r    y z  n   >     
*� 
� <�    o       B p       
 q r     
 {   w    {    | z  n   >     
*� 
� <�    o       G p       
 q r     
 {   w    {    } ~  n  g     �*� (� @� M,�  >*� d6*� *� ,� F:� �+� L � Q6� *� 
� U*� ,� �*� ,� Y:� ]� �� ]`+� _� � ]� c�    o   N    K  L  M  N  P ( Q - R . T ; V @ W K Z R [ S ^ \ ` d a e e u g z i � k p   R    � q r     �  �   { u v   t �    l �   ( ^ s t  ; K �   \ * � �  �   # � .   M  7  � �  � w        � ~  n   5      �    o       n p        q r       �  w        � ~  n  d     �*� (� @� M,�  >*� d6*� *� ,� F:� �+� L � Q6� *� 
� f*� ,� �*� ,� Y:� ]� �� ]+� _� � ]� c�    o   N    q  r  t  u  w ( x - y . { ; } @ ~ K � R � S � \ � d � e � r � w � � � p   R    � q r     �  �   x u v   q �    i �   ( [ s t  ; H �   \ ' � �  �   # � .   M  7  � �  � w        �    � �     � � �	 ] � �	