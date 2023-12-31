����   4 ~	      2org/openide/windows/CloneableOpenSupportRedirector redirectors -Ljava/util/concurrent/atomic/AtomicReference;	   	 
 lkp  Lorg/openide/util/Lookup$Result;
      java/lang/Object <init> ()V	      (org/openide/windows/CloneableOpenSupport env .Lorg/openide/windows/CloneableOpenSupport$Env;
      +java/util/concurrent/atomic/AtomicReference get ()Ljava/lang/Object;  java/util/Collection    ! " iterator ()Ljava/util/Iterator; $ % & ' ( java/util/Iterator hasNext ()Z $ * +  next
  - . / redirect Z(Lorg/openide/windows/CloneableOpenSupport$Env;)Lorg/openide/windows/CloneableOpenSupport;
  1 2 3 opened 1(Lorg/openide/windows/CloneableOpenSupport$Env;)V
  5 6 3 closed
 8 9 : ; < org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; >  org/openide/util/Lookup$Template
 = @  A (Ljava/lang/Class;)V
 8 C D E lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;
   H 4org/openide/windows/CloneableOpenSupportRedirector$1
 G 	  K L M listener !Lorg/openide/util/LookupListener;
 O P Q R S org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V U V W X Y org/openide/util/LookupListener resultChanged !(Lorg/openide/util/LookupEvent;)V 	Signature VLorg/openide/util/Lookup$Result<Lorg/openide/windows/CloneableOpenSupportRedirector;>; |Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/Collection<+Lorg/openide/windows/CloneableOpenSupportRedirector;>;>; Code LineNumberTable LocalVariableTable this 4Lorg/openide/windows/CloneableOpenSupportRedirector; MethodParameters findRedirect V(Lorg/openide/windows/CloneableOpenSupport;)Lorg/openide/windows/CloneableOpenSupport; ces *Lorg/openide/windows/CloneableOpenSupport; r one rlist Ljava/util/Collection; LocalVariableTypeTable MLjava/util/Collection<+Lorg/openide/windows/CloneableOpenSupportRedirector;>; StackMapTable o ,org/openide/windows/CloneableOpenSupport$Env notifyOpened -(Lorg/openide/windows/CloneableOpenSupport;)V notifyClosed 
access$000 "()Lorg/openide/util/Lookup$Result; 
access$100 /()Ljava/util/concurrent/atomic/AtomicReference; <clinit> 
SourceFile #CloneableOpenSupportRedirector.java InnerClasses Result Env Template!       	 
  Z    [     Z    \  L M   
     ]   /     *� �    ^       & _        ` a   . /  b       2 3  b       6 3  b        c d  ]   �     I*� L� � � M,� 7,�  N-� # � '-� ) � :+� ,:� *� �����    ^   & 	   B  C  D  E . F 6 G A H D J G L _   4  6  e f  .  g a    I h f    D     : i j  k      : i l  m    �  n  $)�  b    h    p q  ]   �     8*� L� � � M,� ',�  N-� # � -� ) � :+� 0���    ^       P  Q  R  S . T 4 U 7 W _   *  .  g a    8 h f    3     ) i j  k      ) i l  m    �  n  $�  b    h    r q  ]   �     8*� L� � � M,� ',�  N-� # � -� ) � :+� 4���    ^       Z  [  \  ] . ^ 4 _ 7 a _   *  .  g a    8 h f    3     ) i j  k      ) i l  m    �  n  $�  b    h   s t  ]         � �    ^       & u v  ]         � �    ^       &  w   ]   e      9� 7� =Y� ?� B� � Y� F� � GY� I� J� � J� N� J� T �    ^       (  )  * & 2 / 3 8 4  x    y z   "  O 8 {	 n  |	 = 8 }  G      