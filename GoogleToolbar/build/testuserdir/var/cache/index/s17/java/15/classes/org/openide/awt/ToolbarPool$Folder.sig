����   4 	      "org/openide/awt/ToolbarPool$Folder this$0 Lorg/openide/awt/ToolbarPool;
  	 
   "org/openide/loaders/FolderInstance <init> #(Lorg/openide/loaders/DataFolder;)V	      7org/netbeans/modules/openide/loaders/DataObjectAccessor DEFAULT 9Lorg/netbeans/modules/openide/loaders/DataObjectAccessor;
     precreateInstances '(Lorg/openide/loaders/FolderInstance;)V
     instanceClass ()Ljava/lang/Class;
       java/lang/Class getName ()Ljava/lang/String; " org/openide/awt/ToolbarPool $  % "org/openide/cookies/InstanceCookie ' )org/openide/awt/ToolbarPool$Configuration
  ) * + isAssignableFrom (Ljava/lang/Class;)Z - java/awt/Component / org/openide/awt/Toolbar
 . 	
 2 3 4 5 6 org/openide/loaders/DataFolder getPrimaryFile &()Lorg/openide/filesystems/FileObject; 8 nb.toolbar.overflow.disable
 : ; < = > "org/openide/filesystems/FileObject getAttribute &(Ljava/lang/String;)Ljava/lang/Object;	 @ A B C D java/lang/Boolean TRUE Ljava/lang/Boolean;
 @ F G H equals (Ljava/lang/Object;)Z
 . J K L putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V
 . N O P waitFinished "()Lorg/openide/awt/Toolbar$Folder;	  R S T $assertionsDisabled Z
 V W X Y Z java/awt/EventQueue isDispatchThread ()Z \ java/lang/AssertionError
 ^ _ ` a b java/lang/Thread currentThread ()Ljava/lang/Thread;
 ^ 
 [ e  f (Ljava/lang/Object;)V h java/util/TreeMap
 g j  k ()V m java/util/ArrayList
 l j $ p q r instanceCreate ()Ljava/lang/Object;
 ! t u v 
access$000 J(Lorg/openide/awt/ToolbarPool;)Lorg/openide/awt/ToolbarPool$PopupListener;
 . x y z removeMouseListener !(Ljava/awt/event/MouseListener;)V
 . | } z addMouseListener
 .  � � � � � java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 l � � H add &  $ � �   instanceName
 ,  � 2org/openide/awt/ToolbarPool$ComponentConfiguration
 � �  � (Ljava/awt/Component;)V � java/io/IOException
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level INFO Ljava/util/logging/Level; � Error while creating toolbars.
 � � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V �  java/lang/ClassNotFoundException
 ! � � � update 6(Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V � ,org/netbeans/modules/openide/loaders/AWTTask
 � �  � ;(Ljava/lang/Runnable;Lorg/openide/loaders/FolderInstance;)V
  � � Z desiredAssertionStatus @(Lorg/openide/awt/ToolbarPool;Lorg/openide/loaders/DataFolder;)V Code LineNumberTable LocalVariableTable this $Lorg/openide/awt/ToolbarPool$Folder; f  Lorg/openide/loaders/DataFolder; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; acceptCookie J(Lorg/openide/cookies/InstanceCookie;)Lorg/openide/cookies/InstanceCookie; cookie $Lorg/openide/cookies/InstanceCookie; cls Ljava/lang/Class; StackMapTable 
Exceptions acceptFolder F(Lorg/openide/loaders/DataFolder;)Lorg/openide/cookies/InstanceCookie; df res Lorg/openide/awt/Toolbar; fo $Lorg/openide/filesystems/FileObject; disable Ljava/lang/Object; � java/lang/Object createInstance 9([Lorg/openide/cookies/InstanceCookie;)Ljava/lang/Object; toolbar config +Lorg/openide/awt/ToolbarPool$Configuration; name Ljava/lang/String; comp Ljava/awt/Component; obj ex Ljava/io/IOException; "Ljava/lang/ClassNotFoundException; i I cookies %[Lorg/openide/cookies/InstanceCookie; length toolbars Ljava/util/Map; toolbarNames Ljava/util/ArrayList; conf LocalVariableTypeTable <Ljava/util/Map<Ljava/lang/String;Lorg/openide/awt/Toolbar;>; )Ljava/util/ArrayList<Ljava/lang/String;>; NLjava/util/Map<Ljava/lang/String;Lorg/openide/awt/ToolbarPool$Configuration;>; � � java/lang/String postCreationTask -(Ljava/lang/Runnable;)Lorg/openide/util/Task; run Ljava/lang/Runnable; <clinit> 
SourceFile ToolbarPool.java InnerClasses Folder Configuration � org/openide/awt/Toolbar$Folder � )org/openide/awt/ToolbarPool$PopupListener PopupListener ComponentConfiguration        S T          �  �   R     *+� *,� � *� �    �      � � 
� � �        � �      � �  �   	  �    �    �   2     *� � �    �      � �        � �   �     �       �   -     !�    �      � �        � �   �     �    � �  �   �     +� # M&,� (� +�,,� (� +��    �      � � � � � � �         � �      � �    � �  �   	 �  
 �     � � �    �   �     �    � �  �   �     /� .Y+� 0M+� 1N-7� 9:� ?� E� ,7� ?� I,� M�    �      � 	� � � !� *� �   4    / � �     / � �  	 & � �   ! � �    � �  �    � * . : � �    �   �     �    � �  �  -  
  F� Q� � U� � [Y� ]� c� d�+�=� gY� iN� lY� n:� gY� i:6� �+2� o :� .� >� .:*� � s� w*� � s� {-� ~�  W� ~� �W� �� &� 2� &:� � :		� +2� � :		�  W� m� ,� 7� ,:� �:		� +2� � :		� �Y� ��  W� 1� .:!� � �� ��� �� :!� � �� ��� ����*� -� �*� �  @ � � � � � � � � @ � � � � � � � �  �   � %  � � � %� .� 7� @� K� S� Z� f� r� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � �/�5
A �   �  Z 4 � �  � ( � �  �  � � 	 � - � �  � & � � 	 K � � �   � �   � �  : � � �   F � �    F � �  ) � �  %! � �  . � �  7 � �  �      %! � �  . � �  7 � �  �   E �    � � l �  � S �� ' & �� � % , �� B �V ��  �     � � �    �    � �  �   >     
� �Y+*� ��    �       �       
 � �     
 � �  �    �   �     �    � k  �   4      !� �� � � Q�    �      � �    @  �    � �   *   ! �  & ! �	 � . �  � ! �  � ! � 