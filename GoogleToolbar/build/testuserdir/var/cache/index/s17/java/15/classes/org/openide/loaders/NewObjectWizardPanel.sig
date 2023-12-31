����   4 �
      java/lang/Object <init> ()V	  	 
   (org/openide/loaders/NewObjectWizardPanel newObjectPanelUI $Lorg/openide/loaders/NewObjectPanel;  "org/openide/loaders/NewObjectPanel
  	     listener "Ljavax/swing/event/ChangeListener;
     addChangeListener %(Ljavax/swing/event/ChangeListener;)V  java/lang/IllegalStateException
  
     removeChangeListener
     ! 
getPanelUI &()Lorg/openide/loaders/NewObjectPanel; # org/openide/util/HelpCtx
 " %  & (Ljava/lang/Class;)V	  ( ) * targetFolder  Lorg/openide/loaders/DataFolder;
 , - . / 0 org/openide/loaders/DataFolder getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 2 3 4 5 6 "org/openide/filesystems/FileObject canWrite ()Z 8 #org/openide/loaders/TemplateWizard2 : MSG_fs_is_readonly
 < = > ? @ org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String; B isRemoteAndSlow
 2 D E F getAttribute &(Ljava/lang/String;)Ljava/lang/Object; H java/lang/Boolean
 G J K 6 booleanValue
  M N O getNewObjectName ()Ljava/lang/String;	  Q R S 	extension Ljava/lang/String;
 2 U V W getFileObject J(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; Y MSG_file_already_exist
 2 [ \ O 
getNameExt
 < ^ ? _ I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
 a b c d 6 org/openide/util/Utilities 	isWindows
 a f g h getOperatingSystem ()I
 j k l m n "org/openide/loaders/TemplateWizard checkCaseInsensitiveName K(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Z	  p q r wizard $Lorg/openide/loaders/TemplateWizard; t org/openide/WizardDescriptor v WizardPanel_errorMessage
 j x y z putProperty '(Ljava/lang/String;Ljava/lang/Object;)V
 j | } ~ getTemplate "()Lorg/openide/loaders/DataObject;
 � - � org/openide/loaders/DataObject
 2 � � O getExt
 j � � � getTargetFolder "()Lorg/openide/loaders/DataFolder; � java/io/IOException
 � � � � � org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
  � � O defaultNewObjectName
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z
 j � � � setTargetName (Ljava/lang/String;)V
  � � � storeSettings !(Lorg/openide/WizardDescriptor;)V
  � � � readSettings � ,org/openide/WizardDescriptor$FinishablePanel Code LineNumberTable LocalVariableTable this *Lorg/openide/loaders/NewObjectWizardPanel; StackMapTable l MethodParameters getComponent ()Ljava/awt/Component; getHelp ()Lorg/openide/util/HelpCtx; isValid f $Lorg/openide/filesystems/FileObject; obj Ljava/lang/Object; makeFileExistsChecks Z errorMsg isOK x Ljava/io/IOException; settings Lorg/openide/WizardDescriptor; template  Lorg/openide/loaders/DataObject; name isFinishPanel (Ljava/lang/Object;)V 	Signature `Ljava/lang/Object;Lorg/openide/WizardDescriptor$FinishablePanel<Lorg/openide/WizardDescriptor;>; 
SourceFile NewObjectWizardPanel.java InnerClasses FinishablePanel 0    �              ) *    R S    q r         �   /     *� �    �       ! �        � �      !  �   a     "*� � *� Y� � *� *� � *� �    �       /  0  1  3 �       " � �   �         �   r     $*� � � Y� �*� � *� +� *+� �    �       ;  <  =  > # ? �       $ � �     $ �   �     �    �       �   ^     *� *� � *� +� �    �       E  F  G  H �        � �      �   �     �    �    � �  �   /     *� �    �       S �        � �    � �  �   4     
� "Y� $�    �       Z �       
 � �    � 6  �  �     �L=*� '� +� 1� 79� ;L=� �*� '� +A� CN6-� G� -� G� I� � 6� f*� '� +*� � L*� P� T:� 7X� Z� ]L=� `� � e � ,*� '� +*� � L*� P� i� 7X*� � L� ]L=*� ou+� w�    �   V    e  f  h  i  j  l  m , n / o 6 p G q L s c t h u u v w x � y � z � { � � � � �   >  c L � �  , � � �  / � � �    � � �    � � S   � � �  �    �  �� ( @� / 2� (  � �  �   �     3*+� j� o*� o� {M,� *,� � �� P**� o� �� '� N-� ��   * - �  �   & 	   �  �  �  �  � * � - � . � 2 � �   *  .  � �    3 � �     3 � �   # � �  �    �  �M � �    �    � �  �   �     )*� � LM,� �� �� M*� o� *� o,� �*� o�    �       �  �  �  �  � # � ( � �        ) � �     ) � �   ! � S  �   	 �  � �    �    � 6  �   ,     �    �       � �        � �  A � �  �   3     	*+� s� ��    �       ! �       	 � �   �    � A � �  �   3     	*+� s� ��    �       ! �       	 � �   �    �   �    � �    � �   
  � s �	