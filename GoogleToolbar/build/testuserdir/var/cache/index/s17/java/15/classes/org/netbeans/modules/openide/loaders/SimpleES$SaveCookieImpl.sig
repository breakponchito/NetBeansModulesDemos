����   4 =	      <org/netbeans/modules/openide/loaders/SimpleES$SaveCookieImpl this$0 /Lorg/netbeans/modules/openide/loaders/SimpleES;
  	 
   java/lang/Object <init> ()V
      -org/netbeans/modules/openide/loaders/SimpleES saveDocument
     getDataObject "()Lorg/openide/loaders/DataObject;
      org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject;
      ! "org/openide/filesystems/FileObject 
getNameExt ()Ljava/lang/String;
  # $ % 
access$000 3(Lorg/netbeans/modules/openide/loaders/SimpleES;Z)V ' org/openide/cookies/SaveCookie ) -org/netbeans/modules/openide/loaders/Unmodify 2(Lorg/netbeans/modules/openide/loaders/SimpleES;)V Code LineNumberTable LocalVariableTable this >Lorg/netbeans/modules/openide/loaders/SimpleES$SaveCookieImpl; MethodParameters save 
Exceptions 4 java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; toString unmodify 
SourceFile SimpleES.java InnerClasses SaveCookieImpl      & (         *  +   8     
*+� *� �    ,   
    � 	 � -       
 . /   0      1   +   6     *� � �    ,   
    �  � -        . /   2     3 5     6    7 !  +   8     *� � � � �    ,       � -        . /   5     6    8   +   7     	*� � "�    ,   
    �  � -       	 . /   5     6    9    : ;   
    < 