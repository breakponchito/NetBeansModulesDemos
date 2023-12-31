����   4
      #org/openide/util/actions/NodeAction <init> ()V  org/openide/util/HelpCtx 
 (org/openide/actions/SaveAsTemplateAction
     (Ljava/lang/Class;)V  org/openide/loaders/DataObject  SaveAsTemplate
      org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
     iconResource ()Ljava/lang/String;
      ! org/openide/nodes/Node 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
  # $ % isCopyAllowed ()Z
 ' ( ) * + ;org/openide/actions/SaveAsTemplateAction$FolderNodeAcceptor getInstance ?()Lorg/openide/actions/SaveAsTemplateAction$FolderNodeAcceptor; - Title_SaveAsTemplate / CTL_SaveAsTemplate
 1 2 3 4 5 %org/openide/actions/NewTemplateAction getTemplateRoot ()Lorg/openide/nodes/Node; 7  CTL_SaveAsTemplate_TemplatesRoot
  9 : ; setDisplayName (Ljava/lang/String;)V
 = > ? @ A org/openide/nodes/NodeOperation 
getDefault #()Lorg/openide/nodes/NodeOperation;
 = C D E select �(Ljava/lang/String;Ljava/lang/String;Lorg/openide/nodes/Node;Lorg/openide/nodes/NodeAcceptor;Ljava/awt/Component;)[Lorg/openide/nodes/Node; G $org/openide/util/UserCancelException I org/openide/loaders/DataFolder
 	 K L M createNewTemplate C(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataFolder;)V O org/openide/cookies/SaveCookie
   N R S  save
  U V W copy B(Lorg/openide/loaders/DataFolder;)Lorg/openide/loaders/DataObject;
 H Y Z [ getChildren #()[Lorg/openide/loaders/DataObject;
  ] ^ % 
isTemplate
  ` a b setTemplate (Z)V
  d e f getPrimaryFile &()Lorg/openide/filesystems/FileObject; h javax.script.ScriptEngine j 
freemarker
 l m n o p "org/openide/filesystems/FileObject setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V
 	 r s t getAttributes 5(Lorg/openide/filesystems/FileObject;)Ljava/util/Map;
 	 v w x setTemplateAttributes 6(Lorg/openide/filesystems/FileObject;Ljava/util/Map;)V z java/io/IOException
 | } ~  � org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V � � � � � java/util/Map entrySet ()Ljava/util/Set; � � � � � java/util/Set iterator ()Ljava/util/Iterator; � � � � % java/util/Iterator hasNext � � � � next ()Ljava/lang/Object; � java/util/Map$Entry � !SystemFileSystem.localizingBundle � � � � getKey
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z � � � � getValue � java/util/HashMap
 � 
 l � s � ()Ljava/util/Enumeration; � � � � % java/util/Enumeration hasMoreElements � � � � nextElement
 l � � � getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
 � � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; SCRIPT_ENGINE_ATTR Ljava/lang/String; ConstantValue Code LineNumberTable LocalVariableTable this *Lorg/openide/actions/SaveAsTemplateAction; 
getHelpCtx ()Lorg/openide/util/HelpCtx; getName 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; surviveFocusChange enable ([Lorg/openide/nodes/Node;)Z 	curCookie  Lorg/openide/loaders/DataObject; i I activatedNodes [Lorg/openide/nodes/Node; StackMapTable � MethodParameters performAction ([Lorg/openide/nodes/Node;)V selected ex &Lorg/openide/util/UserCancelException; acceptor  Lorg/openide/nodes/NodeAcceptor; title 	rootTitle templatesNode Lorg/openide/nodes/Node; targetFolder  Lorg/openide/loaders/DataFolder; � org/openide/nodes/NodeAcceptor asynchronous d cookie  Lorg/openide/cookies/SaveCookie; newTemplate templateSample Ljava/io/IOException; source � ![Lorg/openide/loaders/DataObject; entry Ljava/util/Map$Entry; fo $Lorg/openide/filesystems/FileObject; 
attributes Ljava/util/Map; LocalVariableTypeTable ;Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>; 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; 
Exceptions 	Signature \(Lorg/openide/filesystems/FileObject;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V attrName 	attrValue Ljava/lang/Object; Ljava/util/HashMap; attributeNames Ljava/util/Enumeration; 9Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>; +Ljava/util/Enumeration<Ljava/lang/String;>; [(Lorg/openide/filesystems/FileObject;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; 
SourceFile SaveAsTemplateAction.java InnerClasses
 org/openide/nodes/Node$Cookie Cookie FolderNodeAcceptor Entry 1 	      � �  �    g      �   /     *� �    �       ( �        � �    � �  �   4     
� Y	� �    �       + �       
 � �    �   �   2     � �    �       / �        � �       �   /     *� �    �       5 �        � �   �     �     �   �     �    � %  �   ,     �    �       : �        � �   �     �    � �  �   �     4+� +�� �>+�� "+2� � M,� 
,� "� ������    �   "    > 	 ?  B  C  D * F , B 2 H �   *    � �   % � �    4 � �     4 � �  �    	�  �   	 �   �  �    �    � �  �  z  	   l� &M,� N.� :� 0:6� � 8� <-,� B:� :�2H� � H:6+�� *+2� � � J����  & 5 8 F  �   J    S  T  U  V  W & [ 0 \ 5 ` 8 ] : _ ; d A e I f S g Z h b g e f k k �   p  5  � �  :  � �  L  � �    l � �     l � �   h � �   ` � �   W � �   R � �  ; 1 � �  I # � �  �   . � 8  	 � � � �   F�  ��  H�  �    �    � %  �   ,     �    �       o �        � �   �     �    L M  �  w  
   �+N� P� NN-� 	-� Q +,� T::,� X:�66� 2:		� \� 
	:� 	����� _� � cgi� k� � c� c� q� u� N-� {�    y | y  �   J    x 
 y  z  |  }  ~ :  B � F � I ~ O � U � Z � i � y � | � } � � � �   R  :  � � 	 
 o � �   ^ � �   [ � �  }  � �    � � �     � � �    � � �  �   3 �  N�  	 	  H N   �  � � B y �   	 �   �   
 w x  �   �     G+� � � � M,� � � 4,� � � �N�-� � � �� ���*-� � � �-� � � k��ɱ    �       �  � - � 0 � C � F � �       $ � �    G � �     G � �  �      $ � �    G � �  �    �  �� # ��  �     y �   	 �   �   �    � 
 s t  �   �     @� �Y� �L*� �M,� � � +,� � � �N-� ���*-� �:� +-� �W���+�    �   .    �  �  �  �   � $ � ' � . � 3 � ; � > � �   4     � �  .  � �    @ � �    8 �    3  �      8 �   3  �    �  � ��  ��  �    �   �           	 	 ' 	  � �	