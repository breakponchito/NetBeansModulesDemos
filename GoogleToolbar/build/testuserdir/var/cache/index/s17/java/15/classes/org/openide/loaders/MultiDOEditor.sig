����   4 �
      java/lang/Object <init> ()V	  	 
   !org/openide/loaders/MultiDOEditor outer %Lorg/openide/loaders/MultiDataObject;	     mimeType Ljava/lang/String;	     useMultiview Z	     factory Ljava/lang/reflect/Method;
      java/lang/reflect/Method invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;   ,org/openide/text/CloneableEditorSupport$Pane " java/lang/Exception $ java/lang/IllegalStateException
 # &  ' (Ljava/lang/Throwable;)V
  ) * + createMultiViewPane g(Ljava/lang/String;Lorg/openide/loaders/MultiDataObject;)Lorg/openide/text/CloneableEditorSupport$Pane; - -org/netbeans/modules/openide/loaders/SimpleES
 / 0 1 2 3 java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z	  5 6 7 support )Lorg/openide/text/CloneableEditorSupport;
 9 : ; < = #org/openide/loaders/MultiDataObject getPrimaryEntry -()Lorg/openide/loaders/MultiDataObject$Entry;
 9 ? @ A getCookieSet ()Lorg/openide/nodes/CookieSet;
 C D E F G "org/openide/text/DataEditorSupport create �(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/MultiDataObject$Entry;Lorg/openide/nodes/CookieSet;Ljava/util/concurrent/Callable;)Lorg/openide/text/CloneableEditorSupport;
 / I J K cast &(Ljava/lang/Object;)Ljava/lang/Object; M org/openide/nodes/Node$Cookie
  O  P ;(Lorg/openide/loaders/MultiDataObject;Ljava/lang/String;Z)V
 R S T U V org/openide/nodes/CookieSet add 9(Ljava/lang/Class;Lorg/openide/nodes/CookieSet$Factory;)V
  X Y Z call 0()Lorg/openide/text/CloneableEditorSupport$Pane;
 \ ] ^ _ ` org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; b java/lang/ClassLoader
 \ d e f lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 h i j k l java/lang/Thread currentThread ()Ljava/lang/Thread;
 h n o p getContextClassLoader ()Ljava/lang/ClassLoader;
 / r s p getClassLoader u *org.netbeans.core.api.multiview.MultiViews
 / w x y forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class; { createCloneableMultiView } java/lang/String  java/io/Serializable
 / � � � 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method; � java/lang/NoSuchMethodException	 9 � � � LOG Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level; � Cannot find a method
 � � � � � java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V �  java/lang/ClassNotFoundException � 9Not using multiviews for MultiDataObject.registerEditor()
 � � � � info (Ljava/lang/String;)V	 � � � � FINE � Cannot find a class � java/util/concurrent/Callable � #org/openide/nodes/CookieSet$Factory Code LineNumberTable LocalVariableTable this #Lorg/openide/loaders/MultiDOEditor; MethodParameters isMultiViewAvailable ()Z StackMapTable ex Ljava/lang/Exception; 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; createCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; klass Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<TT;>; � )org/openide/loaders/MultiDataObject$Entry � java/lang/Throwable 	Signature ?<T::Lorg/openide/nodes/Node$Cookie;>(Ljava/lang/Class<TT;>;)TT; registerEditor multi mime ed ()Ljava/lang/Object; <clinit> 
multiviews !Ljava/lang/NoSuchMethodException; "Ljava/lang/ClassNotFoundException; l Ljava/lang/ClassLoader; m Ljava/lang/Class<*>; �Ljava/lang/Object;Ljava/util/concurrent/Callable<Lorg/openide/text/CloneableEditorSupport$Pane;>;Lorg/openide/nodes/CookieSet$Factory; 
SourceFile MultiDOEditor.java InnerClasses � 'org/openide/text/CloneableEditorSupport Pane Entry � org/openide/nodes/Node Cookie Factory 0    � �   6 7                           P  �   l     *� *+� *,� *� �    �       @  A 	 B  C  D �   *     � �                     �              � �  �   /      � � � �    �       G �    
@  * +  �   {     !� � Y*SY+S� � �M� #Y,� %�      !  �       L  M  N �       	 � �    !       !    �    W ! �   	        Y Z  �   O     � � *� *� � (��    �       T  U  W �        � �   �     �     ! �     �    � �  �       Q+,� .� I*YM�*� 4� (**� *� � 8*� � >*� � *� � B� 4,ç N,�-�+*� 4� H� L��   ; >   > A >    �   * 
   \ 	 ]  ^  _  ` $ a 3 _ 9 d C e O g �       Q � �     Q � �  �       Q � �  �   F � 2   /    9 � R�     /    9 � R �D ��  �    �   �    � �     �   	 � P  �   f     � Y*+� NN*� >,-� Q�    �       k  l  m �   *     �       �           � �  �    �   �     A Y �  �   /     *� W�    �       % �        � �   �     ! �     �    �   �  E     m� [a� c� aK*� 
� g� mK*� 	� qKLt*� vM,z� /Y|SY~S� �L� (M� �� ��,� �� M� ��� �� �� ��,� �+� �  # @ C � # @ S �  �   F    )  *  +  -  . ! 0 # 2 + 3 @ 9 C 4 D 5 P 9 S 6 T 7 \ 8 h : l ; �   4  +  � �  D  � �  T  � �   ` � �   # I �   �     +  � �  �    �  a	� !  a   �O �  �    � �    � �   "   � �	 � 9 � L � �	 � R �	