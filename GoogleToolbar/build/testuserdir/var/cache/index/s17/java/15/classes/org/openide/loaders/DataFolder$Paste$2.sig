����   4 r	      &org/openide/loaders/DataFolder$Paste$2 this$1 &Lorg/openide/loaders/DataFolder$Paste;
  	 
   4org/openide/loaders/DataTransferSupport$PasteTypeExt <init> ()V  PT_copy
      org/openide/loaders/DataObject 	getString &(Ljava/lang/String;)Ljava/lang/String;  org/openide/util/HelpCtx  java/lang/StringBuilder
  	  $org/openide/loaders/DataFolder$Paste
      ! java/lang/Class getName ()Ljava/lang/String;
  # $ % append -(Ljava/lang/String;)Ljava/lang/StringBuilder; ' .copy
  ) * ! toString
  ,  - (Ljava/lang/String;)V
  / 0 1 isCopyAllowed ()Z
  3 4 5 saveIfModified #(Lorg/openide/loaders/DataObject;)V	  7 8 9 this$0  Lorg/openide/loaders/DataFolder;
  ; < = copy B(Lorg/openide/loaders/DataFolder;)Lorg/openide/loaders/DataObject;
  ? @ 1 
isModified B org/openide/cookies/SaveCookie
  D E F 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; A H I  save )(Lorg/openide/loaders/DataFolder$Paste;)V Code LineNumberTable LocalVariableTable this (Lorg/openide/loaders/DataFolder$Paste$2; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
getHelpCtx ()Lorg/openide/util/HelpCtx; handleCanPaste #(Lorg/openide/loaders/DataObject;)Z obj  Lorg/openide/loaders/DataObject; handlePaste 
Exceptions \ java/io/IOException sc  Lorg/openide/cookies/SaveCookie; StackMapTable 
SourceFile DataFolder.java EnclosingMethod d e definePasteTypes :(I)[Lorg/openide/loaders/DataTransferSupport$PasteTypeExt; InnerClasses h org/openide/loaders/DataFolder Paste k 'org/openide/loaders/DataTransferSupport PasteTypeExt n org/openide/nodes/Node$Cookie p org/openide/nodes/Node Cookie                J  K   >     
*+� *� �    L      � M       
 N O     
    P    �    !  K   0     � �    L      � M        N O   Q     R    S T  K   I     � Y� Y� � � "&� "� (� +�    L      � M        N O   Q     R    U V  K   9     +� .�    L      � M        N O      W X  P    W    Y 5  K   N     *+� 2+*� � 6� :W�    L      � � � M        N O      W X  Z     [ P    W    4 5  K   s     +� >� +A� C� AM,� 	,� G �    L      � � � � � M       
 ] ^     N O      W X  _     Z     [ P    W    `    a b     c f   "   g i          j l m o q	