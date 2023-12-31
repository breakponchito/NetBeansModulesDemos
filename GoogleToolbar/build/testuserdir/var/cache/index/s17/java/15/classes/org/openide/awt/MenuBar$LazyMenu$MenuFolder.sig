����   4 �	      +org/openide/awt/MenuBar$LazyMenu$MenuFolder this$0 "Lorg/openide/awt/MenuBar$LazyMenu;	  	 
    org/openide/awt/MenuBar$LazyMenu master  Lorg/openide/loaders/DataFolder;
      "org/openide/loaders/FolderInstance <init> #(Lorg/openide/loaders/DataFolder;)V  java/util/HashMap
     ()V	     cookiesToFiles Ljava/util/Map;	      ! 7org/netbeans/modules/openide/loaders/DataObjectAccessor DEFAULT 9Lorg/netbeans/modules/openide/loaders/DataObjectAccessor;
  # $ % precreateInstances '(Lorg/openide/loaders/FolderInstance;)V
 ' ( ) * + java/lang/Class getName ()Ljava/lang/String; - javax/swing/JMenu
  / 0  waitFinished 2 3 4 5 6 "org/openide/cookies/InstanceCookie instanceClass ()Ljava/lang/Class; 8 javax/swing/JSeparator
 : ; < = > java/lang/Object equals (Ljava/lang/Object;)Z	  @ A B 	SEPARATOR Ljavax/swing/JSeparator;
  D E F instanceForCookie X(Lorg/openide/loaders/DataObject;Lorg/openide/cookies/InstanceCookie;)Ljava/lang/Object;
 H I J K L org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject; N O P Q R java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; T javax/swing/Action
 ' V W X isAssignableFrom (Ljava/lang/Class;)Z 2 Z [ \ instanceCreate ()Ljava/lang/Object; ^ 'org/openide/util/actions/Presenter$Menu ` javax/swing/JMenuItem
 b I c org/openide/loaders/DataFolder e SystemFileSystem.icon
 g h i j k "org/openide/filesystems/FileObject getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
  m  n $(Lorg/openide/loaders/DataFolder;Z)V	  p q r slave -Lorg/openide/awt/MenuBar$LazyMenu$MenuFolder;	  t u v $assertionsDisabled Z
 x y z { | java/awt/EventQueue isDispatchThread ()Z ~ java/lang/AssertionError
 � � � � � java/lang/Thread currentThread ()Ljava/lang/Thread;
 � (
 } �  � (Ljava/lang/Object;)V � java/util/LinkedList
 � 
 � � � � � org/openide/awt/MenuBar allInstances 8([Lorg/openide/cookies/InstanceCookie;Ljava/util/List;)V
 � � � | isEmpty � CTL_EmptyMenu
 � � � � � org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 _ �  � (Ljava/lang/String;)V
 _ � � � 
setEnabled (Z)V
  � � � add 0(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;	  � � � 	dynaModel Lorg/openide/awt/DynaMenuModel;
 � � � � � org/openide/awt/DynaMenuModel loadSubmenu 6(Ljava/util/List;Ljavax/swing/JMenu;ZLjava/util/Map;)V � ,org/netbeans/modules/openide/loaders/AWTTask
 � �  � ;(Ljava/lang/Runnable;Lorg/openide/loaders/FolderInstance;)V
 ' � � | desiredAssertionStatus 	Signature GLjava/util/Map<Ljava/lang/Object;Lorg/openide/filesystems/FileObject;>; %(Lorg/openide/awt/MenuBar$LazyMenu;)V Code LineNumberTable LocalVariableTable this MethodParameters instanceName #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
Exceptions � java/io/IOException �  java/lang/ClassNotFoundException waitFinishedSuper result Ljava/lang/Object; obj  Lorg/openide/loaders/DataObject; cookie $Lorg/openide/cookies/InstanceCookie; StackMapTable acceptCookie J(Lorg/openide/cookies/InstanceCookie;)Lorg/openide/cookies/InstanceCookie; c Ljava/lang/Class; action is acceptFolder F(Lorg/openide/loaders/DataFolder;)Lorg/openide/cookies/InstanceCookie; df hasIcon createInstance 9([Lorg/openide/cookies/InstanceCookie;)Ljava/lang/Object; item Ljavax/swing/JMenuItem; cookies %[Lorg/openide/cookies/InstanceCookie; m 
cInstances Ljava/util/LinkedList; LocalVariableTypeTable *Ljava/util/LinkedList<Ljava/lang/Object;>; postCreationTask -(Ljava/lang/Runnable;)Lorg/openide/util/Task; run Ljava/lang/Runnable; <clinit> 
SourceFile MenuBar.java InnerClasses LazyMenu 
MenuFolder � "org/openide/util/actions/Presenter Menu            �    � u v          �  �   Z      *+� *+� � *� Y� � � *� "�    �      � �  � � �         � r   �      � +  �   0     � &�    �      � �        � r   �     �    5 6  �   -     ,�    �      � �        � r   �     �    [ \  �   /     *� �    �       �        � r   �     � � �     �    0   �   +      �    �       �        � r   �     �     �   �   3     *� .�    �   
   
  �        � r    E F  �   �     -,� 1 7� 9� 
� ?N� 
*+,� CN*� -+� G� M W-�    �          + �   4    � �    - � r     - � �    - � �    � �  �   	 �  : �     � � �   	 �   �   �     �    � �  �   �     J+� 1 MS,� U>� 
+� Y W],� U� _,� U� 7,� U� � � 6� +� �    �   & 	  % & ' ( * + %, .- ?/ �   4    J � r     J � �   C � �   < � v  ?  � v  �    �  '@� 
@ 2 �     � � �    �   �     �    � �  �   l     +� ad� f� � =� Y+� l� o�    �   
   9 : �         � r      �     � v  �    @ �    �   �     �    � �  �        `*� M� s� � w� � }Y� � �� ��� �Y� �N+-� �-� ��  � _YH�� �� �:� �,� �W,� �-,*� � �,�    �   .   C D G 'H ,N 3O ;P CR IS PV ^W �   4  C  � �    ` � r     ` � �   [ �   ' 9 � �  �     ' 9 � �  �    �  � 0 � �     � � �    �    � �  �   >     
� �Y+*� ��    �      m �       
 � r     
 � �  �    �   �     �    �   �   4      �� �� � � s�    �      � �    @  �    � �      � � 
   �  ] � �	