����   4 �
      java/lang/Object <init> ()V	  	 
   *org/openide/filesystems/XMLFileSystem$Impl fs 'Lorg/openide/filesystems/XMLFileSystem;
      %org/openide/filesystems/XMLFileSystem findResource 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;  java/lang/String  &org/openide/filesystems/AbstractFolder
     getChildrenArray ()[Ljava/lang/String;  java/io/IOException
  
     ! 
access$200 K(Lorg/openide/filesystems/XMLFileSystem;Ljava/lang/String;)Ljava/util/Date;
  # $ % 
access$300 <(Lorg/openide/filesystems/XMLFileSystem;Ljava/lang/String;)Z
  ' ( ) 
access$400 <(Lorg/openide/filesystems/XMLFileSystem;Ljava/lang/String;)J
  + , - 
access$500 P(Lorg/openide/filesystems/XMLFileSystem;Ljava/lang/String;)Ljava/io/InputStream; / java/io/FileNotFoundException
 . 1  2 (Ljava/lang/String;)V 4 #org/openide/filesystems/FSException 6 EXC_CannotLock
 8 9 : ; < org/openide/util/NbBundle 
getMessage m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
 3 1
  ? @ A findReference -(Ljava/lang/String;)Ljava/lang/ref/Reference; C 0org/openide/filesystems/XMLFileSystem$FileObjRef
  E F G length ()I
  I J K 
access$600 [(Lorg/openide/filesystems/XMLFileSystem;)Lorg/openide/filesystems/XMLFileSystem$FileObjRef;
 B M N O readAttribute &(Ljava/lang/String;)Ljava/lang/Object;
 Q R S T U org/openide/util/Enumerations empty ()Ljava/util/Enumeration;
 B W X U 
attributes Z /org/openide/filesystems/AbstractFileSystem$List \ /org/openide/filesystems/AbstractFileSystem$Info ^ 1org/openide/filesystems/AbstractFileSystem$Change ` /org/openide/filesystems/AbstractFileSystem$Attr serialVersionUID J ConstantValue�#��<� *(Lorg/openide/filesystems/XMLFileSystem;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/filesystems/XMLFileSystem$Impl; MethodParameters children '(Ljava/lang/String;)[Ljava/lang/String; name Ljava/lang/String; fo2name $Lorg/openide/filesystems/FileObject; StackMapTable u "org/openide/filesystems/FileObject w java/lang/Throwable createFolder 
Exceptions 
createData rename '(Ljava/lang/String;Ljava/lang/String;)V oldName newName delete lastModified $(Ljava/lang/String;)Ljava/util/Date; folder (Ljava/lang/String;)Z readOnly mimeType &(Ljava/lang/String;)Ljava/lang/String; size (Ljava/lang/String;)J inputStream )(Ljava/lang/String;)Ljava/io/InputStream; is Ljava/io/InputStream; � java/io/InputStream outputStream *(Ljava/lang/String;)Ljava/io/OutputStream; lock unlock markUnimportant 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; attrName ref 2Lorg/openide/filesystems/XMLFileSystem$FileObjRef; writeAttribute 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V value Ljava/lang/Object; +(Ljava/lang/String;)Ljava/util/Enumeration; LocalVariableTypeTable YLorg/openide/filesystems/XMLFileSystem$FileObjRef<+Lorg/openide/filesystems/FileObject;>; 	Signature ?(Ljava/lang/String;)Ljava/util/Enumeration<Ljava/lang/String;>; renameAttributes deleteAttributes 
SourceFile XMLFileSystem.java InnerClasses Impl 
FileObjRef � *org/openide/filesystems/AbstractFileSystem List Info Change Attr !    Y [ ] _   a b  c    d         f  g   F     
*� *+� �    h      � � 	� i       
 j k     
    l        m n  g   �     '*� +� YM� � �,YN�,� � -ð:-��          $      h      � � � �  � i        ' j k     ' o p  
  q r  s    �  t�     t   v l    o    x 2  g   <     � Y� �    h      � i        j k      o p  y      l    o    z 2  g   <     � Y� �    h      � i        j k      o p  y      l    o    { |  g   F     � Y� �    h      � i         j k      } p     ~ p  y      l   	 }   ~     2  g   <     � Y� �    h      � i        j k      o p  y      l    o    � �  g   =     	*� +� �    h      � i       	 j k     	 o p  l    o    � �  g   =     	*� +� "�    h      � i       	 j k     	 o p  l    o    � �  g   6     �    h      � i        j k      o p  l    o    � �  g   6     �    h      � i        j k      o p  l    o    � �  g   [     *� +� "� 	�*� +� &�    h      � � � i        j k      o p  s     l    o    � �  g   p     *� +� *M,� � .Y+� 0�,�    h      � 	� � � i         j k      o p  	  � �  s    �  � y     . l    o    � �  g   <     � Y� �    h      � i        j k      o p  y      l    o    � 2  g   F     � 3Y5+� 7� =�    h      � i        j k      o p  y      l    o    � 2  g   5      �    h        i        j k      o p  l    o    � 2  g   5      �    h       i        j k      o p  l    o    N �  g   �     5*� +� >� BN-� +� D� *� � H� *� � HN-� �-,� L�    h        !	 ) - / i   *    5 j k     5 o p    5 � p   ) � �  s   	 � ) B l   	 o   �    � �  g   P     � Y� �    h       i   *     j k      o p     � p     � �  y      l    o   �   �    X �  g   �     6*� +� >� BM,� +� D� *� � H� *� � HM,� � P�,� V�    h        ! ) -  1# i        6 j k     6 o p   * � �  �      * � �  s   	 � ) B l    o   �    �  � |  g   ?      �    h      ' i         j k      } p     ~ p  l   	 }   ~    � 2  g   5      �    h      * i        j k      o p  l    o    �    � �   2    � 	 B  � 
 Y � �	 [ � �	 ] � �	 _ � �	