����   4 Y	      "org/openide/loaders/DataObject$1Op this$0  Lorg/openide/loaders/DataObject;
  	 
   java/lang/Object <init> ()V
      org/openide/loaders/DataObject getName ()Ljava/lang/String;	     oldName Ljava/lang/String;	     newName
      java/lang/String equals (Ljava/lang/Object;)Z
  ! " # getPrimaryFile &()Lorg/openide/filesystems/FileObject;	  % & ' oldPf $Lorg/openide/filesystems/FileObject;
  ) * + handleRename 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;	  - . ' newPf
  0 1 2 item +()Lorg/openide/loaders/DataObjectPool$Item;
 4 5 6 7 8 'org/openide/loaders/DataObjectPool$Item changePrimaryFile O(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObjectPool$Item;
  : ; < 
access$400 L(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataObjectPool$Item;)V > /org/openide/filesystems/FileSystem$AtomicAction #(Lorg/openide/loaders/DataObject;)V Code LineNumberTable LocalVariableTable this $Lorg/openide/loaders/DataObject$1Op; MethodParameters run StackMapTable 
Exceptions J java/io/IOException 
SourceFile DataObject.java EnclosingMethod O P rename (Ljava/lang/String;)V InnerClasses Op T "org/openide/loaders/DataObjectPool Item W "org/openide/filesystems/FileSystem AtomicAction      =    & '     . '                       ?  @   >     
*+� *� �    A       B       
 C D     
    E    �  F   @   �     `**� � � *� *� � � �**� �  � $**� *� � (� ,*� $*� ,� *� *� � /*� ,� 3� 9**� � � �    A   "      % 4 ? T _  B       ` C D   G    9 H     I  K    L M     N Q        R   4 S U  = V X	