����   4 �
      java/lang/Object <init> ()V  java/util/HashSet
  	      $org/openide/windows/OnShowingHandler 	onShowing Ljava/util/Set;	     
lkpShowing Lorg/openide/util/Lookup;	     wm #Lorg/openide/windows/WindowManager;
     "()Lorg/openide/util/Lookup$Result;
       org/openide/util/Lookup$Result allItems ()Ljava/util/Collection; " # $ % & java/util/Collection iterator ()Ljava/util/Iterator; ( ) * + , java/util/Iterator hasNext ()Z ( . / 0 next ()Ljava/lang/Object; 2 org/openide/util/Lookup$Item
 1 4 5 6 getId ()Ljava/lang/String; 8 9 : ; < java/util/Set add (Ljava/lang/Object;)Z
 1 > ? 0 getInstance A java/lang/Runnable
 C D E F G !org/openide/windows/WindowManager invokeWhenUIReady (Ljava/lang/Runnable;)V	  I J K resShow  Lorg/openide/util/Lookup$Result; M Modules/UIReady
 O P Q R S org/openide/util/lookup/Lookups forPath -(Ljava/lang/String;)Lorg/openide/util/Lookup;
 U V W X Y org/openide/util/Lookup lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;
  [ \ ] addLookupListener $(Lorg/openide/util/LookupListener;)V
  _ `  
initialize b org/openide/util/LookupListener 	Signature #Ljava/util/Set<Ljava/lang/String;>; 6Lorg/openide/util/Lookup$Result<Ljava/lang/Runnable;>; ?(Lorg/openide/util/Lookup;Lorg/openide/windows/WindowManager;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/windows/OnShowingHandler; lkp MethodParameters r Ljava/lang/Runnable; item Lorg/openide/util/Lookup$Item; LocalVariableTypeTable 4Lorg/openide/util/Lookup$Item<Ljava/lang/Runnable;>; StackMapTable v java/lang/Throwable 8()Lorg/openide/util/Lookup$Result<Ljava/lang/Runnable;>; resultChanged !(Lorg/openide/util/LookupEvent;)V ev Lorg/openide/util/LookupEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; run 
SourceFile OnShowingHandler.java InnerClasses Result Item 0    a @      c    d            J K  c    e     f  g   h     *� *� Y� 	� 
*+� *,� �    h       '  !  (  )  * i         j k      l         m   	 l        `   g   �     ^*� � � ! L+� ' � J+� - � 1M*� 
YN�*� 
,� 3� 7 � ,� =� @:� *� � B-ç 
:-������  ' P S   S W S    h   & 	   -   . ' / 7 0 @ 1 E 2 N 5 Z 6 ] 8 i      @  n o    : p q    ^ j k   r       : p s  t    �  (� @ 1 D u� �  "    g   �     2*� H� )*� � 
*� � L� NL*+@� T� H*� H*� Z*� H�    h       ;  <  = % > - @ i       l     2 j k   t    D U c    w  x y  g   =     *� ^�    h   
    E  F i        j k      z {  m    z   |     }    ~   g   3     *� ^�    h   
    J  K i        j k   |     }        � �      U �	 1 U �	