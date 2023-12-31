����   4 L
      java/net/URLStreamHandler <init> ()V  Aorg/openide/filesystems/MemoryFileSystem$Handler$MemoryConnection
  
   (Ljava/net/URL;)V
      java/net/URL getHost ()Ljava/lang/String;
      java/lang/String toLowerCase
     hashCode ()I
     getFile
    ! " # java/util/Objects equals '(Ljava/lang/Object;Ljava/lang/Object;)Z % 0org/openide/filesystems/MemoryFileSystem$Handler PROTOCOL Ljava/lang/String; ConstantValue * memory Code LineNumberTable LocalVariableTable this 2Lorg/openide/filesystems/MemoryFileSystem$Handler; openConnection ((Ljava/net/URL;)Ljava/net/URLConnection; u Ljava/net/URL; 
Exceptions 6 java/io/IOException MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; (Ljava/net/URL;)I h I host file StackMapTable (Ljava/net/URL;Ljava/net/URL;)Z u1 u2 
SourceFile MemoryFileSystem.java /Lorg/openide/util/URLStreamHandlerRegistration; protocol InnerClasses I (org/openide/filesystems/MemoryFileSystem Handler MemoryConnection 1 $      & '  (    )      +   /     *� �    ,      � -        . /    0 1  +   =     	� Y+� 	�    ,      � -       	 . /     	 2 3  4     5 7    2   8     9     :  +   �     *=+� N-� -� � `=+� :� � `=�    ,   "   � � � � � �  � (� -   4    * . /     * 2 3   ( ; <   # = '    > '  ?    �  �   7    2   8     9    " @  +   w     "+� ,� � � +� ,� � � � �    ,      � � � !� -        " . /     " A 3    " B 3  ?     @ 7   	 A   B   8     9    C    D 8     E  F[ s * G     $ H J   $ K 
