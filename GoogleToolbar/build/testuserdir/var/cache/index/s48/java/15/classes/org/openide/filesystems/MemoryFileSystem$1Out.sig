����   4 A	      -org/openide/filesystems/MemoryFileSystem$1Out this$0 *Lorg/openide/filesystems/MemoryFileSystem;	   	 
 val$name Ljava/lang/String;
      java/io/ByteArrayOutputStream <init> ()V
     close
      (org/openide/filesystems/MemoryFileSystem 
access$000 n(Lorg/openide/filesystems/MemoryFileSystem;Ljava/lang/String;)Lorg/openide/filesystems/MemoryFileSystem$Entry;
     toByteArray ()[B	    ! " # .org/openide/filesystems/MemoryFileSystem$Entry data [B % java/util/Date
 $ 	  ( ) * last Ljava/util/Date; ?(Lorg/openide/filesystems/MemoryFileSystem;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this /Lorg/openide/filesystems/MemoryFileSystem$1Out; MethodParameters 	Signature 
Exceptions 5 java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile MemoryFileSystem.java EnclosingMethod < = outputStream *(Ljava/lang/String;)Ljava/io/OutputStream; InnerClasses Out Entry        	 
           +  ,   C     *+� *,� *� �    -       .        / 0         1   	 � 	 2         ,   b     ,*� *� *� � *� � *� *� � � $Y� &� '�    -         + .       , / 0   3     4 6     7    8    9 :     ; >        ?     @ 