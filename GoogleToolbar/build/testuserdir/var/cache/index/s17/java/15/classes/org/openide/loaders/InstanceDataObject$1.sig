����   4 R  &org/openide/loaders/InstanceDataObject	      (org/openide/loaders/InstanceDataObject$1 val$name Ljava/lang/String;	  
   val$fo $Lorg/openide/filesystems/FileObject;	     val$className	     val$fos %[Lorg/openide/filesystems/FileObject;
      java/lang/Object <init> ()V
      java/lang/String replace (CC)Ljava/lang/String; ! instance
 # $ % & '  org/openide/filesystems/FileUtil findFreeFileName \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ) * + escape &(Ljava/lang/String;)Ljava/lang/String;
 - . / 0 1 "org/openide/filesystems/FileObject 
createData J(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; 3 instanceClass
 - 5 6 7 setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V 9 /org/openide/filesystems/FileSystem$AtomicAction p(Ljava/lang/String;Lorg/openide/filesystems/FileObject;Ljava/lang/String;[Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this *Lorg/openide/loaders/InstanceDataObject$1; MethodParameters 	Signature run fileName StackMapTable 
Exceptions G java/io/IOException 
SourceFile InstanceDataObject.java EnclosingMethod L M create n(Lorg/openide/loaders/DataFolder;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/loaders/InstanceDataObject; InnerClasses P "org/openide/filesystems/FileSystem AtomicAction      8                      :  ;   D     *+� *,� 	*-� *� *� �    <       � =        > ?   @        A      B   ;   �     G*� � *� 	*� .-�  � "L� *� � (L*� *� 	+ � ,S*� 22*� � 4�    <   "    �  �  �  �  � ' � 7  F =        C     G > ?   '   C   D   	 �   E     F  H    I J     K N            8 O Q	