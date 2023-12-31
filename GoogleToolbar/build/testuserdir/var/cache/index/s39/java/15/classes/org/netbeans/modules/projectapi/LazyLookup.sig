����   4 �
      #org/openide/util/lookup/ProxyLookup <init> ()V  java/lang/Thread	 
     *org/netbeans/modules/projectapi/LazyLookup LOCK [Ljava/lang/Thread;	 
    attrs Ljava/util/Map;	 
    lkp Lorg/openide/util/Lookup;  service      java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;   java/lang/String " ,
  $ % & split '(Ljava/lang/String;)[Ljava/lang/String;
 ( ) * + , java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;	 
 . / 0 serviceNames Ljava/util/Collection;
 2 3 4 5 6 3org/netbeans/modules/projectapi/LazyLookupProviders 
safeToLoad (Lorg/openide/util/Lookup;)V
 8 9 : ; <  org/openide/util/Lookup$Template getType ()Ljava/lang/Class;
 > ? @ A B java/lang/Class getName ()Ljava/lang/String; D E F G H java/util/Collection contains (Ljava/lang/Object;)Z
  J K L currentThread ()Ljava/lang/Thread;
 N O P Q  java/lang/Object wait S java/lang/InterruptedException	 2 U V W LOG Ljava/util/logging/Logger;	 Y Z [ \ ] java/util/logging/Level INFO Ljava/util/logging/Level;
 _ ` a b c java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 N e f  	notifyAll h class j method
 2 l m n loadPSPInstance Q(Ljava/lang/String;Ljava/lang/String;Lorg/openide/util/Lookup;)Ljava/lang/Object;
 > p q H 
isInstance s java/lang/ClassCastException u java/lang/StringBuilder
 t  x Instance of 
 t z { | append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 N ~  < getClass
 t � { � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; �  unassignable to 
 t � � B toString
 r �  � (Ljava/lang/String;)V � 7org/netbeans/modules/projectapi/LazyLookup$1NotifyLater
 � �  � /(Lorg/netbeans/modules/projectapi/LazyLookup;)V � org/openide/util/Lookup
 � � � � � org/openide/util/lookup/Lookups 	singleton -(Ljava/lang/Object;)Lorg/openide/util/Lookup;
 
 � � � 
setLookups <(Ljava/util/concurrent/Executor;[Lorg/openide/util/Lookup;)V
 � � �  deliverPending � java/lang/Exception � while loading from 
 � � � � � org/openide/util/Exceptions attachMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
 � � � � printStackTrace (Ljava/lang/Throwable;)V � +LazyLookupProviders.LookupProvider[service= � , class= � , orig= � "org/openide/filesystems/FileObject � ] 	Signature 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; *Ljava/util/Collection<Ljava/lang/String;>; +(Ljava/util/Map;Lorg/openide/util/Lookup;)V Code LineNumberTable LocalVariableTable this ,Lorg/netbeans/modules/projectapi/LazyLookup; LocalVariableTypeTable MethodParameters Q(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Lorg/openide/util/Lookup;)V beforeLookup %(Lorg/openide/util/Lookup$Template;)V ex  Ljava/lang/InterruptedException; instance Ljava/lang/Object; x Ljava/lang/Exception; template "Lorg/openide/util/Lookup$Template; Ljava/lang/Class; later 9Lorg/netbeans/modules/projectapi/LazyLookup$1NotifyLater; %Lorg/openide/util/Lookup$Template<*>; Ljava/lang/Class<*>; StackMapTable � java/lang/Throwable ((Lorg/openide/util/Lookup$Template<*>;)V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; isInitializing ()Z Ljava/lang/SuppressWarnings; value element-type-mismatch 
SourceFile LazyLookup.java InnerClasses Template NotifyLater 0 
         �    �       / 0  �    �         �  �   �     2*� *� YS� 	*+� *,� *+�  � !� #� '� -�    �       (  &  )  *  + 1 , �        2 � �     2      2    �       2  �  �   	       �    �  � �  �  W    �*� � 1+� 7MN*� 	Y:�*� -� *� -,� =� C � ñ*� 	2� � .*� 	2� I� ñ*� 	� M���:� T� X� ^���*� 	� IS*� 	� dç :��*� g�  � *� i�  � *� � k:,� o� +� rY� tY� vw� y� }� ��� y,� �� �� ��*� �Y*� �YN� �Y� �S� �*� 	Y:�*� -*� 	� dç :��*� 	Y:�*� 	S*� 	� dç :��-� �-� �� �:� tY� v�� y*� � �� �� �W� �*� 	Y:�*� 	S*� 	� dç :	�	�-� ;-� �� 4:
*� 	Y:�*� 	S*� 	� dç :��-� -� �
��  M T W R  0 ~   1 L ~   M { ~   ~ � ~   �     14  494   �G �r��  ���   ��  Gj�  ���  ���  ���    �   � 1   ?  @  A  B  D - E 1 G : H = J I K M N T Q W O Y P e Q h S q T x U � W � X � Z � \ � ] � ^ _
 ` e  f' g. h< i@ jG aI be cj er fy g� h� i� j� e� f� g� h� i� j� l� m �   H  Y  � �  � m � � I ! � �   � � �    � � �  �  �  � � �  �      � � �  �  �  �   � �  > � NI RU �� � U N� 3  
 8 > � N N  �� �   
 8 > � N  �� J �� >  
 8 > � N  �� J ��   
 8 > �       � N  �� �   
 8 > �   �    �   �    � �     �     � �  �   D     *� 	2� � �    �       p �        � �   �    @  � B  �   s     I� tY� v�� y*� �  � ��� y*� g�  � ��� y*� ��  � ��� y� ��    �       v �       I � �   �     �   �  �[ s �  �    � �     8 � �  �   �  