����   4 �	      )org/openide/windows/TopComponent$NodeName top "Lorg/openide/windows/TopComponent;
   	 
 getNode ()Lorg/openide/nodes/Node;
     <init> %(Lorg/openide/windows/TopComponent;)V
     attach (Lorg/openide/nodes/Node;)V
      org/openide/nodes/NodeAdapter ()V
      java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;  org/openide/nodes/Node ! displayName
 # $ % & ' java/lang/String equals (Ljava/lang/Object;)Z	  ) * + node Ljava/lang/ref/Reference;
 - . / 0 1 java/lang/ref/Reference get ()Ljava/lang/Object;	 3 4 5 6 7 org/openide/util/Mutex EVENT Lorg/openide/util/Mutex; 9 +org/openide/windows/TopComponent$NodeName$1
 8 ;  < F(Lorg/openide/windows/TopComponent$NodeName;Lorg/openide/nodes/Node;)V
 3 > ? @ 
readAccess (Ljava/lang/Runnable;)V B java/lang/ref/WeakReference
 A D  E (Ljava/lang/Object;)V G org/openide/nodes/NodeListener
 I J K L M org/openide/util/WeakListeners create W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener;	  O P Q nodeL  Lorg/openide/nodes/NodeListener;
  S T U addNodeListener #(Lorg/openide/nodes/NodeListener;)V
 W X Y Z [  org/openide/windows/TopComponent 
access$400 P(Lorg/openide/windows/TopComponent;Lorg/openide/windows/TopComponent$NodeName;)V
 W ] ^ _ setActivatedNodes ([Lorg/openide/nodes/Node;)V
  a b  getDisplayName
 W d e f setName (Ljava/lang/String;)V connect =(Lorg/openide/windows/TopComponent;Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable n Lorg/openide/nodes/Node; MethodParameters this +Lorg/openide/windows/TopComponent$NodeName; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; propertyChange #(Ljava/beans/PropertyChangeEvent;)V ev  Ljava/beans/PropertyChangeEvent; StackMapTable z java/lang/Object | java/lang/Throwable 
access$200 E(Lorg/openide/windows/TopComponent$NodeName;)Lorg/openide/nodes/Node; x0 
access$300 O(Lorg/openide/windows/TopComponent$NodeName;)Lorg/openide/windows/TopComponent; 
SourceFile TopComponent.java InnerClasses NodeName !            * +    P Q    	 g h  i   E     � Y*� +� �    j   
   � � k               l m  n   	    l       i   F     
*� *+� �    j      � � 	� k       
 o p     
    n       q     r     s    t u  i   �     ++�  � "� !*� (� ,� M,� � 2� 8Y*,� :� =�    j      � � � � *� k        l m    + o p     + v w  x    * n    v   q     r     s       i   �     V*� YM�*� AY+� C� (*F*+� H� F� N+*� N� R*� *� V*� � Y+S� \*� +� `� c,ç N,�-��   M P   P S P    j   & 	  � � � !� )� 1� @� K� U� k       V o p     V l m  x    � P    y  {�  n    l    	 
  i   5     *� (� ,� �    j      � k        o p   } ~  i   /     *� �    j      � k         p   � �  i   /     *� �    j      � k         p    �    � q     r     s   �      W � 	 8      