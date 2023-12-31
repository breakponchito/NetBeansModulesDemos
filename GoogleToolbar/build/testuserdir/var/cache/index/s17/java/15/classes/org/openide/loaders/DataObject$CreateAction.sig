����   4
      java/lang/Object <init> ()V	  	 
   +org/openide/loaders/DataObject$CreateAction orig  Lorg/openide/loaders/DataObject;	     f  Lorg/openide/loaders/DataFolder;	     name Ljava/lang/String;	     param Ljava/util/Map;
      Jorg/netbeans/modules/openide/loaders/DataObjectEncodingQueryImplementation enterIgnoreTargetFolder B(Lorg/openide/loaders/DataFolder;)Lorg/openide/loaders/DataFolder;	    ! " CURRENT Ljava/lang/ThreadLocal;
 $ % & ' ( java/lang/ThreadLocal get ()Ljava/lang/Object;
 $ * + , set (Ljava/lang/Object;)V
 . / 0 1 2 org/openide/loaders/DataObject handleCreateFromTemplate T(Lorg/openide/loaders/DataFolder;Ljava/lang/String;)Lorg/openide/loaders/DataObject;	  4 5  result
  7 8 9 exitIgnoreTargetFolder #(Lorg/openide/loaders/DataFolder;)V
 ; < = > ? java/util/Collections emptyMap ()Ljava/util/Map;
 ; A B C unmodifiableMap  (Ljava/util/Map;)Ljava/util/Map; E java/util/HashMap
 D 
 H I J K L org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; N 8org/openide/loaders/CreateFromTemplateAttributesProvider
 H P Q R 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection; T U V W X java/util/Collection iterator ()Ljava/util/Iterator; Z [ \ ] ^ java/util/Iterator hasNext ()Z Z ` a ( next M c d e attributesFor c(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataFolder;Ljava/lang/String;)Ljava/util/Map; g h i j k java/util/Map entrySet ()Ljava/util/Set; m U n java/util/Set p java/util/Map$Entry o r s ( getKey u java/lang/String o w x ( getValue
 D z { | put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 
 D  � � containsKey (Ljava/lang/Object;)Z	 � � � � � java/lang/Boolean TRUE Ljava/lang/Boolean; � -org/openide/loaders/CreateFromTemplateHandler � freeFileExtension
 D � ' � &(Ljava/lang/Object;)Ljava/lang/Object;
 � � � � equals � [.].* �  
 t � � � replaceFirst 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � user � 	user.name
 � � � � � java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String; � java/util/Date
 �  � date
 � � � � � java/text/DateFormat getDateInstance ()Ljava/text/DateFormat;
 � � � � format $(Ljava/util/Date;)Ljava/lang/String; � time
 � � � � getTimeInstance � dateTime
 D �  � (Ljava/util/Map;)V � 
nameAndExt
 t � � � length ()I g �
 t � � � indexOf (I)I � java/lang/StringBuilder
 � 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � (C)Ljava/lang/StringBuilder;
 � � � � toString ()Ljava/lang/String;
 $  � /org/openide/filesystems/FileSystem$AtomicAction 	Signature 6Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>; FLjava/lang/ThreadLocal<Lorg/openide/loaders/DataObject$CreateAction;>; d(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataFolder;Ljava/lang/String;Ljava/util/Map;)V Code LineNumberTable LocalVariableTable this -Lorg/openide/loaders/DataObject$CreateAction; LocalVariableTypeTable MethodParameters �(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataFolder;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;)V run prevFold prev StackMapTable � org/openide/loaders/DataFolder � java/lang/Throwable 
Exceptions � java/io/IOException getCallParameters #(Ljava/lang/String;)Ljava/util/Map; c I(Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; getOrigName findParameters e Ljava/util/Map$Entry; map provider :Lorg/openide/loaders/CreateFromTemplateAttributesProvider; all Ljava/util/HashMap; d Ljava/util/Date; <Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/lang/Object;>; 9Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>; enhanceParameters D(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map; old ext 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; �(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; <clinit> 
SourceFile DataObject.java InnerClasses CreateAction Entry "org/openide/filesystems/FileSystem AtomicAction 0    �   5                       �    � 
 ! "  �    �    �  �   �     *� *+� *,� *-� *� �    �        	    �   4     � �                           �         �  �                �    �  �   �   �     I*� � L� � #� M� *� )**� *� *� � -� 3+� 6� ,� )� N+� 6� ,� )-��   , :    �   .      " # ,% 0& 7' :% ?& F' H( �        I � �    A �    7 � �  �    � :   �   � �     � 	 � �  �   p     !� � #� L+� 
+� � � :�+� � @�    �      + 
, - / �       !     
  � �  �   	 �   �       �    �  � �  �   W     � � #� K*� � *� �    �   
   3 
4 �     
  � �   �    �  C t 	 � �  �  �    g� � #� L+� � :�� DY� FM� GM� O� S N-� Y � h-� _ � M:+� +� +� � b :� @� f � l :� Y � (� _ � o:,� q � t� v � yW��ԧ��+� � ?+� � f � l N-� Y � '-� _ � o:,� q � t� v � yW���,}� ~� '*� #� �,�� �� �� *��� �K,}*� yW,�� ~� ,��� �� yW� �Y� �N,�� ~� ,�� �-� �� yW,�� ~� ,�� �-� �� yW,�� ~� ,�-� yW,� @�    �   v   8 
9 : < = <> Q? V@ zA �B �D �E �F �G �H �K �L �M �OQRT#U,V:XCYQ[Z\b_ �   R  z  � �  Q B �   < W � �  �  � �   g     
] � �  M � � # D � �  �   *  z  � �  Q B � �  �  � �  M �   �   7 �  �  D Z� ; M g Z� .� �  Z� ,$�  � �       �    � 	  �   �     j� DY*� �N-�� ~� V+� R,� F,� �� ?� �*�� � � �� +.� �� $-�� �Y� �+� �.� �,� ˶ Ҷ yW� -�+� yW-� @�    �      c 	d e 'f <g ]i el �   *    j      j      j   	 a � �  �       j   	 a �   �   
 � < D  �           �       �   #      � $Y� ֳ �    �          	
      .  o g	 �	