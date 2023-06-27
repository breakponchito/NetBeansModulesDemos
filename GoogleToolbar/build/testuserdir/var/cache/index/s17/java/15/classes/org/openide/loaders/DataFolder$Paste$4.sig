����   4 o	      &org/openide/loaders/DataFolder$Paste$4 this$1 &Lorg/openide/loaders/DataFolder$Paste;
  	 
   4org/openide/loaders/DataTransferSupport$PasteTypeExt <init> ()V  	PT_shadow
      org/openide/loaders/DataObject 	getString &(Ljava/lang/String;)Ljava/lang/String;  org/openide/util/HelpCtx  java/lang/StringBuilder
  	  $org/openide/loaders/DataFolder$Paste
      ! java/lang/Class getName ()Ljava/lang/String;
  # $ % append -(Ljava/lang/String;)Ljava/lang/StringBuilder; ' .shadow
  ) * ! toString
  ,  - (Ljava/lang/String;)V	  / 0 1 this$0  Lorg/openide/loaders/DataFolder;
 3 4 5 6 7 org/openide/loaders/DataFolder getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 9 : ; < = "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem;
 ? @ A B C "org/openide/filesystems/FileSystem 	isDefault ()Z E 1org/openide/filesystems/FileStateInvalidException
  G H C isShadowAllowed
  J K L createShadow B(Lorg/openide/loaders/DataFolder;)Lorg/openide/loaders/DataShadow; )(Lorg/openide/loaders/DataFolder$Paste;)V Code LineNumberTable LocalVariableTable this (Lorg/openide/loaders/DataFolder$Paste$4; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
getHelpCtx ()Lorg/openide/util/HelpCtx; handleCanPaste #(Lorg/openide/loaders/DataObject;)Z ex 3Lorg/openide/filesystems/FileStateInvalidException; obj  Lorg/openide/loaders/DataObject; StackMapTable handlePaste #(Lorg/openide/loaders/DataObject;)V 
Exceptions c java/io/IOException 
SourceFile DataFolder.java EnclosingMethod h i definePasteTypes :(I)[Lorg/openide/loaders/DataTransferSupport$PasteTypeExt; InnerClasses Paste m 'org/openide/loaders/DataTransferSupport PasteTypeExt                M  N   >     
*+� *� �    O      � P       
 Q R     
    S    �    !  N   0     � �    O      � P        Q R   T     U    V W  N   I     � Y� Y� � � "&� "� (� +�    O      � P        Q R   T     U    X Y  N   �      *� � .� 2� 8� >� �� M�+� F�      D  O      � � � � � � P        Z [      Q R       \ ]  ^    B D S    \    _ `  N   E     +*� � .� IW�    O   
   � � P        Q R      \ ]  a     b S    \    d    e f     g j      3 k          l n