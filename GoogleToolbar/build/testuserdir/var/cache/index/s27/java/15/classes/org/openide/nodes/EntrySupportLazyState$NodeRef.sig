����   4 7
      org/openide/util/Utilities activeReferenceQueue  ()Ljava/lang/ref/ReferenceQueue;
  	 
   java/lang/ref/WeakReference <init> 3(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
      1org/openide/nodes/EntrySupportLazyState$EntryInfo lazy &()Lorg/openide/nodes/EntrySupportLazy;
      "org/openide/nodes/EntrySupportLazy registerNode 7(ILorg/openide/nodes/EntrySupportLazyState$EntryInfo;)V	      /org/openide/nodes/EntrySupportLazyState$NodeRef info 3Lorg/openide/nodes/EntrySupportLazyState$EntryInfo;   java/lang/Runnable N(Lorg/openide/nodes/Node;Lorg/openide/nodes/EntrySupportLazyState$EntryInfo;)V Code LineNumberTable LocalVariableTable this 1Lorg/openide/nodes/EntrySupportLazyState$NodeRef; node Lorg/openide/nodes/Node; MethodParameters run ()V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	Signature KLjava/lang/ref/WeakReference<Lorg/openide/nodes/Node;>;Ljava/lang/Runnable; 
SourceFile EntrySupportLazyState.java InnerClasses 4 'org/openide/nodes/EntrySupportLazyState 	EntryInfo NodeRef 0              !  "   a     *+� � ,� ,� *,� �    #      \ ] ^ _ $         % &      ' (        )   	 '       * +  "   >     *� � *� � �    #   
   c d $        % &   ,     -    .    / 0    1 2      3 5   3 6 