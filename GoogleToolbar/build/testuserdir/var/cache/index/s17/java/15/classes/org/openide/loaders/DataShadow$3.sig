����   4 U	       org/openide/loaders/DataShadow$3 val$f $Lorg/openide/filesystems/FileObject;
  	 
   java/lang/Object <init> ()V  java/io/BufferedReader  java/io/InputStreamReader
      "org/openide/filesystems/FileObject getInputStream ()Ljava/io/InputStream;	      !java/nio/charset/StandardCharsets UTF_8 Ljava/nio/charset/Charset;
     2(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
  !  " (Ljava/io/Reader;)V
  $ % & readLine ()Ljava/lang/String; ( java/lang/String
  * +  close
  - . / run ()[Ljava/lang/String; 1 &org/openide/util/Mutex$ExceptionAction '(Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this "Lorg/openide/loaders/DataShadow$3; MethodParameters 	Signature s Ljava/lang/String; fs ois Ljava/io/BufferedReader; StackMapTable A java/lang/Throwable 
Exceptions D java/io/IOException ()Ljava/lang/Object; G java/lang/Exception OLjava/lang/Object;Lorg/openide/util/Mutex$ExceptionAction<[Ljava/lang/String;>; 
SourceFile DataShadow.java EnclosingMethod M org/openide/loaders/DataShadow O P readOriginalFileAndFileSystem 9(Lorg/openide/filesystems/FileObject;)[Ljava/lang/String; InnerClasses S org/openide/util/Mutex ExceptionAction      0          2  3   4     
*+� *� �    4      � 5       
 6 7   8     9      . /  3   �     A� Y� Y*� � � � �  L+� #M+� #N� 'Y,SY-S:+� )�:+� )�   1 8   8 : 8    4   "   � � � #� 1� 5� 8� >� 5   *    : ;  #  < ;    A 6 7    ( = >  ?    � 8     @ B     CA . E  3   /     *� ,�    4      � 5        6 7   B     F  9    H I    J K    L N Q            0 R T	