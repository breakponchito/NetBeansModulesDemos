����   4 �
      >org/openide/loaders/TemplateWizard$InstantiatingIteratorBridge getOriginalIterator 6()Lorg/openide/WizardDescriptor$InstantiatingIterator;
  	 
   java/lang/Object <init> ()V	     instantiatingIterator 4Lorg/openide/WizardDescriptor$InstantiatingIterator;      2org/openide/WizardDescriptor$InstantiatingIterator addChangeListener %(Ljavax/swing/event/ChangeListener;)V     current &()Lorg/openide/WizardDescriptor$Panel;     hasNext ()Z    !  hasPrevious  # $ % name ()Ljava/lang/String;  ' (  	nextPanel  * +  previousPanel  - .  removeChangeListener  0 1 2 
initialize !(Lorg/openide/WizardDescriptor;)V 4 :org/openide/WizardDescriptor$ProgressInstantiatingIterator	  6 7 8 $assertionsDisabled Z
 : ; < = > "org/openide/loaders/TemplateWizard 
access$400 P(Lorg/openide/loaders/TemplateWizard;)Lorg/netbeans/api/progress/ProgressHandle; @ java/lang/AssertionError B ProgressHandle cannot be null.
 ? D  E (Ljava/lang/Object;)V 3 G H I instantiate ;(Lorg/netbeans/api/progress/ProgressHandle;)Ljava/util/Set;  K H L ()Ljava/util/Set;
 : N O P 
access$100 ()Ljava/util/logging/Logger;	 R S T U V java/util/logging/Level WARNING Ljava/util/logging/Level; X OWizard iterator of type {0} illegally returned null from the instantiate method  Z [ \ getClass ()Ljava/lang/Class;
 ^ _ ` a % java/lang/Class getName
 c d e f g java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
 i j k l L java/util/Collections emptySet n java/util/LinkedHashSet p q r s t java/util/Set size ()I
 m v  w (I)V p y z { iterator ()Ljava/util/Iterator; }  ~ java/util/Iterator } � � � next ()Ljava/lang/Object; � java/lang/StringBuilder
 � 	 � Null DataObject provided by 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � � % toString � org/openide/loaders/DataObject p � � � add (Ljava/lang/Object;)Z � "org/openide/filesystems/FileObject
 � � � � find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject; � org/openide/nodes/Node
 � � � � 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;  � � 2 uninitialize
 ^ � �  desiredAssertionStatus � +org/openide/loaders/TemplateWizard$Iterator 	Signature TLorg/openide/WizardDescriptor$InstantiatingIterator<Lorg/openide/WizardDescriptor;>; 7(Lorg/openide/WizardDescriptor$InstantiatingIterator;)V Code LineNumberTable LocalVariableTable this @Lorg/openide/loaders/TemplateWizard$InstantiatingIteratorBridge; it LocalVariableTypeTable MethodParameters W(Lorg/openide/WizardDescriptor$InstantiatingIterator<Lorg/openide/WizardDescriptor;>;)V l "Ljavax/swing/event/ChangeListener; F()Lorg/openide/WizardDescriptor$Panel<Lorg/openide/WizardDescriptor;>; '(Lorg/openide/loaders/TemplateWizard;)V wiz $Lorg/openide/loaders/TemplateWizard; 5(Lorg/openide/loaders/TemplateWizard;)Ljava/util/Set; workSet Ljava/util/Set; dobj  Lorg/openide/loaders/DataObject; obj Ljava/lang/Object; 	resultSet Ljava/util/Set<*>; 1Ljava/util/Set<Lorg/openide/loaders/DataObject;>; StackMapTable 
Exceptions � java/io/IOException W(Lorg/openide/loaders/TemplateWizard;)Ljava/util/Set<Lorg/openide/loaders/DataObject;>; 
access$000 v(Lorg/openide/loaders/TemplateWizard$InstantiatingIteratorBridge;)Lorg/openide/WizardDescriptor$InstantiatingIterator; x0 <clinit> 
SourceFile TemplateWizard.java InnerClasses InstantiatingIteratorBridge � org/openide/WizardDescriptor InstantiatingIterator � "org/openide/WizardDescriptor$Panel Panel ProgressInstantiatingIterator � org/openide/nodes/Node$Cookie Cookie Iterator      �      �    � 7 8      �  �   X     
*� *+� �    �      � � 	� �       
 � �     
 �   �       
 � �  �    �   �    �     �   /     *� �    �      � �        � �       �   C     *� +�  �    �   
   � 
� �        � �      � �  �    �       �   4     
*� �  �    �      � �       
 � �   �    �     �   4     
*� �  �    �      � �       
 � �    !   �   4     
*� �  �    �      � �       
 � �    $ %  �   4     
*� � " �    �        �       
 � �    (   �   8     
*� � & �    �   
    	 �       
 � �    +   �   8     
*� � ) �    �   
    		 �       
 � �    .   �   C     *� +� , �    �   
    
 �        � �      � �  �    �    1 �  �   C     *� +� / �    �   
    
 �        � �      � �  �    �    H �  �      *� � 3� .� 5� +� 9� � ?YA� C�*� � 3+� 9� F M� *� � J M,� � M� QW*� � Y � ]� b� h�� mY,� o � u:,� x :� | � ��  :� 5� &� !� ?Y� �Y� ��� �*� � �� �� C�� �� � �� � W� C� �� � �� �N-� � W� &� �� � ��� �� �N-� -� � W��l�    �   V    
 ! 5 ? C Z ^! m" �# �$ �% �& �' �( �) �* �+ ,	/0 �   R  2  � �  �  � �  �  � �  � � � �    � �     � �  ? � � �  m � � �  �      2  � �  ? � � �  m � � �  �   # 
!� 	 p�   p }� ; � "�  �     � �    �   �    �  � �  �   C     *� +� � �    �   
   4 
5 �        � �      � �  �    �   � �  �   /     *� �    �      � �        � �    �   �   4      :� �� � � 5�    �      � �    @  �    � �   2   : � 
  � �	 � � �	 3 � �	 � � �	 � : �	