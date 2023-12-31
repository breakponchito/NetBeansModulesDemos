����   4 �
      java/lang/Object <init> ()V
  	 
   org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;  5org/netbeans/spi/project/ProjectManagerImplementation
     lookup %(Ljava/lang/Class;)Ljava/lang/Object;	      'org/netbeans/api/project/ProjectManager impl 7Lorg/netbeans/spi/project/ProjectManagerImplementation;  java/lang/IllegalStateException  7No ProjectManagerImplementation found in global Lookup.
     (Ljava/lang/String;)V
 ! " # $ % +org/netbeans/modules/projectapi/SPIAccessor getInstance /()Lorg/netbeans/modules/projectapi/SPIAccessor;
 ! ' ( ) createProjectManagerCallBack P()Lorg/netbeans/spi/project/ProjectManagerImplementation$ProjectManagerCallBack;  + , - init Q(Lorg/netbeans/spi/project/ProjectManagerImplementation$ProjectManagerCallBack;)V	  / 0 1 LOG Ljava/util/logging/Logger;	 3 4 5 6 7 java/util/logging/Level FINE Ljava/util/logging/Level; 9 /ProjectManager created with implementation: {0}
 ; < = > ? java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V	  A B C DEFAULT )Lorg/netbeans/api/project/ProjectManager;
  E  F +()Lorg/netbeans/api/project/ProjectManager;  H I J getMutex ()Lorg/openide/util/Mutex; L project
 N O P Q R org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V T otherProjects  V I W `(ZLorg/netbeans/api/project/Project;[Lorg/netbeans/api/project/Project;)Lorg/openide/util/Mutex; Y "java/lang/IllegalArgumentException [ 1Attempted to pass a null directory to findProject
 X 
 ^ _ ` a b "org/openide/filesystems/FileObject isFolder ()Z d java/lang/StringBuilder
 c  g 2Attempted to pass a non-directory to findProject: 
 c i j k append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 c m j n -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 c p q r toString ()Ljava/lang/String;  t u v findProject H(Lorg/openide/filesystems/FileObject;)Lorg/netbeans/api/project/Project;
  x y z 
isProject2 V(Lorg/openide/filesystems/FileObject;)Lorg/netbeans/api/project/ProjectManager$Result; | /Attempted to pass a null directory to isProject
 ^ ~  b isValid � 0Attempted to pass a non-directory to isProject:   � � z 	isProject  � �  clearNonProjectCache � 5org/netbeans/spi/project/FileOwnerQueryImplementation
  � � � 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection; � � � � � java/util/Collection iterator ()Ljava/util/Iterator; � � � � b java/util/Iterator hasNext � � � � next ()Ljava/lang/Object; � Borg/netbeans/modules/projectapi/SimpleFileOwnerQueryImplementation
 � � �  resetLastFoundReferences  � � � getModifiedProjects ()Ljava/util/Set;  � � � 
isModified %(Lorg/netbeans/api/project/Project;)Z � p  � � � saveProject %(Lorg/netbeans/api/project/Project;)V  � �  saveAllProjects  �  �
 � � � � r java/lang/Class getName
 ; � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
   Code LineNumberTable LocalVariableTable this StackMapTable RuntimeInvisibleAnnotations -Lorg/netbeans/api/annotations/common/NonNull; mutex autoSave Z "Lorg/netbeans/api/project/Project; #[Lorg/netbeans/api/project/Project; MethodParameters $RuntimeInvisibleParameterAnnotations projectDirectory $Lorg/openide/filesystems/FileObject; 
Exceptions � java/io/IOException 2Lorg/netbeans/api/annotations/common/CheckForNull; '(Lorg/openide/filesystems/FileObject;)Z foqi 7Lorg/netbeans/spi/project/FileOwnerQueryImplementation; col Ljava/util/Collection; LocalVariableTypeTable PLjava/util/Collection<+Lorg/netbeans/spi/project/FileOwnerQueryImplementation;>; 	Signature 5()Ljava/util/Set<Lorg/netbeans/api/project/Project;>; <clinit> 
SourceFile ProjectManager.java InnerClasses � Lorg/netbeans/spi/project/ProjectManagerImplementation$ProjectManagerCallBack ProjectManagerCallBack � .org/netbeans/api/project/ProjectManager$Result Result 1       0 1    B C             �   �     C*� *� � � � *� � � Y� �*� �  � &� * � .� 28*� � :�    �       3  4  5  6 $ 8 3 9 B = �       C � C   �    � $     	  F  �         � @�    �       E �     �   	 � J  �   $      � D� � G �    �       V �     �   � � W  �   a     K+� MS,� M� D� +,� U �    �       i  j  k �         � �      L �     T �  �    �  L   T   �     �   �       �    �    u v  �   �     ;+� � XYZ� \�+� ]� � XY� cY� ef� h+� l� o� \�*� +� s �    �       �  �  �  � 0 � �       ; � C     ; � �  �    ! �     � X �    �  �     �   �     �    � �  �   M     *+� w� � �    �       � �        � C      � �  �    @ �     X �    �  �     �    y z  �   �     D+� � XY{� \�+� ]� '+� }� � XY� cY� e�� h+� l� o� \��*� +� � �    �       �  �  �  �  � 7 � 9 � �       D � C     D � �  �    ( �     X �    �  �     �   �     �    �   �   �     >*� � � � �� �L+� � M,� � � ,� � � �N-� �� 
-� �� ���߱    �       � 	 �  � , � 3 � : � = � �      ,  � �    > � C    , � �  �      , � �  �    �  � � �   � �  �   4     
*� � � �    �       � �       
 � C   �    � �     �    � �  �   ?     *� +� � �    �       � �        � C      � �  �    �  �     �    � �  �   M     �+� M*� +� � �    �       	 
 �        � C      � �  �     � �    �  �     �    �   �   8     
*� � � �    �   
    	 �       
 � C   �     �   �  �   I     �+� M*� +� � �    �   
     ! �        � C      � �  �    �  �     �    �   �   2      � �� �� .� Y� �� @�    �   
    /  0  �    � �     �  �  �  � 