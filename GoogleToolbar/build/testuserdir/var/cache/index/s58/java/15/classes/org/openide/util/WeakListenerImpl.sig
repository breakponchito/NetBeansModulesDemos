ÊțșŸ   4 ­	      !org/openide/util/WeakListenerImpl LOG Ljava/util/logging/Logger;	   	 
 source Ljava/lang/ref/Reference;	     ref 5Lorg/openide/util/WeakListenerImpl$ListenerReference;
     <init> ?(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/String;)V
      java/lang/Object ()V	     listenerClass Ljava/lang/Class;  3org/openide/util/WeakListenerImpl$ListenerReference
      J(Ljava/lang/Object;Ljava/lang/String;Lorg/openide/util/WeakListenerImpl;)V " java/lang/ref/WeakReference
 ! $  % (Ljava/lang/Object;)V
 ' ( ) * + java/lang/ref/Reference get ()Ljava/lang/Object;
  (
 . / 0 1 + java/util/EventObject 	getSource
  3 4 % requestCleanUp 6 java/util/EventListener 8 java/lang/StringBuilder
 7 
  ; < = getClass ()Ljava/lang/Class;
 ? @ A B C java/lang/Class getName ()Ljava/lang/String;
 7 E F G append -(Ljava/lang/String;)Ljava/lang/StringBuilder; I [ K null M ]
 7 O P C toString R /org/openide/util/WeakListenerImpl$ProxyListener
 Q T  U >(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/EventListener;)V
 Q W X % 	setSource	 Q Z [ \ proxy Ljava/lang/Object;
 ? ^ _ ` cast &(Ljava/lang/Object;)Ljava/lang/Object;
 b c d e f java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; 	Signature Ljava/lang/Class<*>; -Ljava/lang/ref/Reference<Ljava/lang/Object;>; -(Ljava/lang/Class;Ljava/util/EventListener;)V Code LineNumberTable LocalVariableTable this #Lorg/openide/util/WeakListenerImpl; l Ljava/util/EventListener; LocalVariableTypeTable MethodParameters 0(Ljava/lang/Class<*>;Ljava/util/EventListener;)V name Ljava/lang/String; B(Ljava/lang/Class<*>;Ljava/util/EventListener;Ljava/lang/String;)V StackMapTable r removeMethodName 2(Ljava/util/EventObject;)Ljava/util/EventListener; ev Ljava/util/EventObject; getImplementator listener  java/lang/String #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; create h(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener; lType apiType pl 1Lorg/openide/util/WeakListenerImpl$ProxyListener; Ljava/lang/Class<TT;>; Ljava/lang/Class<-TT;>; TT; e<T::Ljava/util/EventListener;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<-TT;>;TT;Ljava/lang/Object;)TT; 
access$000 Z(Lorg/openide/util/WeakListenerImpl;)Lorg/openide/util/WeakListenerImpl$ListenerReference; x0 
access$102 W(Lorg/openide/util/WeakListenerImpl;Ljava/lang/ref/Reference;)Ljava/lang/ref/Reference; x1 
access$100 >(Lorg/openide/util/WeakListenerImpl;)Ljava/lang/ref/Reference; 
access$300 ()Ljava/util/logging/Logger; <clinit> 
SourceFile WeakListenerImpl.java InnerClasses ListenerReference ProxyListener  'org/openide/util/WeakListenerImpl$Focus Focus ą (org/openide/util/WeakListenerImpl$Change Change „ *org/openide/util/WeakListenerImpl$Document Document š 0org/openide/util/WeakListenerImpl$VetoableChange VetoableChange « 0org/openide/util/WeakListenerImpl$PropertyChange PropertyChange     5                 g    h  	 
  g    i    j  k   \     *+,· ±    l   
    J  K m         n o            p q  r         h  s   	    p   g    t     k   ~     *· *+” *» Y,-*· ” ±    l       R  S 	 T  U m   *     n o            p q     u v  r         h  s       p   u   g    w  X %  k   c     +Ç *” § *» !Y+· #” ±    l       h  i  k  m m        n o      	 \  x     s    	    1 +  k   n     *Ž L+Ç § +¶ &°    l   
    p  q m        n o     y 
  r       y i  x    ü  'C  z C    * {  k         $*Ž ¶ ,M,Ç *Ž +Ç § +¶ -¶ 2,À 5°    l              m        $ n o     $ | }    p \  x   , ÿ    .   ÿ    .     s    |     ~ +  k   ,     *°    l        m        n o    P C  k   Ș     G*Ž ¶ ,L» 7Y· 9*¶ :¶ >¶ DH¶ D+Ç J§ » 7Y· 9+¶ :¶ >¶ DL¶ D¶ N¶ D¶ N°    l   
       m       G n o    ?  \  x   % ÿ '     7ÿ      7          	    k        » QY*+,· S:-¶ V*Ž Y¶ ]À 5°    l            m   4                  p q     	 \       r                      p   s          p   	   g        k   /     *Ž °    l       7 m         o      k   ;     *+Z” °    l       7 m         o       
     k   /     *Ž °    l       7 m         o      k         Č °    l       7     k   $      ¶ >ž ał ±    l       9          :      Q   
      Ą  Ł  €  Š  §  ©  Ș  Ź 