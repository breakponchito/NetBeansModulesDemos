����   4
      java/lang/Object <init> ()V  9org/netbeans/modules/projectapi/LazyLookupProviders$1Prov
  
   (Ljava/util/Map;)V	      3org/netbeans/modules/projectapi/LazyLookupProviders INSIDE_LOAD Ljava/util/Map;      java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;  java/lang/ThreadLocal
     ()Ljava/lang/Object;  java/lang/reflect/Member	    ! " WARNED Ljava/util/Collection; $ % & ' ( java/util/Collection add (Ljava/lang/Object;)Z	  * + , LOG Ljava/util/logging/Logger;	 . / 0 1 2 java/util/logging/Level WARNING Ljava/util/logging/Level; 4 java/lang/IllegalStateException 6 java/lang/StringBuilder
 5  9 4may not call Project.getLookup().lookup(...) inside 
 5 ; < = append -(Ljava/lang/String;)Ljava/lang/StringBuilder;  ? @ A getName ()Ljava/lang/String; C ) registered under @ProjectServiceProvider
 5 E F A toString
 3 H  I (Ljava/lang/String;)V
 K L M N O java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 Q R S T U org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; W java/lang/ClassLoader
 Q Y Z [ lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 ] ^ _ ` a java/lang/Thread currentThread ()Ljava/lang/Thread;
 ] c d e getContextClassLoader ()Ljava/lang/ClassLoader;
 V g h i 	loadClass %(Ljava/lang/String;)Ljava/lang/Class;
    l m n put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 p q r s t java/lang/Class getConstructors "()[Ljava/lang/reflect/Constructor;
 v w x y z java/lang/reflect/Constructor getParameterTypes ()[Ljava/lang/Class;
  | } ~ 	valuesFor @([Ljava/lang/Class;Lorg/openide/util/Lookup;)[Ljava/lang/Object;
  � � � set (Ljava/lang/Object;)V
 v � � � newInstance '([Ljava/lang/Object;)Ljava/lang/Object;
  � �  remove
 p � � � 
getMethods ()[Ljava/lang/reflect/Method;
 � ? � java/lang/reflect/Method
 � � � � ( java/lang/String equals
 � w
 � � � � invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � java/lang/RuntimeException � .
 � H � java/util/ArrayList
 �  � % � java/util/List �  org/netbeans/api/project/Project � "java/lang/IllegalArgumentException � Lookup 
 5 � < � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � % did not contain any Project instance
 � H � � � � toArray ()[Ljava/lang/Object; � 5org/netbeans/modules/projectapi/LazyLookupProviders$1
 � 

 p ?
 K � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; � java/util/WeakHashMap
 �  � java/util/HashSet
 � 
 � � � � � java/util/Collections synchronizedSet  (Ljava/util/Set;)Ljava/util/Set; 	Signature ]Ljava/util/Map<Lorg/openide/util/Lookup;Ljava/lang/ThreadLocal<Ljava/lang/reflect/Member;>;>; 2Ljava/util/Collection<Ljava/lang/reflect/Member;>; Code LineNumberTable LocalVariableTable this 5Lorg/netbeans/modules/projectapi/LazyLookupProviders; forProjectServiceProvider :(Ljava/util/Map;)Lorg/netbeans/spi/project/LookupProvider; attrs LocalVariableTypeTable 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; 
Exceptions �  java/lang/ClassNotFoundException MethodParameters `(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)Lorg/netbeans/spi/project/LookupProvider; 
safeToLoad (Lorg/openide/util/Lookup;)V 	memberRef Ljava/lang/ThreadLocal; lkp Lorg/openide/util/Lookup; member Ljava/lang/reflect/Member; 3Ljava/lang/ThreadLocal<Ljava/lang/reflect/Member;>; StackMapTable � java/lang/Throwable loadPSPInstance Q(Ljava/lang/String;Ljava/lang/String;Lorg/openide/util/Lookup;)Ljava/lang/Object; vals [Ljava/lang/Object; c Ljava/lang/reflect/Constructor; m Ljava/lang/reflect/Method; implName Ljava/lang/String; 
methodName loader Ljava/lang/ClassLoader; clazz Ljava/lang/Class; Ljava/lang/Class<*>; �  [Ljava/lang/reflect/Constructor; � � [Ljava/lang/reflect/Method; � java/lang/Exception project "Lorg/netbeans/api/project/Project; param params [Ljava/lang/Class; values Ljava/util/List; $Ljava/util/List<Ljava/lang/Object;>; forLookupMerger C(Ljava/util/Map;)Lorg/netbeans/modules/projectapi/MetaLookupMerger; i(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)Lorg/netbeans/modules/projectapi/MetaLookupMerger; <clinit> 
SourceFile LazyLookupProviders.java InnerClasses Prov !       + ,       �    �  ! "  �    �      �   /     *� �    �       0 �        � �   	 � �  �   E     	� Y*� 	�    �       K �       	 �    �       	 � �   �     � �    �  �    �  � �  �  *     i� YM² *�  � L,ç N,�-�+� �+� � M,� =� ,� # � 1� )� -� 3Y� 5Y� 78� :,� > � :B� :� D� G� J�             �   & 	   P  Q  R  S ! T " V * W : X h Z �   *    � �    i � �    L � �  * ? � �  �       � �   L � �  �   ' �   Q    ��   Q   � E  �    �    � �  �  _    :� PV� X� VN-� 
� \� bN-*� f:� Y:² ,�  � :� � ,� Y� jY:� k Wç :��+� [� o:�66� B2:		� u,� {:

� %	� 	
� �:� ��:� ������� h� �:�66� R2:		� �+� �� � 6	� �,� {:

� &	� 	
� �:� ��:� ������� �Y� 5Y� 7*� :�� :+� :� D� ��  % O R   R W R   � � �   � � �   �      �   � !   ]  ^  _  a  c % d 3 e 8 f L h Z i ^ j { k � l � m � o � q � o � q � r � j � v � w � x � z � { � | � ~ � ~ � � v � �   p  3  � �  � ' � � 
 { 2 � � 	 � ( � � 
 � B � � 	  : � �    : � �   : � �  . � �   � �  Z � � �  �      3  � �   � �  Z � � �  �   � �  V� 4 p  �   � � Q V p    ��   � � Q V p   �  �� 5  � � Q V p  � v �  �� 	� �  ��  �� (  � � Q V p  � � �  �� 	�  �     � �    �   �   �   
 } ~  �  Y     �*�� �� �Y� �M*N-�66� f-2:Q� ,+� � W� H�� ?+�� X� �:� #� �Y� 5Y� 7�� :+� ��� :� D� ��,� � W� �����,� � �    �   >    �  �  �  � & � - � 8 � ? � J � O � o � x � { � } � � � �   4  J . �   & W �    �     � � �   z  �      z  �   - �   Q �  �  p� 6 �� � �  �   	   �   		  �   E     	� �Y*� ��    �       � �       	 �    �       	 � �   �     � �    �  �   
    �   C      #� �� �� )� �Y� �� � �Y� ø ĳ �    �       2  3  4              �      