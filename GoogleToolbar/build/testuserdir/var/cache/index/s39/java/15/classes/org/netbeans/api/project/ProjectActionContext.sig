����   4	      -org/netbeans/api/project/ProjectActionContext profiles Ljava/util/Set;	   	 
 
properties Ljava/util/Map;	     configuration /Lorg/netbeans/spi/project/ProjectConfiguration;	     projectAction Ljava/lang/String;	     lookup Lorg/openide/util/Lookup;
      java/lang/Object <init> ()V	     !  org/openide/util/Lookup EMPTY	  # $ % project "Lorg/netbeans/api/project/Project;
 ' ( ) * + java/util/Collections emptyMap ()Ljava/util/Map;
 ' - . / unmodifiableMap  (Ljava/util/Map;)Ljava/util/Map;
 ' 1 2 3 emptySet ()Ljava/util/Set;
 ' 5 6 7 unmodifiableSet  (Ljava/util/Set;)Ljava/util/Set;
  9 : ; 
newBuilder [(Lorg/netbeans/api/project/Project;)Lorg/netbeans/api/project/ProjectActionContext$Builder;
 = > ? @ A 5org/netbeans/api/project/ProjectActionContext$Builder forProjectAction K(Ljava/lang/String;)Lorg/netbeans/api/project/ProjectActionContext$Builder;
 = C D E useConfiguration h(Lorg/netbeans/spi/project/ProjectConfiguration;)Lorg/netbeans/api/project/ProjectActionContext$Builder;
 = G H I withProfiles O(Ljava/util/Collection;)Lorg/netbeans/api/project/ProjectActionContext$Builder;
 = K L M withProperties H(Ljava/util/Map;)Lorg/netbeans/api/project/ProjectActionContext$Builder;
 = O  P %(Lorg/netbeans/api/project/Project;)V
  R S T 
getDefault ()Lorg/openide/util/Lookup;
  V W X 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection; Z [ \ ] ^ java/util/Collection iterator ()Ljava/util/Iterator; ` a b c d java/util/Iterator hasNext ()Z ` f g h next ()Ljava/lang/Object;
  j k l 
getProject $()Lorg/netbeans/api/project/Project;
  O
 o p q r s org/openide/util/lookup/Lookups fixed .([Ljava/lang/Object;)Lorg/openide/util/Lookup;
 u v w x y java/util/Arrays copyOf )([Ljava/lang/Object;I)[Ljava/lang/Object; { 0[Lorg/netbeans/api/project/ProjectActionContext; } #org/openide/util/lookup/ProxyLookup
 |   � ([Lorg/openide/util/Lookup;)V
 o � � � executeWith 0(Lorg/openide/util/Lookup;Ljava/lang/Runnable;)V � java/lang/Exception   � � � run ~([Ljava/lang/Object;Lorg/netbeans/api/project/ProjectActionContext$ProjectCallback;[Ljava/lang/Exception;)Ljava/lang/Runnable;
  � � � sneakyThrow (Ljava/lang/Throwable;)V
 � � � � � java/util/Objects hashCode (Ljava/lang/Object;)I
  � � � getClass ()Ljava/lang/Class;
 � � � � equals '(Ljava/lang/Object;Ljava/lang/Object;)Z � � � � h =org/netbeans/api/project/ProjectActionContext$ProjectCallback call � java/lang/Error � java/lang/RuntimeException 	Signature 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>; #Ljava/util/Set<Ljava/lang/String;>; Code LineNumberTable LocalVariableTable this /Lorg/netbeans/api/project/ProjectActionContext; MethodParameters RuntimeInvisibleAnnotations -Lorg/netbeans/api/annotations/common/NonNull; 	getLookup getProjectAction ()Ljava/lang/String; 2Lorg/netbeans/api/annotations/common/CheckForNull; getConfiguration 1()Lorg/netbeans/spi/project/ProjectConfiguration; getProperties StackMapTable � java/util/Map 7()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>; getProfiles � java/util/Set %()Ljava/util/Set<Ljava/lang/String;>; newDerivedBuilder 9()Lorg/netbeans/api/project/ProjectActionContext$Builder; p find S(Lorg/netbeans/api/project/Project;)Lorg/netbeans/api/project/ProjectActionContext; pac apply G(Ljava/lang/Runnable;[Lorg/netbeans/api/project/ProjectActionContext;)V add all r Ljava/lang/Runnable; otherProjectContexts localDefLookup e Ljava/lang/Throwable; 
Exceptions � java/lang/Throwable 5<E:Ljava/lang/Throwable;>(Ljava/lang/Throwable;)V^TE; �(Lorg/netbeans/api/project/ProjectActionContext$ProjectCallback;[Lorg/netbeans/api/project/ProjectActionContext;)Ljava/lang/Object; ?Lorg/netbeans/api/project/ProjectActionContext$ProjectCallback; res [Ljava/lang/Object; t [Ljava/lang/Exception; LocalVariableTypeTable GLorg/netbeans/api/project/ProjectActionContext$ProjectCallback<TV;TE;>; � � �<V:Ljava/lang/Object;E:Ljava/lang/Exception;>(Lorg/netbeans/api/project/ProjectActionContext$ProjectCallback<TV;TE;>;[Lorg/netbeans/api/project/ProjectActionContext;)TV;^TE; ()I hash I #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; (Ljava/lang/Object;)Z obj Ljava/lang/Object; other lambda$apply$0 k([Ljava/lang/Object;Lorg/netbeans/api/project/ProjectActionContext$ProjectCallback;[Ljava/lang/Exception;)V td ex Ljava/lang/Exception; 
access$000 J(Lorg/netbeans/api/project/ProjectActionContext;)Lorg/openide/util/Lookup; x0 
access$002 c(Lorg/netbeans/api/project/ProjectActionContext;Lorg/openide/util/Lookup;)Lorg/openide/util/Lookup; x1 
access$102 U(Lorg/netbeans/api/project/ProjectActionContext;Ljava/lang/String;)Ljava/lang/String; 
access$202 �(Lorg/netbeans/api/project/ProjectActionContext;Lorg/netbeans/spi/project/ProjectConfiguration;)Lorg/netbeans/spi/project/ProjectConfiguration; 
access$300 @(Lorg/netbeans/api/project/ProjectActionContext;)Ljava/util/Map; 
access$302 O(Lorg/netbeans/api/project/ProjectActionContext;Ljava/util/Map;)Ljava/util/Map; 
access$400 @(Lorg/netbeans/api/project/ProjectActionContext;)Ljava/util/Set; 
access$402 O(Lorg/netbeans/api/project/ProjectActionContext;Ljava/util/Set;)Ljava/util/Set; 
SourceFile ProjectActionContext.java BootstrapMethods
 "java/lang/invoke/LambdaMetafactory metafactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; 
  � � InnerClasses Builder ProjectCallback %java/lang/invoke/MethodHandles$Lookup java/lang/invoke/MethodHandles Lookup 1       $ %              	 
  �    �     �    �          P  �   Q     *� *� � *+� "�    �       A  \  B  C �        � �      $ %  �    $    k l  �   /     *� "�    �       d �        � �   �     �    � T  �   /     *� �    �       p �        � �    � �  �   /     *� �    �       z �        � �   �     �    � �  �   /     *� �    �       � �        � �   �     �    � +  �   L     *� � 	� &� 
*� � ,�    �       � �        � �   �    F � �    � �     �    � 3  �   L     *� � 	� 0� 
*� � 4�    �       � �        � �   �    F � �    � �     �    � �  �   b     $*� "� 8*� � <*� � B*� � F*� � J�    �       �  �  �  �   � # � �       $ � �   �     �   	 : ;  �   3     	� =Y*� N�    �       � �       	 � %   �    �   �     �   	 � �  �   �     7� Q� U� Y L+� _ � +� e � M*,� i� ,���� Y*� m�    �      . !/ )0 +2 .3 �     ! 
 � �    7 � %   �    �  `�  �    �   �     �   � � �  �   �     R,� ,�� � Y*S� nN� ,,�`� t� z:�d*S� nN� |Y� Y-SY� QS� ~:+� ��    �   "   @ 	A C %D .E 4G KH QI �   H    �   %  � {    R � �     R � �    R � {  4  �   K  �   �   
 	�   �   	 �   �   
 � �  �   ,     *�    �      M �        � �   �     � �    �   �    � � � �  �  S     {,� ,�� � Y*S� nN� ,,�`� t� z:�d*S� nN� |Y� Y-SY� QS� ~:� :� �:+� �  � �2� 2� ��2�    �   6   \ 	] _ %` .a 4c Kd Qe Wg fp mq ts vu �   \ 	   �   %  � {    { � �     { � �    { � {  4 G �   K 0 �   Q * � �  W $ � �  �       { � �  �    	�  � A  � � �     � �   	 �   �   �    �  � �  �   �     R<;h*� "� �`<;h*� � �`<;h*� � �`<;h*� � �`<;h*� � �`<;h*� � �`<�    �   "   � � � � )� 6� C� P� �       R � �    P � �  �     �    � �  �       {*+� �+� �*� �+� �� �+� M*� ,� � �� �*� ",� "� �� �*� ,� � �� �*� ,� � �� �*� ,� � �� �*� ,� � ��    �   J   � � � � � � � � -� /� =� ?� M� O� ]� _� m� o� �        { � �     { � �   \ � �  �    �   �    �   �     �  
 � �  �   �     *+� � S� N-�N,-S�    	  �   	  �   	  �  �      i 	n j k l m o �   4    � �    � �     � �      � �     � �  �    L �B � � �  �   /     *� �    �       > �        � �   � �  �   ;     *+Z� �    �       > �        � �      �   � �  �   ;     *+Z� �    �       > �        � �      �   � �  �   ;     *+Z� �    �       > �        � �      �   � �  �   /     *� �    �       > �        � �   � �  �   ;     *+Z� �    �       > �        � �      � 
  � �  �   /     *� �    �       > �        � �   � �  �   ;     *+Z� �    �       > �        � �      �    �         	
	     =   � 	 