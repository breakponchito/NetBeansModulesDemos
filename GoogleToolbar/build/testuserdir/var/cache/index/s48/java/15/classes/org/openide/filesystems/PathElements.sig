����   4 _
      java/lang/Object <init> ()V	  	 
   $org/openide/filesystems/PathElements name Ljava/lang/String;  java/util/StringTokenizer  /
     '(Ljava/lang/String;Ljava/lang/String;)V	     	tokenizer Ljava/util/StringTokenizer;  java/util/ArrayList
     (I)V	      tokens Ljava/util/List; " 4org/openide/filesystems/PathElements$EnumerationImpl
 ! $  % )(Lorg/openide/filesystems/PathElements;)V ' ( ) * + java/util/List size ()I
  - .  scanUpTo 0  java/util/NoSuchElementException
 /  ' 3 4 5 get (I)Ljava/lang/Object; 7 java/lang/String
  9 : ; hasMoreTokens ()Z
  = > ? 	nextToken ()Ljava/lang/String; ' A B C add (Ljava/lang/Object;)Z 	DELIMITER ConstantValue 	Signature $Ljava/util/List<Ljava/lang/String;>; (Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/filesystems/PathElements; MethodParameters getOriginalName getEnumeration ()Ljava/util/Enumeration; -()Ljava/util/Enumeration<Ljava/lang/String;>; contains (I)Z i I StackMapTable (I)Ljava/lang/String; 
Exceptions k 
SourceFile PathElements.java InnerClasses EnumerationImpl 0       D   E                    F    G    H  I   i     %*� *+� *� Y+� � *� Y
� � �    J       ,  - 	 .  / $ 0 K       % L M     %    N        O ?  I   /     *� �    J       6 K        L M    P Q  I   3     	� !Y*� #�    J       : K       	 L M   F    R   S T  I   m     %*� � & � *� ,*� � & � � �    J       >  ?  B K       % L M     % U V  W    @ N    U     4 X  I   �     5*� � & � *� ,*� � & � � /Y� 1�*� � 2 � 6�    J       F  G  J  K ' N K       5 L M     5 U V  W     Y     / N    U   " .   I   �     X*� � �*� � & � �*� � & d=� $*� � 8� *� *� � <� @ W����*� � 8� *� �    J   * 
   R  S  V  W  Z 1 [ B Z H ^ R _ W a K      " & Z V    X L M     X U V  W    � � % N    U    [    \ ]   
  !  ^ 