����   4 \
      'org/openide/awt/StatusDisplayer$Trivial <init> ()V
   	 org/openide/awt/StatusDisplayer  org/openide/util/ChangeSupport
 
    (Ljava/lang/Object;)V	     cs  Lorg/openide/util/ChangeSupport;   	     text Ljava/lang/String;
      java/lang/String equals (Ljava/lang/Object;)Z
    ! " length ()I	 $ % & ' ( java/lang/System err Ljava/io/PrintStream; * java/lang/StringBuilder
 )  - (
 ) / 0 1 append -(Ljava/lang/String;)Ljava/lang/StringBuilder; 3 )
 ) 5 6 7 toString ()Ljava/lang/String;
 9 : ; < = java/io/PrintStream println (Ljava/lang/String;)V
 
 ? @  
fireChange
 
 B C D addChangeListener %(Ljavax/swing/event/ChangeListener;)V
 
 F G D removeChangeListener Code LineNumberTable LocalVariableTable this )Lorg/openide/awt/StatusDisplayer$Trivial; getStatusText setStatusText StackMapTable MethodParameters l "Ljavax/swing/event/ChangeListener; &(Lorg/openide/awt/StatusDisplayer$1;)V x0 #Lorg/openide/awt/StatusDisplayer$1; 
SourceFile StatusDisplayer.java InnerClasses Trivial [ !org/openide/awt/StatusDisplayer$1 0                     H   I     *� *� 
Y*� � *� �    I       �  �  � J        K L   ! M 7  H   /     *� �    I       � J        K L   ! N =  H   �     >+*� � � �*+� +� � !� #� )Y� +,� .+� .2� .� 4� 8*� � >�    I       �  �  �  �  � 6 � = � J       > K L     >    O    ) P        C D  H   A     	*� +� A�    I   
    �  � J       	 K L     	 Q R  P    Q    G D  H   A     	*� +� E�    I   
    �  � J       	 K L     	 Q R  P    Q     S  H   9     *� �    I       � J        K L      T U   V    W X       Y  Z      