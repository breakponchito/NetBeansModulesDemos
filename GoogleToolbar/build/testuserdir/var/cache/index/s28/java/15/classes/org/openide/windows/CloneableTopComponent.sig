����   4 �
      )org/openide/windows/CloneableTopComponent isLastActive ()Z
   	 
 unsetLastActivated ()V
    
 setLastActivated
     
  org/openide/windows/TopComponent <init>
     cloneComponent $()Lorg/openide/windows/TopComponent;
     createClonedObject -()Lorg/openide/windows/CloneableTopComponent;
     getReference 1()Lorg/openide/windows/CloneableTopComponent$Ref;
    ! " setReference 2(Lorg/openide/windows/CloneableTopComponent$Ref;)V
  $ %  cloneTopComponent ' &org/openide/util/io/NbMarshalledObject
 & )  * (Ljava/lang/Object;)V
 & , - . get ()Ljava/lang/Object; 0 java/io/IOException 2 java/lang/AssertionError
 1 ) 5  java/lang/ClassNotFoundException	  7 8 9 ref /Lorg/openide/windows/CloneableTopComponent$Ref; ; -org/openide/windows/CloneableTopComponent$Ref
 : =  > [(Lorg/openide/windows/CloneableTopComponent;Lorg/openide/windows/CloneableTopComponent$1;)V	  @ A 9 EMPTY C "java/lang/IllegalArgumentException
 E F G H I org/openide/util/NbBundle 	getBundle -(Ljava/lang/Class;)Ljava/util/ResourceBundle; K EXC_CannotAssign
 M N O P Q java/util/ResourceBundle 	getString &(Ljava/lang/String;)Ljava/lang/String;
 B S  T (Ljava/lang/String;)V
 : V W X 
access$100 ](Lorg/openide/windows/CloneableTopComponent$Ref;Lorg/openide/windows/CloneableTopComponent;)V
 : Z [ X 
access$200
  ] ^ 
 componentOpened
  ` a b 	getLookup ()Lorg/openide/util/Lookup; d (org/openide/windows/CloneableOpenSupport
 f g h i j org/openide/util/Lookup lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 l m n o p 2org/openide/windows/CloneableOpenSupportRedirector notifyOpened -(Lorg/openide/windows/CloneableOpenSupport;)V
  r s 
 componentClosed
  u v  isOpened
 l x y p notifyClosed
 : { | } 
access$300 ](Lorg/openide/windows/CloneableTopComponent$Ref;Lorg/openide/windows/CloneableTopComponent;)Z
   � � readExternal (Ljava/io/ObjectInput;)V	  � � � serialVersion S � � � � . java/io/ObjectInput 
readObject
  � � � writeExternal (Ljava/io/ObjectOutput;)V � � � � * java/io/ObjectOutput writeObject	  � � � isLastActivated Z
 :  � java/io/Externalizable � *org/openide/windows/TopComponent$Cloneable serialVersionUID J ConstantValueC�n�j� Code LineNumberTable LocalVariableTable this +Lorg/openide/windows/CloneableTopComponent; clone top o (Lorg/openide/util/io/NbMarshalledObject; ex Ljava/io/IOException; "Ljava/lang/ClassNotFoundException; StackMapTable another MethodParameters cos *Lorg/openide/windows/CloneableOpenSupport; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; � java/lang/Throwable canClose #(Lorg/openide/windows/Workspace;Z)Z 	workspace Lorg/openide/windows/Workspace; last Ljava/lang/SuppressWarnings; value deprecation 	closeLast oi Ljava/io/ObjectInput; 
Exceptions oo Ljava/io/ObjectOutput; 
access$600 .(Lorg/openide/windows/CloneableTopComponent;)V x0 
access$700 
access$800 .(Lorg/openide/windows/CloneableTopComponent;)Z <clinit> 
SourceFile CloneableTopComponent.java InnerClasses Ref � +org/openide/windows/CloneableTopComponent$1 	Cloneable!    � �   � �  �    �  A 9    8 9    � �      
  �   3     *� �    �   
    O  P �        � �    � .  �   /     *� �    �       V �        � �    %   �   K     *� L+*� � +�    �       `  c  e �        � �    
 � �      �   /     *� #�    �       l �        � �       �   �     %� &Y*� (L+� +� �L� 1Y+� 3�L� 1Y+� 3�      /     4  �       z 	 {  |  }  ~   �   *  	  � �   	 � �   	 � �    % � �   �   
 Q /I 4 1    �   T     *� 6� *� :Y*� <� 6*� 6�    �       �  �  � �        � �   �     1 ! "  �   �     3+� ?� � BY� DJ� L� R�*� 6� *� 6*� U+*� Y*+� 6�    �   "    �  �  �  �   � ( � - � 2 � �       3 � �     3 � 9  �     �    �    ^ 
  �   x     "*� \*� *� Y*� _c� e� cL+� +� k�    �       �  �  �  �  � ! � �       " � �    	 � �  �    � ! c �     �    s 
  �   �     9*� q*� t� 0*� _c� e� cL+� +� w*� *� zW� M*� *� zW,��     ,    �   * 
   �  �  �  �  �   � ) � , � 6 � 8 � �       � �    9 � �   �     K �  �   �   M     *� t� �*� *� z�    �       �  � 	 � �        � �   �    	  � �  �   ^     � *� *� z��    �       �  �  � �         � �      � �     � �  �     �   	 �   �   �     �  �[ s �  �   �   ,     �    �       � �        � �    � �  �   {      *+� ~*� �� +� � � :M,� *,� �    �       �  �  �  �  �  � �       	 8 9      � �       � �  �     �     / 4 �    �    � �  �   L     *+� �+*� 6� � �    �       �  �  � �        � �      � �  �     / �    �       �   /     *� ��    �       � �        � �     
  �   4     *� ��    �   
    �  � �        � �    	 
  �   4     *� ��    �   
    �  � �        � �   � �  �   /     *� �    �       / �        � �   � �  �   /     *� �    �       / �        � �   � �  �   /     *� �    �       / �        � �    � 
  �   #      � :Y� �� ?�    �       B  �    � �     :  � 	 �     �  �	