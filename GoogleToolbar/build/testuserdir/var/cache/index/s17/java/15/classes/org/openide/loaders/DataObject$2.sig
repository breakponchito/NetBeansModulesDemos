����   4 2	       org/openide/loaders/DataObject$2 this$0  Lorg/openide/loaders/DataObject;	   	 
 
val$result ![Lorg/openide/loaders/DataObject;	     val$f  Lorg/openide/loaders/DataFolder;
      java/lang/Object <init> ()V
      org/openide/loaders/DataObject 
handleCopy B(Lorg/openide/loaders/DataFolder;)Lorg/openide/loaders/DataObject;  /org/openide/filesystems/FileSystem$AtomicAction d(Lorg/openide/loaders/DataObject;[Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataFolder;)V Code LineNumberTable LocalVariableTable this "Lorg/openide/loaders/DataObject$2; MethodParameters 	Signature run 
Exceptions ( java/io/IOException 
SourceFile DataObject.java EnclosingMethod -  copy InnerClasses 0 "org/openide/filesystems/FileSystem AtomicAction        	 
                    H     *+� *,� *-� *� �          �          ! "         #    � 	  $      %      @     *� *� *� � S�       
   � �          ! "   &     '  )    * +     , .             / 1	