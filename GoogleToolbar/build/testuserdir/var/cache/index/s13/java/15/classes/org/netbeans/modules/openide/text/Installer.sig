����   4 �
      java/lang/Object <init> ()V	  	 
   +org/netbeans/modules/openide/text/Installer 	mimeTypes Ljava/util/Map;      java/util/Map containsKey (Ljava/lang/Object;)Z     get &(Ljava/lang/Object;)Ljava/lang/Object;  java/lang/Integer
     intValue ()I
      valueOf (I)Ljava/lang/Integer;  " # $ put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  &  ' (I)V  ) * + entrySet ()Ljava/util/Set; - . / 0 1 java/util/Set iterator ()Ljava/util/Iterator; 3 4 5 6 7 java/util/Iterator hasNext ()Z 3 9 : ; next ()Ljava/lang/Object; = java/util/Map$Entry ? org.netbeans.ui.metrics.editor
 A B C D E java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; G java/util/logging/LogRecord	 I J K L M java/util/logging/Level INFO Ljava/util/logging/Level; O USG_EDITOR_MIME_TYPE
 F Q  R .(Ljava/util/logging/Level;Ljava/lang/String;)V < T U ; getKey < W X ; getValue
 F Z [ \ setParameters ([Ljava/lang/Object;)V
 A ^ _ ` getName ()Ljava/lang/String;
 F b c d setLoggerName (Ljava/lang/String;)V
 A f g h log  (Ljava/util/logging/LogRecord;)V j java/util/HashMap
 i  m java/lang/Runnable 	Signature 6Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>; Code LineNumberTable LocalVariableTable this -Lorg/netbeans/modules/openide/text/Installer; add v Ljava/lang/Integer; mimeType Ljava/lang/String; StackMapTable MethodParameters run logger Ljava/util/logging/Logger; rec Ljava/util/logging/LogRecord; entry Ljava/util/Map$Entry; LocalVariableTypeTable <Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile Installer.java Lorg/openide/modules/OnStop; InnerClasses Entry !    l  
    n    o      p   /     *� �    q       $ r        s t   	 u d  p   �     F� *�  � (� *�  � L+� `� L� *+� ! W� � Y� %L� *+� ! W�    q   "    )  *  + # , . - 1 . : / E 1 r        v w  :  v w    F x y   z    1 {    x    |   p   �     c� � ( � , L+� 2 � N+� 8 � <M>� @N� FY� HN� P:� Y,� S SY,� V S� Y-� ]� a-� e����    q   "    5 ! 6 ' 7 5 8 P 9 Y : _ ; b < r   *  ' 8 } ~  5 *  �  ! > � �    c s t   �     ! > � �  z    �  3� S �     �    �   p   #      � iY� k� �    q       &  �    � �     �   �   
  <  �	