����   4 s	      2org/openide/text/CloneableEditorSupport$Listener$1 this$1 2Lorg/openide/text/CloneableEditorSupport$Listener;	   	 
 val$time Ljava/util/Date;
      java/lang/Object <init> ()V	     inRunAtomic Z	      0org/openide/text/CloneableEditorSupport$Listener this$0 )Lorg/openide/text/CloneableEditorSupport;
       'org/openide/text/CloneableEditorSupport getDoc #()Ljavax/swing/text/StyledDocument;
  " # $ getOpenedPanes ()[Ljavax/swing/JEditorPane;	  & ' ( openedPanes [Ljavax/swing/JEditorPane;
  * + , 
access$602 -(Lorg/openide/text/CloneableEditorSupport;Z)Z
 . / 0 1 2 org/openide/text/NbDocument 	runAtomic 8(Ljavax/swing/text/StyledDocument;Ljava/lang/Runnable;)V
  4 5 6 
isModified ()Z	  8 9 : ERR Ljava/util/logging/Logger; < java/lang/StringBuilder
 ; 
  ? @ A 
documentID ()Ljava/lang/String;
 ; C D E append -(Ljava/lang/String;)Ljava/lang/StringBuilder; G : checkReload noAsk: 
 ; I D J (Z)Ljava/lang/StringBuilder;
 ; L M A toString
 O P Q R S java/util/logging/Logger fine (Ljava/lang/String;)V
  U V W 
access$700 G(Lorg/openide/text/CloneableEditorSupport;[Ljavax/swing/JEditorPane;Z)V Y java/lang/Runnable E(Lorg/openide/text/CloneableEditorSupport$Listener;Ljava/util/Date;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/text/CloneableEditorSupport$Listener$1; MethodParameters 	Signature run sd !Ljavax/swing/text/StyledDocument; noAsk StackMapTable h javax/swing/text/StyledDocument j java/lang/Throwable 
SourceFile CloneableEditorSupport.java EnclosingMethod o p propertyChange #(Ljava/beans/PropertyChangeEvent;)V InnerClasses Listener      X        ' (   	 
           Z  [   C     *+� *,� *� �    \      � ]        ^ _         `   	 � 	 a      b   [  J     �*� � V*� *� � � L+� �**� � � !� %*� � � )W+*� -*� � � )W� M*� � � )W,��*� � *� � � 3� � <� 7� ;Y� =*� � � >� BF� B� H� K� N*� � *� %� T�  6 ; J    \   F   � � � � � � *� 6� ;� G� J� W� Y� Z� t� �� �� ]       C c d    � ^ _   t 6 e   f    �  gm i�  @  k    l m     n q       r        