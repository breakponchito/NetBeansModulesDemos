����   4 [	      &org/openide/loaders/DataFolder$Paste$3 this$1 &Lorg/openide/loaders/DataFolder$Paste;
  	 
   4org/openide/loaders/DataTransferSupport$PasteTypeExt <init> ()V  PT_instantiate
      org/openide/loaders/DataObject 	getString &(Ljava/lang/String;)Ljava/lang/String;  org/openide/util/HelpCtx  java/lang/StringBuilder
  	  $org/openide/loaders/DataFolder$Paste
      ! java/lang/Class getName ()Ljava/lang/String;
  # $ % append -(Ljava/lang/String;)Ljava/lang/StringBuilder; ' .instantiate
  ) * ! toString
  ,  - (Ljava/lang/String;)V
  / 0 1 
isTemplate ()Z	  3 4 5 this$0  Lorg/openide/loaders/DataFolder;
  7 8 9 createFromTemplate B(Lorg/openide/loaders/DataFolder;)Lorg/openide/loaders/DataObject; )(Lorg/openide/loaders/DataFolder$Paste;)V Code LineNumberTable LocalVariableTable this (Lorg/openide/loaders/DataFolder$Paste$3; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
getHelpCtx ()Lorg/openide/util/HelpCtx; handleCanPaste #(Lorg/openide/loaders/DataObject;)Z obj  Lorg/openide/loaders/DataObject; handlePaste #(Lorg/openide/loaders/DataObject;)V 
Exceptions M java/io/IOException 
SourceFile DataFolder.java EnclosingMethod R S definePasteTypes :(I)[Lorg/openide/loaders/DataTransferSupport$PasteTypeExt; InnerClasses V org/openide/loaders/DataFolder Paste Y 'org/openide/loaders/DataTransferSupport PasteTypeExt                :  ;   >     
*+� *� �    <      � =       
 > ?     
    @    �    !  ;   0     � �    <      � =        > ?   A     B    C D  ;   I     � Y� Y� � � "&� "� (� +�    <      � =        > ?   A     B    E F  ;   9     +� .�    <      � =        > ?      G H  @    G    I J  ;   E     +*� � 2� 6W�    <   
   � � =        > ?      G H  K     L @    G    N    O P     Q T      U W          X Z