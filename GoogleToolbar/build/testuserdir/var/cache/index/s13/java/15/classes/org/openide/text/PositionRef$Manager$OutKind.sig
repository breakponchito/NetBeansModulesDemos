����   4 
      )org/openide/text/PositionRef$Manager$Kind <init> )(Lorg/openide/text/PositionRef$Manager;)V
  	 
   1org/openide/text/PositionRef$Manager$PositionKind 	getOffset ()I
     getLineLockAcquired
     getColumnLockAcquired  #java/lang/IndexOutOfBoundsException  java/lang/StringBuilder
     ()V  Illegal OutKind[offset=
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  !  " (I)Ljava/lang/StringBuilder; $ ,line= & ,column= ( ] in 
 * + , - . $org/openide/text/PositionRef$Manager 
access$300 I(Lorg/openide/text/PositionRef$Manager;)Ljavax/swing/text/StyledDocument;
  0  1 -(Ljava/lang/Object;)Ljava/lang/StringBuilder; 3 	 used by 
 * 5 6 7 
access$400 Q(Lorg/openide/text/PositionRef$Manager;)Lorg/openide/text/CloneableEditorSupport; 9 .
  ; < = toString ()Ljava/lang/String;
  ?  @ (Ljava/lang/String;)V	 B C D E F ,org/openide/text/PositionRef$Manager$OutKind offset I	 B H I F line	 B K L F column N java/io/IOException	 B P Q R mgr &Lorg/openide/text/PositionRef$Manager;
 M ? U V W X Y java/io/DataOutput writeInt (I)V [ OutKind(offset= ] [ _ : a ]) \(Lorg/openide/text/PositionRef$Manager$PositionKind;Lorg/openide/text/PositionRef$Manager;)V Code LineNumberTable LocalVariableTable this .Lorg/openide/text/PositionRef$Manager$OutKind; kind 3Lorg/openide/text/PositionRef$Manager$PositionKind; StackMapTable MethodParameters ,(IIILorg/openide/text/PositionRef$Manager;)V getLine 	getColumn write (Ljava/io/DataOutput;)V os Ljava/io/DataOutput; 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile PositionRef.java InnerClasses z org/openide/text/PositionRef Manager Kind PositionKind OutKind 0 B      E F    I F    L F       b  c  $     �*,� +� >+� 6+� 6� � � O� Y� Y� � �  #� �  %� �  '� ,� )� /2� ,� 4� /8� � :� >�*� A*� G*� J�    d   .   n q 
r s u $v Rz p u� {� �� e   >    � f g     � h i    � Q R  
 x E F   r I F   l L F  j    � $  B  *  � K k   	 h   Q      l  c   x     *� *� A*� G*� J�    d      � � � � � e   4     f g      E F     I F     L F     Q R  k    E   I   L   Q       c   /     *� A�    d      � e        f g    m   c   /     *� G�    d      � e        f g    n   c   /     *� J�    d      � e        f g    o p  c   �     �*� A� *� G� 
*� J� \� MY� Y� � *� A�  #� *� G�  %� *� J�  '� *� O� )� /2� *� O� 4� /8� � :� S�+*� A� T +*� G� T +*� J� T �    d      � � M� n� x� �� �� e       � f g     � q r  j    � X s     M k    q    < =  c   b     8� Y� Z� *� A�  \� *� G`�  ^� *� J`�  `� � :�    d      � e       8 f g   t     u    v    w x   "  * y {   * |
  * }  B * ~ 