����   4 C	      )org/openide/filesystems/LocalFileSystem$1 this$0 )Lorg/openide/filesystems/LocalFileSystem;	   	 
 val$f Ljava/io/File;	     val$lModified J
      java/io/FilterOutputStream <init> (Ljava/io/OutputStream;)V
     close ()V
      java/io/File length ()J
    !  lastModified
 # $ % &  java/lang/System currentTimeMillis
  ( ) * setLastModified (J)Z Q(Lorg/openide/filesystems/LocalFileSystem;Ljava/io/OutputStream;Ljava/io/File;J)V Code LineNumberTable LocalVariableTable this +Lorg/openide/filesystems/LocalFileSystem$1; out Ljava/io/OutputStream; MethodParameters StackMapTable 
Exceptions 7 java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile LocalFileSystem.java EnclosingMethod > 'org/openide/filesystems/LocalFileSystem @ A getOutputStreamForMac42624 @(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream; InnerClasses        	 
               +  ,   T     *+� *-� *� *,� �    -      � .         / 0            1 2  3    � 1   	      ,   j     +*� *� � 	�� *� � *� �� *� � "� 'W�    -      � � � *� .       + / 0   4    * 5     6 8     9    :    ; <    = ? B   
        