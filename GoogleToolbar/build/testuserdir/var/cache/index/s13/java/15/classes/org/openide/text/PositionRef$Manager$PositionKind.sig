����   4 �  5org/openide/text/PositionRef$Manager$DocumentRenderer	      1org/openide/text/PositionRef$Manager$PositionKind pos Ljavax/swing/text/Position;
 
     )org/openide/text/PositionRef$Manager$Kind <init> )(Lorg/openide/text/PositionRef$Manager;)V      javax/swing/text/Position 	getOffset ()I
     /(ILorg/openide/text/PositionRef$Manager$Kind;)V
     renderToInt	     mgr &Lorg/openide/text/PositionRef$Manager;
   ! " # $ $org/openide/text/PositionRef$Manager 
access$300 I(Lorg/openide/text/PositionRef$Manager;)Ljavax/swing/text/StyledDocument;
  
 ' ( ) * + org/openide/text/NbDocument findLineNumber %(Ljavax/swing/text/StyledDocument;I)I
 ' - . + findLineColumn
  0 1  renderToIntIOE
  3 4  getLine
  6 7  	getColumn 9 java/io/IOException ; java/lang/StringBuilder
 : =  > ()V @ Illegal PositionKind: 
 : B C D append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 : F C G -(Ljava/lang/Object;)Ljava/lang/StringBuilder; I [offset=
 : K C L (I)Ljava/lang/StringBuilder; N ,line= P ,column= R ] in  T 	 used by 
   V W X 
access$400 Q(Lorg/openide/text/PositionRef$Manager;)Lorg/openide/text/CloneableEditorSupport; Z .
 : \ ] ^ toString ()Ljava/lang/String;
 8 `  a (Ljava/lang/String;)V c d e f g java/io/DataOutput writeInt (I)V i ,org/openide/text/PositionRef$Manager$OutKind
 h k  l \(Lorg/openide/text/PositionRef$Manager$PositionKind;Lorg/openide/text/PositionRef$Manager;)V n PositionKind(offset= p ) D(Ljavax/swing/text/Position;Lorg/openide/text/PositionRef$Manager;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/text/PositionRef$Manager$PositionKind; MethodParameters getLineLockAcquired getColumnLockAcquired write (Ljava/io/DataOutput;)V os Ljava/io/DataOutput; renderer 7Lorg/openide/text/PositionRef$Manager$DocumentRenderer; offset I line column StackMapTable 
Exceptions toMemory 6(Z)Lorg/openide/text/PositionRef$Manager$PositionKind; insertAfter Z #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; toMemoryLockAcquired isMemoryType ()Z fromMemoryLockAcquired -()Lorg/openide/text/PositionRef$Manager$Kind; 
access$200 P(Lorg/openide/text/PositionRef$Manager$PositionKind;)Ljavax/swing/text/Position; x0 
SourceFile PositionRef.java InnerClasses � org/openide/text/PositionRef Manager DocumentRenderer PositionKind Kind OutKind 0  
            q  r   Q     *,� 	*+� �    s        
 t         u v               w   	           r   4     
*� �  �    s       t       
 u v    4   r   7     � Y*� � �    s       t        u v     x   r   9     *� � *� %� &�    s      " t        u v    7   r   7     � Y*� � �    s      ' t        u v     y   r   9     *� � *� %� ,�    s      + t        u v    z {  r  A     �� Y*� M,� />,� 26,� 56� � � a� 8Y� :Y� <?� A*� � EH� A� JM� A� JO� A� JQ� A*� � � ES� A*� � U� EY� A� [� _�+� b +� b +� b �    s   .   0 
2 3 4 6 )7 f; �@ �A �B �C t   >    � u v     � | }  
 � ~    � � �   � � �   � � �  �    � )   c   � ] �     8 w    |    � �  r   6     *�    s      H t        u v      � �  w    �   �     �    � �  r   6     *�    s      M t        u v      � �  w    �   �     �    � �  r   ,     �    s      R t        u v   �     �    � �  r   7     � hY**� � j�    s      X t        u v   �     �    ] ^  r   p     ,� :Y� <m� A*� � *� �  � � Jo� A� [�    s      ] t       , u v   �    _ :�      : �     �   � �  r   /     *� �    s       t        � v    �    � �   *    � �     �     �  
   �
 h   � 