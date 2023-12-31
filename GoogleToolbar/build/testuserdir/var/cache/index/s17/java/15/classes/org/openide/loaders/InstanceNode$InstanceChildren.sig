����   4 �
      1org/openide/loaders/InstanceNode$InstanceChildren 
updateKeys ()V
  	 
   org/openide/nodes/Children$Keys <init>	     contextL <Lorg/openide/loaders/InstanceNode$InstanceChildren$ContextL;	     dobj (Lorg/openide/loaders/InstanceDataObject;
     	addNotify
      org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;  java/lang/ref/WeakReference
     ! (Ljava/lang/Object;)V	  # $ % dobjListener Ljava/lang/ref/WeakReference;
 ' ( ) * + &org/openide/loaders/InstanceDataObject addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V - :org/openide/loaders/InstanceNode$InstanceChildren$ContextL
 , /  0 6(Lorg/openide/loaders/InstanceNode$InstanceChildren;)V
  2  3 #(Ljava/beans/PropertyChangeEvent;)V	  5 6 7 bean Ljava/lang/Object; 9 "java/beans/beancontext/BeanContext 8 ; < = #removeBeanContextMembershipListener 9(Ljava/beans/beancontext/BeanContextMembershipListener;)V
  ? @ A get ()Ljava/lang/Object; C !java/beans/PropertyChangeListener
 ' E F + removePropertyChangeListener
  H I  clear
 K L M N O java/util/Collections emptySet ()Ljava/util/Set;
  Q R S setKeys (Ljava/util/Collection;)V
 U V W X Y java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String; [ cookie
 ] ^ _ ` a java/lang/String equals (Ljava/lang/Object;)Z c "org/openide/cookies/InstanceCookie
 ' e f g 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; b i j k instanceClass ()Ljava/lang/Class;
 m n o p q java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z b s t A instanceCreate v 'java/beans/beancontext/BeanContextProxy
 ' s u y z { getBeanContextProxy +()Ljava/beans/beancontext/BeanContextChild; } java/lang/Exception
  � � � � org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V 8 � � =  addBeanContextMembershipListener 8 � � � toArray ()[Ljava/lang/Object;
  � R � ([Ljava/lang/Object;)V � org/openide/nodes/Node � )java/beans/beancontext/BeanContextSupport
 � � � � getBeanContextPeer &()Ljava/beans/beancontext/BeanContext; 8 � � a contains � 0org/openide/loaders/InstanceNode$BeanContextNode
 � �  � =(Ljava/lang/Object;Lorg/openide/loaders/InstanceDataObject;)V � !java/beans/IntrospectionException 	Signature BLjava/lang/ref/WeakReference<Ljava/beans/PropertyChangeListener;>; +(Lorg/openide/loaders/InstanceDataObject;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/loaders/InstanceNode$InstanceChildren; MethodParameters p #Ljava/beans/PropertyChangeListener; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; removeNotify StackMapTable ic $Lorg/openide/cookies/InstanceCookie; clazz Ljava/lang/Class; ex Ljava/lang/Exception; evt  Ljava/beans/PropertyChangeEvent; LocalVariableTypeTable Ljava/lang/Class<*>; createNodes -(Ljava/lang/Object;)[Lorg/openide/nodes/Node; bcs +Ljava/beans/beancontext/BeanContextSupport; #Ljava/beans/IntrospectionException; key ctx � java/lang/Object access$1000 x0 
SourceFile InstanceNode.java InnerClasses �  org/openide/loaders/InstanceNode InstanceChildren � org/openide/nodes/Children Keys ContextL � org/openide/nodes/Node$Cookie Cookie BeanContextNode 0    B    $ %  �    �         6 7            �  �   O     *� *� *+� �    �      � � 	� � �        � �         �           �        3*� **� � L*� Y+� � "*� +� &*� ,Y*� .� *� 1�    �      � � � � !� -� 2� �       3 � �    & � �  �     �    �   �   �     I*� � *� 4� *� 4� 8*� � : *� *� "� >� BL+� *� +� D*� "� G*� J� P�    �   & 	  � � � #� .� 2� :� A� H� �       I � �   .  � �  �   	 � " B �     �     3  �  �     �+� +� TZ� \� �*� � *� 4� *� 4� 8*� � : *� b� d� bM,� 	*� 4�,� h N8-� l� *,� r � 4� 'u-� l� **� � w� u� x � 4� *� 4� M*� 4,� ~*� 4� *� 4� 8*� � � *� �  / E � | F � � |  �   V   � � � /� <� @� E� F� M� V� c� l� �� �� �� �� �� �� �� � � �   4  < K � �  M : � �  � 	 � �    � � �     � � �  �     M : � �  �    	�  b�  m� B |	 �    �       �   b     "*� 4� *� J� P� **� 4� 8� � � ��    �         !
 �       " � �   �      � �  �   �     L*� 4M*� 4� � ��+� �� +� �N,� 8-� �� � � � ��� �Y� �Y+*� � �S�N� ��   1 F � 2 E F �  �   * 
        -  2$ F% G' �   4    � �  G  � �    L � �     L � 7   G � 7  �    �  � S � �    �   � 0  �   /     *� �    �      � �        � �    �    � �   *   � �   � �	 ,  �  � � �	 � � � 
