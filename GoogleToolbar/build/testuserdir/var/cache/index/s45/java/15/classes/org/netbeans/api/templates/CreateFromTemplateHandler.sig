����   4#
      java/lang/Object <init> ()V  ${
 
     java/lang/String indexOf (Ljava/lang/String;I)I
 
    charAt (I)C
 
    length ()I
 
    	substring (II)Ljava/lang/String;
 
    (I)I
 
     (I)Ljava/lang/String; " # $ % & java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; ( java/lang/StringBuilder
 ' 
 ' + , - append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  / 0 1 toString ()Ljava/lang/String;
 ' /
 4 5 6 7 8 4org/netbeans/api/templates/CreateFromTemplateHandler mapParameters 5(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;   : ; < apply !()Ljava/util/function/BiFunction;
 > ? @ A B  org/openide/filesystems/FileUtil copyAttributes j(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Ljava/util/function/BiFunction;)V
 D E F G H +org/netbeans/api/templates/CreateDescriptor getTemplate &()Lorg/openide/filesystems/FileObject;
 J K L M N "org/openide/filesystems/FileObject isFolder ()Z P "java/lang/IllegalArgumentException R  contentsParent is not a folder: 
 J T U 1 getPath
 O W  X (Ljava/lang/String;)V Z java/util/ArrayList
 Y 
 D ] ^ _ getParameters ()Ljava/util/Map; a 
_noFolders " c d e containsKey (Ljava/lang/Object;)Z g h i j e java/util/List add
 J l m n getChildren '()[Lorg/openide/filesystems/FileObject; p java/util/HashMap
 o r  s (Ljava/util/Map;)V u name " w x & remove z 
nameAndExt	 | } ~  � java/lang/Boolean TRUE Ljava/lang/Boolean; " � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � &org/netbeans/api/templates/FileBuilder
 � �  � K(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)V	 � � � � � +org/netbeans/api/templates/FileBuilder$Mode COPY -Lorg/netbeans/api/templates/FileBuilder$Mode;
 � � � � defaultMode W(Lorg/netbeans/api/templates/FileBuilder$Mode;)Lorg/netbeans/api/templates/FileBuilder;
 D � � � 	getLookup ()Lorg/openide/util/Lookup;
 � � � � 	useLookup C(Lorg/openide/util/Lookup;)Lorg/netbeans/api/templates/FileBuilder;
 � � � � withParameters 9(Ljava/util/Map;)Lorg/netbeans/api/templates/FileBuilder;
 � � � � createDescriptor 0(Z)Lorg/netbeans/api/templates/CreateDescriptor;
 � � � � build ()Ljava/util/List; � template.openFile
 J � � � getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
 | � � e equals g � � � addAll (Ljava/util/Collection;)Z � javax.script.ScriptEngine
 
 � � 	template.
 
 � � � 
startsWith (Ljava/lang/String;)Z � template
 > � � < defaultAttributesTransformer � � � ; � java/util/function/BiFunction PROP_TEMPLATE Ljava/lang/String; ConstantValue ATTR_TEMPLATE_PREFIX Code LineNumberTable LocalVariableTable this 6Lorg/netbeans/api/templates/CreateFromTemplateHandler; accept 0(Lorg/netbeans/api/templates/CreateDescriptor;)Z MethodParameters desc createFromTemplate ?(Lorg/netbeans/api/templates/CreateDescriptor;)Ljava/util/List; 
Exceptions � java/io/IOException 	Signature e(Lorg/netbeans/api/templates/CreateDescriptor;)Ljava/util/List<Lorg/openide/filesystems/FileObject;>; RuntimeInvisibleAnnotations -Lorg/netbeans/api/annotations/common/NonNull; c C endPos I state nested token defValue colon v Ljava/lang/Object; 
expression 
parameters Ljava/util/Map; start pos sb Ljava/lang/StringBuilder; LocalVariableTypeTable $Ljava/util/Map<Ljava/lang/String;*>; StackMapTable J(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;*>;)Ljava/lang/String; copyAttributesFromTemplate �(Lorg/netbeans/api/templates/CreateFromTemplateHandler;Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)V h from $Lorg/openide/filesystems/FileObject; to defaultCopyContents �(Lorg/netbeans/api/templates/CreateDescriptor;Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)Ljava/util/List; b (Lorg/netbeans/api/templates/FileBuilder; files Ljava/util/List; child origDescriptor -Lorg/netbeans/api/templates/CreateDescriptor; contentsParent target r 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; 6Ljava/util/List<Lorg/openide/filesystems/FileObject;>; %[Lorg/openide/filesystems/FileObject; �(Lorg/netbeans/api/templates/CreateDescriptor;Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)Ljava/util/List<Lorg/openide/filesystems/FileObject;>; #lambda$copyAttributesFromTemplate$0 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; n 
SourceFile CreateFromTemplateHandler.java BootstrapMethods
 "java/lang/invoke/LambdaMetafactory metafactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; �
 4
 InnerClasses Mode %java/lang/invoke/MethodHandles$Lookup! java/lang/invoke/MethodHandles Lookup! 4      � �  �    �  � �  �    �      �   /     *� �    �       , �        � �   � �  �    �   � �  �     � �    �   �    � �     �    7 8  �  6    `=>:*� 	Y>�+� *d� \� 	����`666*� � v*� 6� 6�����   T      $   /   \   )   {   5   }   D6� (6� "� 6�� � ��� � 	����*� � 	���J*`� ::	:� 6

� 
`� :	
� :+� ! :� 	:� 	����� � 'Y� ):*� � *� .� *W`=>���� *�*� � *� � *W� 2+� 3�    �   � 7   J  K  L  N  O $ P ' Q * S / T 2 U 5 V > W F X L Y O Z R [ U ] � _ � ` � b � c � e � f � g � k � l � m � r � s � t � u � v � x � y � { � | � } � ~ � � � � � �
 � � � � �2 �7 �9 �< �A �C �K �V � �   �  F h � �  /
 � �  2 � �  5 � �  � n � �  � k � � 	 � b � � 
 � = � �   ` � �    ` � �  ^ � �  \ � �  Y � �  �      ` � �  �   D �  '"� 
� *� � 1 
 
�  
�   
 " '   �   	 �   �   �    � 	 � �  �   M     +,� 9  � =�    �   
    � 
 � �         � �      � �     � �  �     � �    �   �   �    � �  �  0     �+� *� CL+� 
+� I� !� OY� 'Y� )Q� *+� S� *� 2� V�� YY� [N*� \`� b � -,� f W*� C� k:�66� �2:� oY*� \� q:t� v Wy� v W`� {� � W� �Y,� �:		� �� �*� �� �� �� �W	� �:
� I� � {�� �� �� -
� � W���t-�    �   V    �  � 	 �  � 2 � : � H � P � o � | � � � � � � � � � � � � � � � � � � � � � � � �   R  | n � �  � A � � 	 � ! � � 
 o { � �    �      � �    � �  : � �  �      | n �  � ! � 
 : �  �   R 	
�  g� �   D J J g J " � g  �   D J J g  �  �     � �           �   	

  �   v     (�*� �� *�� �� �*� �� �� �*+� � �    �       �  �  �  �  � �       ( �     ( � �  �                  � �@ " 