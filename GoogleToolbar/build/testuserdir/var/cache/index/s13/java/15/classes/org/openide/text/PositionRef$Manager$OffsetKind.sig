����   4 v  5org/openide/text/PositionRef$Manager$DocumentRenderer
      )org/openide/text/PositionRef$Manager$Kind <init> )(Lorg/openide/text/PositionRef$Manager;)V 
 #java/lang/IndexOutOfBoundsException  java/lang/StringBuilder
     ()V  Illegal OffsetKind[offset=
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
     (I)Ljava/lang/StringBuilder;  ] in 
       $org/openide/text/PositionRef$Manager 
access$300 I(Lorg/openide/text/PositionRef$Manager;)Ljavax/swing/text/StyledDocument;
  "  # -(Ljava/lang/Object;)Ljava/lang/StringBuilder; % 	 used by 
  ' ( ) 
access$400 Q(Lorg/openide/text/PositionRef$Manager;)Lorg/openide/text/CloneableEditorSupport; + .
  - . / toString ()Ljava/lang/String;
 	 1  2 (Ljava/lang/String;)V	 4 5 6 7 8 /org/openide/text/PositionRef$Manager$OffsetKind offset I	 4 : ; < mgr &Lorg/openide/text/PositionRef$Manager;
  > ? @ getCloneableEditorSupport +()Lorg/openide/text/CloneableEditorSupport;
 B C D E F 'org/openide/text/CloneableEditorSupport openDocument #()Ljavax/swing/text/StyledDocument;
  H  I 0(ILorg/openide/text/PositionRef$Manager$Kind;I)V
  K L M renderToIntIOE ()I O java/io/IOException
 N 1 R S T U V java/io/DataOutput writeInt (I)V X OffsetKind(offset= Z ) *(ILorg/openide/text/PositionRef$Manager;)V Code LineNumberTable LocalVariableTable this 1Lorg/openide/text/PositionRef$Manager$OffsetKind; StackMapTable MethodParameters 	getOffset getLine 
Exceptions 	getColumn write (Ljava/io/DataOutput;)V os Ljava/io/DataOutput; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile PositionRef.java InnerClasses q org/openide/text/PositionRef Manager DocumentRenderer Kind 
OffsetKind 0 4      7 8      [  \   �     G*,� � ;� 	Y� Y� � � � ,� � !$� ,� &� !*� � ,� 0�*� 3�    ]      � � 	� #� /� A� F� ^        G _ `     G 7 8    G ; <  a    � A  4    b   	 7   ;    c M  \   /     *� 3�    ]      � ^        _ `    d M  \   J     *� 9� =� AW� Y**� 3� G� J�    ]   
   � � ^        _ `   e     N  f M  \   J     *� 9� =� AW� Y**� 3� G� J�    ]   
   � � ^        _ `   e     N  g h  \   �     a*� 3� D� NY� Y� � *� 3� � *� 9� � !$� *� 9� &� !*� � ,� P�+*� 3� Q +� Q +� Q �    ]   "   � � '� 6� H� R� Y� `� ^       a _ `     a i j  a    � H e     N b    i    . /  \   F     � Y� W� *� 3� Y� � ,�    ]      � ^        _ `   k     l    m    n o   "   p r    s    t
 4  u 