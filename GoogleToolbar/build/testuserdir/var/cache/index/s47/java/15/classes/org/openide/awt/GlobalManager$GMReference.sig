����   4 7
      org/openide/util/Utilities activeReferenceQueue  ()Ljava/lang/ref/ReferenceQueue;
  	 
   java/lang/ref/WeakReference <init> 3(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V	      )org/openide/awt/GlobalManager$GMReference context *Lorg/openide/awt/ContextManager$LookupRef;	     survive Z
      org/openide/awt/GlobalManager 
clearCache Y(Lorg/openide/awt/ContextManager$LookupRef;Lorg/openide/awt/GlobalManager$GMReference;Z)V  java/lang/Runnable M(Lorg/openide/awt/GlobalManager;Lorg/openide/awt/ContextManager$LookupRef;Z)V Code LineNumberTable LocalVariableTable this +Lorg/openide/awt/GlobalManager$GMReference; m Lorg/openide/awt/GlobalManager; MethodParameters run ()V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	Signature RLjava/lang/ref/WeakReference<Lorg/openide/awt/GlobalManager;>;Ljava/lang/Runnable; 
SourceFile GlobalManager.java InnerClasses GMReference 3 (org/openide/awt/ContextManager$LookupRef 5 org/openide/awt/ContextManager 	LookupRef 0                         g     *+� � *,� *� �    !       �  �  �  � "   *     # $      % &              '    %          ( )      ;     *� **� � �    !   
    �  � "        # $   *     +    ,    - .    / 0       1  2 4 6 