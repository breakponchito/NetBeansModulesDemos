����   4 ;
      org/openide/filesystems/FileURL <init> (Ljava/net/URL;)V	  	 
   Aorg/openide/filesystems/MemoryFileSystem$Handler$MemoryConnection fo $Lorg/openide/filesystems/FileObject;	     url Ljava/net/URL;
      /org/openide/filesystems/MemoryFileSystem$Mapper find 4(Ljava/net/URL;)Lorg/openide/filesystems/FileObject;  java/io/FileNotFoundException
      java/net/URL toString ()Ljava/lang/String;
     ! (Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this CLorg/openide/filesystems/MemoryFileSystem$Handler$MemoryConnection; u MethodParameters connect ()V StackMapTable 
Exceptions . java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile MemoryFileSystem.java InnerClasses 5 0org/openide/filesystems/MemoryFileSystem$Handler 7 (org/openide/filesystems/MemoryFileSystem Handler MemoryConnection Mapper               "   >     *+� �    #   
   � � $        % &      '   (    '   ! ) *  "   m     )*� � **� � � *� � � Y*� � � ��    #      � � � � (� $       ) % &   +     ,     - /     0    1    2 3     4 6 8   4 9 
  6 : 