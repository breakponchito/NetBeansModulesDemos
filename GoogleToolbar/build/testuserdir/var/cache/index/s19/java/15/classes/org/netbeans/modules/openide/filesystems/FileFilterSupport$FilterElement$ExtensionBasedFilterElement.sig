����   4 n
      Horg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement <init> A(Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$1;)V	  	 
   dorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ExtensionBasedFilterElement 	extension Ljava/lang/String;  java/lang/NullPointerException
     ()V  java/lang/StringBuilder
    .
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
     toString ()Ljava/lang/String;
   ! " #  java/io/File getName
 % & ' (  java/lang/String toLowerCase
 % * + , endsWith (Ljava/lang/String;)Z	 . / 0 1 2 Yorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ComparisonResult 	DIFFERENT [Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ComparisonResult;
 % 4 5 6 equals (Ljava/lang/Object;)Z	 . 8 9 2 THE_SAME
 % ; < , equalsIgnoreCase
 % > ? @ length ()I
 % B C D charAt (I)C
 F G H I J java/lang/Character isUpperCase (C)Z	 . L M 2 BETTER	 . O P 2 WORSE (Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this fLorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ExtensionBasedFilterElement; StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; accept (Ljava/io/File;)Z f Ljava/io/File; compare �(Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;)Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ComparisonResult; e JLorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement; x 
SourceFile FileFilterSupport.java InnerClasses h :org/netbeans/modules/openide/filesystems/FileFilterSupport FilterElement k <org/netbeans/modules/openide/filesystems/FileFilterSupport$1 ExtensionBasedFilterElement ComparisonResult                Q  R   t     *� +� *+� � � Y� ��    S      9 : 	; = ? T        U V         W    �    %   X        #   R   A     � Y� � *� � � �    S      C T        U V   Y     Z    [ \  R   `     $+� � $� Y� � *� � $� � � )�    S      H I  H T       $ U V     $ ] ^  X    ]   Y     Z    _ `  R   �     a+� � � -�+� M,� � Y� �*� ,� � 3� � 7�*� ,� � :� $*� � =� ,� � A� E� � K�� N�� -�    S   6   N O Q R S U *V .W @X GY UZ Y\ ]_ T        a U V     a a b   Q c V  W    �  * X    a   Y     Z    d    e f   "   g i
 j         l 
 .  m@