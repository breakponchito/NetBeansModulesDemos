����   4 1
      java/lang/Object <init> ()V  'org/openide/util/datatransfer/PasteType
 
     org/openide/util/NbBundle 	getBundle -(Ljava/lang/Class;)Ljava/util/ResourceBundle;  Paste
      java/util/ResourceBundle 	getString &(Ljava/lang/String;)Ljava/lang/String;	      org/openide/util/HelpCtx DEFAULT_HELP Lorg/openide/util/HelpCtx;  !org/openide/util/HelpCtx$Provider Code LineNumberTable LocalVariableTable this )Lorg/openide/util/datatransfer/PasteType; getName ()Ljava/lang/String; 
getHelpCtx ()Lorg/openide/util/HelpCtx; paste &()Ljava/awt/datatransfer/Transferable; 
Exceptions , java/io/IOException 
SourceFile PasteType.java InnerClasses Provider!               /     *� �            " !        " #    $ %     5     � 	� �            ) !        " #    & '     .     � �            0 !        " #   ( )  *     +  -    . /   
    0	