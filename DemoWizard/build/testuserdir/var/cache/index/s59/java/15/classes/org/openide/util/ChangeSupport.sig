Ęţşž   4 
      java/lang/Object <init> ()V  )java/util/concurrent/CopyOnWriteArrayList
  	      org/openide/util/ChangeSupport 	listeners Ljava/util/List;	     source Ljava/lang/Object;	     LOG Ljava/util/logging/Logger;	      java/util/logging/Level FINE Ljava/util/logging/Level;
    ! " # java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z % & ' ( ) java/util/List contains (Ljava/lang/Object;)Z + diagnostics for #167491 - java/lang/IllegalStateException / java/lang/StringBuilder
 .  2 Added 
 . 4 5 6 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 . 8 5 9 -(Ljava/lang/Object;)Ljava/lang/StringBuilder; ; 	 multiply
 . = > ? toString ()Ljava/lang/String;
 , A  B (Ljava/lang/String;)V
  D E F log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V % H I ) add % K L ) remove % N O P isEmpty ()Z R javax/swing/event/ChangeEvent
 Q T  U (Ljava/lang/Object;)V
  W X Y 
fireChange "(Ljavax/swing/event/ChangeEvent;)V	  [ \ ] $assertionsDisabled Z _ java/lang/AssertionError
 ^  % b c d iterator ()Ljava/util/Iterator; f g h i P java/util/Iterator hasNext f k l m next ()Ljava/lang/Object; o  javax/swing/event/ChangeListener n q r Y stateChanged t java/lang/RuntimeException
 v w x y z org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
 | } ~  P java/lang/Class desiredAssertionStatus
 |   ? getName
     	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; 	Signature 4Ljava/util/List<Ljavax/swing/event/ChangeListener;>; Code LineNumberTable LocalVariableTable this  Lorg/openide/util/ChangeSupport; MethodParameters addChangeListener %(Ljavax/swing/event/ChangeListener;)V listener "Ljavax/swing/event/ChangeListener; StackMapTable removeChangeListener x Ljava/lang/RuntimeException; event Ljavax/swing/event/ChangeEvent; hasListeners <clinit> 
SourceFile ChangeSupport.java 1                         \ ]      U     U     *ˇ *ť Yˇ 	ľ 
*+ľ ą           1  )  2  3                                 ¨     T+Ç ą˛ ˛ ś  :*´ 
+š $  -˛ ˛ *ť ,Yť .Yˇ 01ś 3+ś 7:ś 3ś <ˇ @ś C*´ 
+š G Wą           >  ?  A  B H D S E        T       T        ű B               Z     +Ç ą*´ 
+š J Wą           Q  R  T  U                                X      \     *´ 
š M  ą*ť QY*´ ˇ Sˇ Vą           [  \  ^  _                   X Y     Ű     D˛ Z +Ç ť ^Yˇ `ż*´ 
š a M,š e  !,š j Ŕ nN-+š p § 
:¸ u§˙Üą  / 6 9 s     "    i  j / l 6 o 9 m ; n @ p C q    *  ;     /       D       D       % ü 	 f˙    Q f n  sú ú           P     G     *´ 
š M  § Ź           z                 @        C      ś { § ł Zś ¸ ł ą       
    $  &     @      