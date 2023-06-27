����   4 W	      #org/openide/loaders/XMLDataObject$2 this$0 #Lorg/openide/loaders/XMLDataObject;
  	 
   java/lang/Object <init> ()V
      !org/openide/loaders/XMLDataObject getCookieSet ()Lorg/openide/nodes/CookieSet;   org/openide/cookies/EditorCookie
      org/openide/nodes/CookieSet 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;  "org/openide/text/DataEditorSupport
      saveAs 9(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)V
 " # $ % & java/lang/Class getName ()Ljava/lang/String;
 ( ) * + , java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 . / 0 1 2 java/util/logging/Level FINE Ljava/util/logging/Level; 4 $'Save As' requires DataEditorSupport
 ( 6 7 8 log .(Ljava/util/logging/Level;Ljava/lang/String;)V : !org/openide/loaders/SaveAsCapable &(Lorg/openide/loaders/XMLDataObject;)V Code LineNumberTable LocalVariableTable this %Lorg/openide/loaders/XMLDataObject$2; MethodParameters folder $Lorg/openide/filesystems/FileObject; fileName Ljava/lang/String; ec "Lorg/openide/cookies/EditorCookie; StackMapTable 
Exceptions K java/io/IOException 
SourceFile XMLDataObject.java EnclosingMethod P  registerEditor InnerClasses S org/openide/nodes/Node$Cookie U org/openide/nodes/Node Cookie      9          ;  <   >     
*+� *� �    =       � >       
 ? @     
    A    �      <   �     4*� � � � N-� � -� +,� � � !� '� -3� 5�    =       �  �  � # � 3 � >   *    4 ? @     4 B C    4 D E   $ F G  H   	 � #  I     J A   	 B   D    L    M N     O Q            R T V	