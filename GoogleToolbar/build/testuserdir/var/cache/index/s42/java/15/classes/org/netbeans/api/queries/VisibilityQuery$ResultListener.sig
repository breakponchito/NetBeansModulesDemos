����   4 M
      7org/netbeans/api/queries/VisibilityQuery$ResultListener <init> -(Lorg/netbeans/api/queries/VisibilityQuery;)V	   	 
 this$0 *Lorg/netbeans/api/queries/VisibilityQuery;
      java/lang/Object ()V
      (org/netbeans/api/queries/VisibilityQuery 
access$200 <(Lorg/netbeans/api/queries/VisibilityQuery;)Ljava/util/List;  java/util/ArrayList
     
access$300 L(Lorg/netbeans/api/queries/VisibilityQuery;)Lorg/openide/util/Lookup$Result;
      ! org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection;
  #  $ (Ljava/util/Collection;)V
  & ' ( 
access$400 M(Lorg/netbeans/api/queries/VisibilityQuery;Ljava/util/List;Ljava/util/List;)V * javax/swing/event/ChangeEvent
 ) ,  - (Ljava/lang/Object;)V
  / 0 1 
access$500 L(Lorg/netbeans/api/queries/VisibilityQuery;Ljavax/swing/event/ChangeEvent;)V 3 org/openide/util/LookupListener Code LineNumberTable LocalVariableTable this 9Lorg/netbeans/api/queries/VisibilityQuery$ResultListener; MethodParameters resultChanged !(Lorg/openide/util/LookupEvent;)V ev Lorg/openide/util/LookupEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; Y(Lorg/netbeans/api/queries/VisibilityQuery;Lorg/netbeans/api/queries/VisibilityQuery$1;)V x0 x1 ,Lorg/netbeans/api/queries/VisibilityQuery$1; 
SourceFile VisibilityQuery.java InnerClasses ResultListener I org/openide/util/Lookup Result L *org/netbeans/api/queries/VisibilityQuery$1      2  	 
        4   4     
*+� *� �    5       � 6       
 7 8   9    	  : ;  4   k     /*� *� � � Y*� � � � "� %*� � )Y*� +� .�    5       �  � . � 6       / 7 8     / < =  9    <   >     ?     @  4   D     *+� �    5       � 6         7 8      A 
     B C   D    E F       G   H J	 K    