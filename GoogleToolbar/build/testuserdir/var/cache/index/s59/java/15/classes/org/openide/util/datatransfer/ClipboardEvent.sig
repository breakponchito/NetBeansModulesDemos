����   4 )
      java/util/EventObject <init> (Ljava/lang/Object;)V	  	 
   ,org/openide/util/datatransfer/ClipboardEvent consumed Z
     	getSource ()Ljava/lang/Object;  )org/openide/util/datatransfer/ExClipboard serialVersionUID J ConstantValue��a$֛ .(Lorg/openide/util/datatransfer/ExClipboard;)V Code LineNumberTable LocalVariableTable this .Lorg/openide/util/datatransfer/ClipboardEvent; c +Lorg/openide/util/datatransfer/ExClipboard; MethodParameters getClipboard -()Lorg/openide/util/datatransfer/ExClipboard; consume ()V 
isConsumed ()Z 
SourceFile ClipboardEvent.java 1                             G     *+� *� �           *  $ 
 +                            ! "     2     *� � �           1              # $     4     *� �       
    9  :              % &     /     *� �           @              '    (