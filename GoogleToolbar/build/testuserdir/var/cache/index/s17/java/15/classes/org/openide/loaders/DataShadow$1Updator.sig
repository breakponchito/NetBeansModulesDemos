����   4 A
      java/lang/Object <init> ()V	  	 
   'org/openide/loaders/DataShadow$1Updator primary $Lorg/openide/filesystems/FileObject;
      org/openide/loaders/DataObject find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject;  /org/openide/loaders/DataObjectNotFoundException	     sh  Lorg/openide/loaders/DataShadow;
      org/openide/loaders/DataShadow 
access$200 C(Lorg/openide/loaders/DataShadow;Lorg/openide/loaders/DataObject;)V   "org/openide/loaders/OperationEvent
  " # $ 
access$300 B(Lorg/openide/loaders/DataShadow;)Lorg/openide/loaders/DataObject;
  &  ' #(Lorg/openide/loaders/DataObject;)V
  ) * + checkValidity (Ljava/util/EventObject;)V - java/lang/Runnable Code LineNumberTable LocalVariableTable this )Lorg/openide/loaders/DataShadow$1Updator; run newOrig  Lorg/openide/loaders/DataObject; e 1Lorg/openide/loaders/DataObjectNotFoundException; StackMapTable 
SourceFile DataShadow.java EnclosingMethod = > updateShadowOriginal #(Lorg/openide/loaders/DataShadow;)V InnerClasses Updator      ,                    .   /     *� �    /      � 0        1 2    3   .   �     9*� � L� ML+� *� +� � � Y*� � !� %� (*� *� �        /   * 
  � � � � � � � .� 3� 8� 0   *    4 5    6 7    9 1 2    + 4 5  8    K �    9    : ;     < ?   
     @  