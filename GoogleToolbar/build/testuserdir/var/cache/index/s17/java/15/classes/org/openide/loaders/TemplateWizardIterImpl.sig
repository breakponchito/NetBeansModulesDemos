����   4 �
      java/lang/Object <init> ()V	  	 
   *org/openide/loaders/TemplateWizardIterImpl showingPanel Z	     newIteratorInstalled	     listenerList %Ljavax/swing/event/EventListenerList;	     iteratorInitialized	     wizardInstance $Lorg/openide/loaders/TemplateWizard;
       "org/openide/loaders/TemplateWizard templateChooser &()Lorg/openide/WizardDescriptor$Panel;
  " #  fireStateChanged	  % & ' iterator -Lorg/openide/loaders/TemplateWizard$Iterator;	  ) * + iteratorListener "Ljavax/swing/event/ChangeListener; - . / 0 1 +org/openide/loaders/TemplateWizard$Iterator removeChangeListener %(Ljavax/swing/event/ChangeListener;)V - 3 4 5 uninitialize '(Lorg/openide/loaders/TemplateWizard;)V - 7 8 5 
initialize : ,org/openide/loaders/TemplateWizardIterImpl$1
 9 <  = /(Lorg/openide/loaders/TemplateWizardIterImpl;)V - ? @ 1 addChangeListener
  B C D defaultIterator /()Lorg/openide/loaders/TemplateWizard$Iterator;
  F G H setIterator 1(Lorg/openide/loaders/TemplateWizard$Iterator;Z)V
  J K   
firstPanel
  M N D getIterator - P Q   current S   - U V W name ()Ljava/lang/String; - Y Z [ hasNext ()Z - ] ^ [ hasPrevious - ` a  	nextPanel - c d  previousPanel f #javax/swing/event/EventListenerList
 e  i  javax/swing/event/ChangeListener
 e k l m add -(Ljava/lang/Class;Ljava/util/EventListener;)V
 e o p m remove r "java/lang/IllegalArgumentException t java/lang/StringBuilder
 s  w <WizardDescriptor must be instance of TemplateWizard, but is 
 s y z { append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 s } z ~ -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 s � � W toString
 q �  � (Ljava/lang/String;)V
  � � � getTemplate "()Lorg/openide/loaders/DataObject;	  � �  $assertionsDisabled � java/lang/AssertionError � 8wizardInstance cannot be null when instantiate() called.
 � �  � (Ljava/lang/Object;)V
  � � � instantiateNewObjects ;(Lorg/netbeans/api/progress/ProgressHandle;)Ljava/util/Set;	 � � � � � org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;
 � � � � writeAccess (Ljava/lang/Runnable;)V
 e � � � getListenerList ()[Ljava/lang/Object; � javax/swing/event/ChangeEvent
 � � h � � � stateChanged "(Ljavax/swing/event/ChangeEvent;)V
 � � � � [ java/lang/Class desiredAssertionStatus � %org/openide/WizardDescriptor$Iterator � java/lang/Runnable Code LineNumberTable LocalVariableTable this ,Lorg/openide/loaders/TemplateWizardIterImpl; 	Signature F()Lorg/openide/WizardDescriptor$Panel<Lorg/openide/WizardDescriptor;>; first it notify StackMapTable MethodParameters � "org/openide/WizardDescriptor$Panel � java/lang/String p1 Ljavax/swing/event/ChangeEvent; listener !(Lorg/openide/WizardDescriptor;)V wiz Lorg/openide/WizardDescriptor; instantiate ()Ljava/util/Set; 
Exceptions � java/io/IOException 3()Ljava/util/Set<Lorg/openide/loaders/DataObject;>; handle *Lorg/netbeans/api/progress/ProgressHandle; ](Lorg/netbeans/api/progress/ProgressHandle;)Ljava/util/Set<Lorg/openide/loaders/DataObject;>; run i I e 	listeners [Ljava/lang/Object; � #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile TemplateWizardIterImpl.java InnerClasses � org/openide/WizardDescriptor Panel Iterator      � h �   & '    * +                            �          �   S     *� *� *� *� *� �    �       #  - 	 .  1  8 �        � �    K    �   2     *� � �    �       > �        � �   �    �  �   �   <     
*� *� !�    �       D  E 	 F �       
 � �    G H  �   �     l*� $� $*� � *� $*� (� , *� $*� � 2 +*� � 6 *� 9Y*� ;� (+*� (� > *� *+� $� *� � *� *� *� !�    �   :    K  L  M ( O 2 P > U H V M X R Y V [ ] \ b ^ g _ k a �        l � �     l � '    l �   �    (9 �   	 �   �    N D  �   �     8*� $� **� � A� E*� � *� $� *� $*� � 6 *� *� $�    �       f  h  j  k ! l . m 3 p �       8 � �   �      Q    �   O     *� � 
*� I� *� L� O �    �       w �        � �   �    H � �    �  V W  �   M     *� � R� *� L� T �    �        �        � �   �    H �  Z [  �   O     *� � *� L� X � � �    �       � �        � �   �    @  ^ [  �   N     *� � *� L� \ � � �    �       � �        � �   �    @  a   �   j     %*� � 
*� � *� *� � *� L� _ �    �       �  �  �  � $ � �       % � �   �      d   �   g     #*� L� \ � *� L� b � *� *� �    �       �  �  �  � " � �       # � �   �    	  � �  �   =     *� !�    �   
    �  � �        � �      � �  �    �  ! @ 1  �   f     *� � *� eY� g� *� h+� j�    �       �  �  �  � �        � �      � +  �     �    �   ! 0 1  �   W     *� � *� h+� n�    �       �  �  � �        � �      � +  �     �    �    8 �  �   �     f+� � � qY� sY� uv� x+� |� � ��*+� � *� � �� *� � *� *� *� $M,� *� � ,*� � 6 *� �    �   2    �  � " � * � 4 � < � A � F � K � V � ` � e � �        f � �     f � �  K  � '  �    "	�  - �    �    4   �   i     &*� $� *� � *� $*� � 2 *� *� �    �       �  �  �   � % � �       & � �   �       � �  �   W      � �� *� � � �Y�� ��*� � ��    �   
    �  � �         � �   �     �     � �    �  � �  �   a      � �� *� � � �Y�� ��*� +� ��    �   
    �  � �         � �       � �  �     �     � �    �   �    �  #   �   6     � �*� ��    �   
    �  � �        � �    �   �   �     E*� � �L*� � �M,�d>� ,,2h� +� � �Y*� �L,`2� h+� � ����ֱ    �   .    �  �  � 
 �  �  � # � ' � 0 � > � D � �   *   - � �    E � �   
 ; � �   3 � �  �    �  � ��  �     �    �   �   4      � �� � � ��    �       # �    @  �    � �   "  � � �	 -  �	 9       � � �	