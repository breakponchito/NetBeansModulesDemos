����   4'	      org/openide/text/PositionRef LOG Ljava/util/logging/Logger;	   	 
 insertAfter Z	     kind +Lorg/openide/text/PositionRef$Manager$Kind;  /org/openide/text/PositionRef$Manager$OffsetKind
     <init> *(ILorg/openide/text/PositionRef$Manager;)V
     t(Lorg/openide/text/PositionRef$Manager;Lorg/openide/text/PositionRef$Manager$Kind;Ljavax/swing/text/Position$Bias;)V  -org/openide/text/PositionRef$Manager$LineKind
     +(IILorg/openide/text/PositionRef$Manager;)V
      ! java/lang/Object ()V	  # $ % manager &Lorg/openide/text/PositionRef$Manager;	 ' ( ) * + javax/swing/text/Position$Bias Backward  Ljavax/swing/text/Position$Bias; - new
  / 0 1 init @(Lorg/openide/text/PositionRef$Manager$Kind;Ljava/lang/String;)V	 3 4 5 6 7 java/util/logging/Level FINE Ljava/util/logging/Level;
 9 : ; < = java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z ? java/lang/StringBuilder
 > 
 > B C D append -(Ljava/lang/String;)Ljava/lang/StringBuilder; F  PositionRef@
 H I J K L java/lang/System identityHashCode (Ljava/lang/Object;)I
 > N C O (I)Ljava/lang/StringBuilder; Q 	(manager= S , kind=
 > U C V -(Ljava/lang/Object;)Ljava/lang/StringBuilder; X , backwardBias=
 > Z C [ (Z)Ljava/lang/StringBuilder; ] )

 > _ ` a toString ()Ljava/lang/String;
 9 c d e fine (Ljava/lang/String;)V	 3 g h 7 FINEST j PositionRef l java/lang/Throwable
 k 
 9 o p q log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 s t u v w $org/openide/text/PositionRef$Manager addPosition !(Lorg/openide/text/PositionRef;)V y PositionRef@ { : Setting kind from  } 	 to kind=
 >  C � (C)Ljava/lang/StringBuilder;
 � � � � � java/io/ObjectOutputStream writeBoolean (Z)V
 � � � � writeObject (Ljava/lang/Object;)V
 � � � � � )org/openide/text/PositionRef$Manager$Kind write (Ljava/io/DataOutput;)V
 � � � � � java/io/ObjectInputStream readBoolean ()Z
 � � � � 
readObject ()Ljava/lang/Object;
 s � � � readKind @(Ljava/io/DataInput;)Lorg/openide/text/PositionRef$Manager$Kind; � Deserialized
 s � � � getCloneableEditorSupport +()Lorg/openide/text/CloneableEditorSupport;	 ' � � + Forward
 � � � � � 'org/openide/text/CloneableEditorSupport getDocument #()Ljavax/swing/text/StyledDocument;
 � � � � openDocument
 s � � � 
access$000 ()Ljava/lang/ThreadLocal;
 � � � � � java/lang/ThreadLocal get
 � � � � set
 s � � � 
access$100 :(Lorg/openide/text/PositionRef$Manager;)Ljava/lang/Object;
 � � � � toMemory 6(Z)Lorg/openide/text/PositionRef$Manager$PositionKind;
 � � � � � 1org/openide/text/PositionRef$Manager$PositionKind 
access$200 P(Lorg/openide/text/PositionRef$Manager$PositionKind;)Ljavax/swing/text/Position;
 � � � � 	getOffset ()I
 � � � � getLine
 � � � � 	getColumn � Pos[
  � � ], kind=
 � � � � a java/lang/Class getName
 9 � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; � java/io/Serializable � javax/swing/text/Position serialVersionUID J ConstantValue��^�V�'| J(Lorg/openide/text/PositionRef$Manager;ILjavax/swing/text/Position$Bias;)V Code LineNumberTable LocalVariableTable this Lorg/openide/text/PositionRef; offset I bias MethodParameters K(Lorg/openide/text/PositionRef$Manager;IILjavax/swing/text/Position$Bias;)V line column StackMapTable initialKind 	originMsg Ljava/lang/String; setKind .(Lorg/openide/text/PositionRef$Manager$Kind;)V (Ljava/io/ObjectOutputStream;)V out Ljava/io/ObjectOutputStream; 
Exceptions java/io/IOException (Ljava/io/ObjectInputStream;)V in Ljava/io/ObjectInputStream;	  java/lang/ClassNotFoundException getPositionBias "()Ljavax/swing/text/Position$Bias; getPosition ()Ljavax/swing/text/Position; p 3Lorg/openide/text/PositionRef$Manager$PositionKind; doc !Ljavax/swing/text/StyledDocument; old Ljava/lang/Object; javax/swing/text/StyledDocument 
access$600 K(Lorg/openide/text/PositionRef;)Lorg/openide/text/PositionRef$Manager$Kind; x0 
access$700 !(Lorg/openide/text/PositionRef;)Z 
access$800 ()Ljava/util/logging/Logger; <clinit> 
SourceFile PositionRef.java InnerClasses Manager Kind 
OffsetKind Bias LineKind PositionKind 1    � �   � �  �    �      �      $ %    	 
       �  �   \     *+� Y+� -� �    �   
    D  E �   *     � �      $ %     � �     � +  �    $   �   �      �  �   h     *+� Y+� � �    �   
    O  P �   4     � �      $ %     � �     � �     � +  �    $   �   �   �       �   �     !*� *+� "*-� &� � � *,,� .�    �       W  X 	 Y  Z   [ �   *    ! � �     ! $ %    !      ! � +  �   / �    s � '  �     s � '   �    $      �    0 1  �   �     �*+� � � 2� 8� ~� � >Y� @,� AE� A*� G� MP� A*� "� G� MR� A*� � TW� A*� � Y\� A� ^� b� � f� 8� &� � 2� >Y� @,� Ai� A� ^� kY� m� n*� "*� r�    �   & 	   _  `  a 4 b Z a ] d i e � i � j �        � � �     � �     � � �  �    � � �   	 �   �     � �  �   �     H� � 2� 8� 9� � >Y� @x� A*� G� Mz� A*� � T|� A+� T
� ~� ^� b*+� �    �       m  n B q G r �       H � �     H    �    � B �        � �  �   Y     +*� � �+*� "� �*� +� ��    �       v  w  x  y �        � �            �        �  �   b     "*+� �� *+� �� s� "**� "+� ��� .�    �       }  ~   ! � �       " � �     "      �       � �  �   2     *� "� ��    �       � �        � �   
  �   H     *� � 	� &� � ��    �       � �        � �   �    B '   �  4     e*� "� �� �L+� *� "� �� �L� �� �M� �+� �*� "� �YN�*� *� � �:� �:-ø �,� ��:-��:� �,� ��  2 H R   R V R   ! H Y   R [ Y    �   6    �  �  �  � ! � ( � 2 � ? � H � O � R � Y � b � �   *  ?     e � �    Z  ! D  �   1 � � 7      k�      k      � �  �   2     *� � ˬ    �       � �        � �    � �  �   2     *� � Ϭ    �       � �        � �        � �  �   2     *� � Ҭ    �       � �        � �        ` a  �   M     #� >Y� @ն A*� ׶ Mض A*� � T� ^�    �       � �       # � �    �   /     *� �    �       . �        �    �   /     *� �    �       . �        �    �         � �    �       .  !  �   $      � ڸ ߳ �    �       2        2  s !  � s"
  s#  ' �$   s%  � s& 