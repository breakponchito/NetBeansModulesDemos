����   4 3
      org/openide/util/Utilities activeReferenceQueue  ()Ljava/lang/ref/ReferenceQueue;
  	 
   java/lang/ref/WeakReference <init> 3(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V	      *org/openide/awt/ContextManager$GMReference context *Lorg/openide/awt/ContextManager$LookupRef;	     survive Z
      org/openide/awt/ContextManager 
clearCache Z(Lorg/openide/awt/ContextManager$LookupRef;Lorg/openide/awt/ContextManager$GMReference;Z)V  java/lang/Runnable N(Lorg/openide/awt/ContextManager;Lorg/openide/awt/ContextManager$LookupRef;Z)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/awt/ContextManager$GMReference; m  Lorg/openide/awt/ContextManager; MethodParameters run ()V 	Signature SLjava/lang/ref/WeakReference<Lorg/openide/awt/ContextManager;>;Ljava/lang/Runnable; 
SourceFile ContextManager.java InnerClasses GMReference 1 (org/openide/awt/ContextManager$LookupRef 	LookupRef 0                         g     *+� � *,� *� �    !      - . / 0 "   *     # $      % &              '    %          ( )      ;     *� **� � �    !   
   3 4 "        # $    *    + ,    - .       /  0  2 