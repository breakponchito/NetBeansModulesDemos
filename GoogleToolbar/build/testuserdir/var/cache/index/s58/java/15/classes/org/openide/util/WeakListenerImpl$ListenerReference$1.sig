����   4 6	      5org/openide/util/WeakListenerImpl$ListenerReference$1 this$0 5Lorg/openide/util/WeakListenerImpl$ListenerReference;
  	 
   java/lang/ref/WeakReference <init> (Ljava/lang/Object;)V  3org/openide/util/WeakListenerImpl$ListenerReference  java/lang/Object
     ()V
     
access$200 I(Lorg/openide/util/WeakListenerImpl$ListenerReference;)Ljava/lang/String;	     weakListener #Lorg/openide/util/WeakListenerImpl;
     J(Ljava/lang/Object;Ljava/lang/String;Lorg/openide/util/WeakListenerImpl;)V	    !  
doNotGCRef J(Lorg/openide/util/WeakListenerImpl$ListenerReference;Ljava/lang/Object;)V Code LineNumberTable LocalVariableTable this 7Lorg/openide/util/WeakListenerImpl$ListenerReference$1; referent Ljava/lang/Object; MethodParameters 	Signature 1Ljava/lang/ref/WeakReference<Ljava/lang/Object;>; 
SourceFile WeakListenerImpl.java EnclosingMethod 1  requestCleanUp InnerClasses 4 !org/openide/util/WeakListenerImpl ListenerReference          !            "  #   m     +*+� *,� *� Y� Y� *� � *� � � � �    $   
    
 %        + & '     +      + ( )  *   	 � (    +    , -    . /     0 2      3 5        