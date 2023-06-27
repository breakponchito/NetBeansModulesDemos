����   4 L	       org/openide/loaders/DataObject$4 this$0  Lorg/openide/loaders/DataObject;
  	 
   java/lang/Object <init> ()V
      org/openide/loaders/DataObject handleDelete
     isCurrentActionTerminated ()Z
     isValid
      "org/openide/loaders/DataObjectPool getPOOL &()Lorg/openide/loaders/DataObjectPool;
    ! " item +()Lorg/openide/loaders/DataObjectPool$Item;	 $ % & ' ( 'org/openide/loaders/DataObjectPool$Item primaryFile $Lorg/openide/filesystems/FileObject;
  * + , countRegistration '(Lorg/openide/filesystems/FileObject;)V
 $ . / 0 
deregister (Z)V
 $ 2 3 4 setDataObject #(Lorg/openide/loaders/DataObject;)V 6 /org/openide/filesystems/FileSystem$AtomicAction Code LineNumberTable LocalVariableTable this "Lorg/openide/loaders/DataObject$4; MethodParameters run StackMapTable 
Exceptions A java/io/IOException 
SourceFile DataObject.java EnclosingMethod F  delete InnerClasses Item J "org/openide/filesystems/FileSystem AtomicAction      5          4  7   >     
*+� *� �    8      � 9       
 : ;     
    <    �  =   7   �     ?*� � � � *� � � �� *� � � #� )*� � � -*� � � 1�    8      � � � � (� 3� >� 9       ? : ;   >     ?     @  B    C D     E G            $  H  5 I K	