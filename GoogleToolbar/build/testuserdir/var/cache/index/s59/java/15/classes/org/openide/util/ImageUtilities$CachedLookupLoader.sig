Êþº¾   4 ¬	      2org/openide/util/ImageUtilities$CachedLookupLoader threadInProgress Ljava/lang/Thread;	   	 
 currentLoader Ljava/util/Optional;	     clazz Ljava/lang/Class;
      java/lang/Object <init> ()V  )java/util/concurrent/atomic/AtomicBoolean
     (Z)V	     noLoaderWarned +Ljava/util/concurrent/atomic/AtomicBoolean; 
   ! " # $ org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V
 & ' ( ) * java/util/Optional orElse &(Ljava/lang/Object;)Ljava/lang/Object;
 , - . / 0 java/lang/Thread currentThread ()Ljava/lang/Thread;	  2 3 4 loaderQuery  Lorg/openide/util/Lookup$Result;
 6 7 8 9 : org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
 6 < = > lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result; @ 4org/openide/util/ImageUtilities$CachedLookupLoader$1
 ? B  C 7(Lorg/openide/util/ImageUtilities$CachedLookupLoader;)V
 E F G H I org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
 E K L M allInstances ()Ljava/util/Collection; O P Q R S java/util/Collection iterator ()Ljava/util/Iterator; U V W X Y java/util/Iterator hasNext ()Z U [ \ ] next ()Ljava/lang/Object;
 & _ ` a 
ofNullable ((Ljava/lang/Object;)Ljava/util/Optional;
 & c d Y 	isPresent
  f g h 	getAndSet (Z)Z
 j k l m n org/openide/util/ImageUtilities 
access$300 ()Ljava/util/logging/Logger;	 p q r s t java/util/logging/Level WARNING Ljava/util/logging/Level; v No {0} instance found in {1}
 x y z { | java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V	 p ~  t FINE
 x    
isLoggable (Ljava/util/logging/Level;)Z  Loader computed for {0}: {1} 	Signature Ljava/lang/Class<TT;>; Ljava/util/Optional<TT;>; %Lorg/openide/util/Lookup$Result<TT;>; (Ljava/lang/Class;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/util/ImageUtilities$CachedLookupLoader; LocalVariableTypeTable 9Lorg/openide/util/ImageUtilities$CachedLookupLoader<TT;>; MethodParameters (Ljava/lang/Class<TT;>;)V 	getLoader useLoaderQuery toReturn it Ljava/util/Iterator; Ljava/util/Iterator<+TT;>; StackMapTable  java/lang/Throwable ()TT; 
access$200 G(Lorg/openide/util/ImageUtilities$CachedLookupLoader;)Ljava/lang/Class; x0 
access$402 ^(Lorg/openide/util/ImageUtilities$CachedLookupLoader;Ljava/util/Optional;)Ljava/util/Optional; x1 
access$502 Z(Lorg/openide/util/ImageUtilities$CachedLookupLoader;Ljava/lang/Thread;)Ljava/lang/Thread; (<T:Ljava/lang/Object;>Ljava/lang/Object; 
SourceFile ImageUtilities.java InnerClasses CachedLookupLoader Result 0                    B 	 
             3 4               |     *· *» Y· µ +¸ *+µ ±                                                                 ]    N     ø*´ L+Æ 	+¶ %°*YNÂ*¸ +µ *´ 1Ç  *¸ 5*´ ¶ ;µ 1*´ 1» ?Y*· A¶ D*´ 1M-Ã§ 
:-Ã¿,¶ J¹ N N-¹ T  -¹ Z § ¸ ^L+¶ b -*´ ¶ e L¸ i² ou½ Y*´ SY¸ 5S¶ w§ -¸ i² }¶  !¸ i² }½ Y*´ SY+¶ %S¶ w*Y:Â*´ ¸ +¦ *µ *+µ Ã§ :Ã¿+¶ %°   E H   H L H   Ð ç ê   ê ï ê       n      	! $ & ' !( /) >9 C: O< Y= p> w? @ A @ ¡C ­E ÄF ÈE ËH ÐI ÚM ßN äP òQ    4  C   4    ø      ó  
  O ©  4  Y        4  C       ø      ó    O ©    Y        < ü  &ý .  I ÿ    & E  ü  U@ 4)ü  E ú             /     *´ °                        ¡ ¢     ;     *+Zµ °                           £ 
  ¤ ¥     ;     *+Zµ °                           £        ¦ §    ¨ ©      j ª  E 6 «	 ?      