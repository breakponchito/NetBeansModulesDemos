����   4 7
      java/lang/Object <init> ()V	  	 
   2org/netbeans/modules/openide/explorer/TTVEnvBridge beans [Ljava/lang/Object;	     bridges Ljava/util/Map;      java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;
       put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  java/util/WeakHashMap
   	Signature WLjava/util/Map<Ljava/lang/Object;Lorg/netbeans/modules/openide/explorer/TTVEnvBridge;>; Code LineNumberTable LocalVariableTable this 4Lorg/netbeans/modules/openide/explorer/TTVEnvBridge; getInstance H(Ljava/lang/Object;)Lorg/netbeans/modules/openide/explorer/TTVEnvBridge; 
identifier Ljava/lang/Object; result StackMapTable MethodParameters findInstance setCurrentBeans ([Ljava/lang/Object;)V o clear getCurrentBeans ()[Ljava/lang/Object; <clinit> 
SourceFile TTVEnvBridge.java !      
                     !   <     
*� *� �    "       D  B 	 E #       
 $ %   	 & '  !   x     &� *�  � L+� � Y� L� *+�  W+�    "       H  I  J  K $ M #       & ( )     * %  +    � $  ,    (   	 - '  !   7     � *�  � �    "       Q #        ( )   ,    (    . /  !   >     *+� �    "   
    U  V #        $ %      0   ,    0    1   !   4     *� �    "   
    Y  Z #        $ %    2 3  !   L     *� � � �*� �    "       ]  ^  ` #        $ %   +      4   !   #      � Y� � �    "       A  5    6