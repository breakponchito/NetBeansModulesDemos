����   4 3  org/openide/loaders/DataObject	      %org/openide/loaders/MultiDataObject$2 this$0 %Lorg/openide/loaders/MultiDataObject;
 
     java/lang/Object <init> ()V
      #org/openide/loaders/MultiDataObject 
access$300 G(Lorg/openide/loaders/MultiDataObject;)Lorg/openide/loaders/FolderList;
      org/openide/loaders/FolderList waitProcessingFinished  files
     
access$400 ^(Lorg/openide/loaders/MultiDataObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V ! java/lang/Runnable ((Lorg/openide/loaders/MultiDataObject;)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/loaders/MultiDataObject$2; MethodParameters run l  Lorg/openide/loaders/FolderList; StackMapTable 
SourceFile MultiDataObject.java EnclosingMethod 1  firePropFilesAfterFinishing InnerClasses    
             "  #   >     
*+� *� 	�    $      = %       
 & '     
    (    �  )   #   n     *� � L+� +� *� � �    $      ? @ A C D %        & '     * +  ,    �    -    . /     0 2   
        