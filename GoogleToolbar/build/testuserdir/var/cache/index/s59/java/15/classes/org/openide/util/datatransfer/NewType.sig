����   4 0
      java/lang/Object <init> ()V  %org/openide/util/datatransfer/NewType
 
     org/openide/util/NbBundle 	getBundle -(Ljava/lang/Class;)Ljava/util/ResourceBundle;  Create
      java/util/ResourceBundle 	getString &(Ljava/lang/String;)Ljava/lang/String;	      org/openide/util/HelpCtx DEFAULT_HELP Lorg/openide/util/HelpCtx;  !org/openide/util/HelpCtx$Provider Code LineNumberTable LocalVariableTable this 'Lorg/openide/util/datatransfer/NewType; getName ()Ljava/lang/String; 
getHelpCtx ()Lorg/openide/util/HelpCtx; create 
Exceptions + java/io/IOException 
SourceFile NewType.java InnerClasses Provider!               /     *� �             !        " #    $ %     5     � 	� �            & !        " #    & '     .     � �            - !        " #   (   )     *  ,    - .   
    /	