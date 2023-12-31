Êþº¾   4 ·
      (org/openide/windows/CloneableOpenSupport getLock ()Ljava/lang/Object;
  	 
   java/lang/Object <init> ()V	     env .Lorg/openide/windows/CloneableOpenSupport$Env;  1org/openide/windows/CloneableOpenSupport$Listener
     [(Lorg/openide/windows/CloneableOpenSupport$Env;Lorg/openide/windows/CloneableOpenSupport;)V	     
allEditors /Lorg/openide/windows/CloneableTopComponent$Ref;
      org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener; ! " # $ % ,org/openide/windows/CloneableOpenSupport$Env addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  ' ( ) vetoableChange Z(Ljava/beans/VetoableChangeListener;Ljava/lang/Object;)Ljava/beans/VetoableChangeListener; ! + , - addVetoableChangeListener &(Ljava/beans/VetoableChangeListener;)V
 / 0 1 2 3 2org/openide/windows/CloneableOpenSupportRedirector findRedirect V(Lorg/openide/windows/CloneableOpenSupport;)Lorg/openide/windows/CloneableOpenSupport;
  5 6  open
  8 9 : afterRedirectImpl -(Lorg/openide/windows/CloneableOpenSupport;)V	 < = > ? @ org/openide/util/Mutex EVENT Lorg/openide/util/Mutex; B *org/openide/windows/CloneableOpenSupport$1
 A D  :
 < F G H writeAccess (Ljava/lang/Runnable;)V
  J K L close (Z)Z
 N O P Q R -org/openide/windows/CloneableTopComponent$Ref isEmpty ()Z T *org/openide/windows/CloneableOpenSupport$2
 S V  W .(Lorg/openide/windows/CloneableOpenSupport;Z)V
 < Y G Z 3(Lorg/openide/util/Mutex$Action;)Ljava/lang/Object; \ java/lang/Boolean
 [ ^ _ R booleanValue
 N a b c getArbitraryComponent -()Lorg/openide/windows/CloneableTopComponent;
 e 5 f )org/openide/windows/CloneableTopComponent
  h i j messageOpening ()Ljava/lang/String;
 l m n o p org/openide/awt/StatusDisplayer 
getDefault #()Lorg/openide/awt/StatusDisplayer;
 l r s t setStatusText (Ljava/lang/String;)V
  v w c createCloneableTopComponent
 e y z { setReference 2(Lorg/openide/windows/CloneableTopComponent$Ref;)V
  } ~ j messageOpened   	     	container Ljava/awt/Container;  java/awt/Container
  	
     getTreeLock
    : afterRedirect 1(Lorg/openide/windows/CloneableOpenSupport$Env;)V Code LineNumberTable LocalVariableTable this *Lorg/openide/windows/CloneableOpenSupport; l 3Lorg/openide/windows/CloneableOpenSupport$Listener; MethodParameters redirect StackMapTable view edit ask Z ret Ljava/lang/Boolean; canClose openCloneableTopComponent 
msgOpening Ljava/lang/String; editor +Lorg/openide/windows/CloneableTopComponent; 	msgOpened § java/lang/String © java/lang/Throwable redirectedTo 
access$000 >(Lorg/openide/windows/CloneableOpenSupport;)Ljava/lang/Object; x0 
SourceFile CloneableOpenSupport.java InnerClasses Env Listener Ref µ org/openide/util/Mutex$Action Action!      
                            /*· *+µ » Y+*· M*,µ +,+¸ ¹   +,+¸ &¹ * ±           3  4 	 6  7  : # = . >         /       /                 6      |     "*¸ .L+Æ +¶ 4*+· 7±² ;» AY*· C¶ E±           H  I 	 J  K  L  O ! W        "              ü          3     *¶ 4±       
    ^  _                    3     *¶ 4±       
    f  g              K R     0     *¶ I¬           n              K L     w     $*´ ¶ M ¬² ;» SY*· U¶ XÀ [M,¶ ]¬           v 
 w  |           $       $                      R     ,     ¬                            c    J     k*· YLÂ*´ ¶ `M,Æ ,¶ d,+Ã°*¶ gN-Æ 
¸ k-¶ q*¶ u:*´ ¶ x¶ d*¶ |:Ç -Æ :Æ ¸ k¶ q+Ã°:+Ã¿    d    c d   d h d       J    ¦  §  ©  ª  ¬  ¯   ± $ ² + µ 1 ¶ : · ? ¹ E » N ½ R À W Á _ Ä d Æ    4    D ¡ ¢  1 3 £ ¤  E  ¥ ¢   U  ¤    k        + ý   eü  ¦ý & e ¦ÿ      ¨        R     ² Ç » Y· ³ ² ¶ °           Ë  Ì  Ï                  w c   i j   ~ j    9 :     J     *+´ µ *+¶ ±           ì  î  ï                ª       ª     :     5      ±           ÷                ª       ª   « ¬     /     *· °           "         ­     ®    ¯ °   2  !  ±	   ²  N e ³ 	 A       S       ´ < ¶	