����   4 Y	      &org/openide/awt/HtmlBrowser$1URLSetter this$0 Lorg/openide/awt/HtmlBrowser;	   	 
 val$url Ljava/net/URL;
      java/lang/Object <init> ()V	     doReload Z
      javax/swing/SwingUtilities isEventDispatchThread ()Z  nbfs
     ! " java/net/URL getProtocol ()Ljava/lang/String;
 $ % & ' ( java/lang/String equals (Ljava/lang/Object;)Z
  * + " getHost	 - . / 0 1 org/openide/awt/HtmlBrowser browserImpl "Lorg/openide/awt/HtmlBrowser$Impl;
 3 4 5 6 7  org/openide/awt/HtmlBrowser$Impl getURL ()Ljava/net/URL;
  %
  : ; < invokeLater (Ljava/lang/Runnable;)V
 3 > ?  reloadDocument
 3 A B C setURL (Ljava/net/URL;)V E java/lang/Runnable .(Lorg/openide/awt/HtmlBrowser;Ljava/net/URL;)V Code LineNumberTable LocalVariableTable this (Lorg/openide/awt/HtmlBrowser$1URLSetter; MethodParameters 	Signature run 	sameHosts StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile HtmlBrowser.java EnclosingMethod InnerClasses 	URLSetter Impl      D       	 
           F  G   L     *+� *,� *� *� �    H   
   � � I        J K         L   	 � 	 M      N   G  *     �� � x<*� � � #� <� :*� � )� .*� � ,� 2� !*� � )*� � ,� 2� )� #� � <*� *� *� � ,� 2� 8� � � *� 9� %*� � *� � ,� =� *� � ,*� � @�    H   6   � � � � � 7� S� t� x� {� �� �� �� I      p O     � J K   P   " 	� 4@ \ �      � 	 Q     R    S    T U    - A V        W   3 - X	