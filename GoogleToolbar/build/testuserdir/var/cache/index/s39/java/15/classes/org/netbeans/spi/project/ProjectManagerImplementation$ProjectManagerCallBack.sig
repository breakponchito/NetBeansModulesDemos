����   4 W
      Lorg/netbeans/spi/project/ProjectManagerImplementation$ProjectManagerCallBack <init> ()V
   	 java/lang/Object
      org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;  5org/netbeans/spi/project/FileOwnerQueryImplementation
     	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection;      java/util/Collection iterator ()Ljava/util/Iterator;      ! java/util/Iterator hasNext ()Z  # $ % next ()Ljava/lang/Object; ' Borg/netbeans/modules/projectapi/SimpleFileOwnerQueryImplementation
 & ) *  resetLastFoundReferences , \org/netbeans/spi/project/ProjectManagerImplementation$ProjectManagerCallBack$SPIAccessorImpl
 + .  / <(Lorg/netbeans/spi/project/ProjectManagerImplementation$1;)V
 1 2 3 4 5 +org/netbeans/modules/projectapi/SPIAccessor setInstance 0(Lorg/netbeans/modules/projectapi/SPIAccessor;)V Code LineNumberTable LocalVariableTable this NLorg/netbeans/spi/project/ProjectManagerImplementation$ProjectManagerCallBack; notifyModified %(Lorg/netbeans/api/project/Project;)V project "Lorg/netbeans/api/project/Project; MethodParameters $RuntimeInvisibleParameterAnnotations -Lorg/netbeans/api/annotations/common/NonNull; notifyDeleted impl 7Lorg/netbeans/spi/project/FileOwnerQueryImplementation; col Ljava/util/Collection; LocalVariableTypeTable PLjava/util/Collection<+Lorg/netbeans/spi/project/FileOwnerQueryImplementation;>; StackMapTable 1Lorg/netbeans/api/annotations/common/NullAllowed; x0 9Lorg/netbeans/spi/project/ProjectManagerImplementation$1; <clinit> 
SourceFile !ProjectManagerImplementation.java InnerClasses R 5org/netbeans/spi/project/ProjectManagerImplementation ProjectManagerCallBack SPIAccessorImpl V 7org/netbeans/spi/project/ProjectManagerImplementation$1 1            6   3     *� �    7   
    �  � 8        9 :    ; <  6   5      �    7       � 8        9 :      = >  ?    =   @     A    B <  6   �     8� 
� M,�  N-�  � !-� " � :� &� � &� (��ܱ    7       � 	 � $ � , � 4 � 7 � 8   *  $  C D    8 9 :     8 = >  	 / E F  G     	 / E H  I    �   #�  ?    =   @     J     /  6   9     *� �    7       � 8        9 :      K L   M   6   (      � +Y� -� 0�    7   
    �  �  N    O P      Q S  +  T  U    