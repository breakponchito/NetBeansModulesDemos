Êþº¾   4 ¥
      +org/openide/explorer/view/VisualizerNode$QP processQueue (I)V
  	 
   java/lang/Object <init> ()V  java/util/LinkedList
  		     queue Ljava/util/LinkedList;  1org/openide/explorer/view/VisualizerEvent$Removed  )org/openide/explorer/view/VisualizerEvent
     getSnapshot ()Ljava/util/List;      ! java/util/List getClass ()Ljava/lang/Class;
 # $ % & ' java/lang/Class getName ()Ljava/lang/String; ) DelayedLazySnapshot
 + , - . / java/lang/String contains (Ljava/lang/CharSequence;)Z
 1 2 3 4 5 javax/swing/SwingUtilities isEventDispatchThread ()Z
  7 8 9 shouldBeInvokedLater (Ljava/lang/Runnable;)Z
  ; < 5 isEmpty
  > ? @ addLast (Ljava/lang/Object;)V B 8org/openide/explorer/view/VisualizerNode$QP$ProcessQueue D java/lang/Integerÿÿÿ
 A G  H 1(Lorg/openide/explorer/view/VisualizerNode$QP;I)V
 1 J K L invokeLater (Ljava/lang/Runnable;)V
 N O P Q R java/lang/System currentTimeMillis ()J
  T U V poll ()Ljava/lang/Object; X java/lang/Runnable	 Z [ \ ] ^ (org/openide/explorer/view/VisualizerNode LOG Ljava/util/logging/Logger;	 ` a b c d java/util/logging/Level FINER Ljava/util/logging/Level; f  Marker found, interrupting queue
 h i j k l java/util/logging/Logger log .(Ljava/util/logging/Level;Ljava/lang/String;)V n Running from queue {0}
 h p k q @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V	 s t u v w org/openide/nodes/Children MUTEX Lorg/openide/util/Mutex;
 y z { | L org/openide/util/Mutex 
readAccess ~ Finished {0}  timeout from {0} ms
 C    valueOf (I)Ljava/lang/Integer;  Queue processing over 	Signature ,Ljava/util/LinkedList<Ljava/lang/Runnable;>; Code LineNumberTable LocalVariableTable this -Lorg/openide/explorer/view/VisualizerNode$QP; run Ljava/lang/Runnable; StackMapTable MethodParameters runSafe wasEmpty Z  java/lang/Throwable r limitMillis I until J 
access$000 x0 x1 
SourceFile VisualizerNode.java InnerClasses QP Removed ProcessQueue 0                        B     *· *» Y· µ ±          ] [ ^               8 9     k     $+Á  +À ¶ ¹  ¶ "(¶ * § ¬          a b #a        $       $        "@          L    '     |=*YNÂ¸ 0 5*+¶ 6 -*´ ¶ : *´ ¶ =*´ +¶ =» AY*E· F¸ I-Ã±*´ ¶ :=*´ +¶ =-Ã§ 
:-Ã¿  ¸ 0 *E· § » AY*ô· F¸ I±   = S   > P S   S W S       B   i k l m o &q .r ;s >v Fw Nx Zz ^~ d m {         |       |     z        ý & T ú                    ¸ MaA6 *Y:Â*´ ¶ SÀ W:Ç ² Y² _e¶ gÃ±*´ ¶ :6Ã§ :Ã¿² Y² _m¶ o² r¶ x² Y² _}¶ o¸ M  » AY*· F¸ I² Y² _¸ ¶ o±§ÿy² Y² _¶ g±   3 C   4 @ C   C H C       R     
     % 0 4 = K X ` m u         >    #    K F                        
  <      8 ý 
ý ) W ÿ       ÿ    W  ú E         H     :     *· ±          W                          ¡      Z ¢    £  A  ¤ 