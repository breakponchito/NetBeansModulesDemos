����   4;  java/util/ArrayList
     <init> ()V  .org/openide/util/lookup/AbstractLookup$Content
  
      Iorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$OverFiles U(Ljava/lang/String;Ljava/util/List;Lorg/openide/util/lookup/AbstractLookup$Content;)V  &org/openide/util/lookup/AbstractLookup
     3(Lorg/openide/util/lookup/AbstractLookup$Content;)V
     }(Ljava/lang/String;Ljava/util/List;Lorg/openide/util/lookup/AbstractLookup;Lorg/openide/util/lookup/AbstractLookup$Content;)V
     computeDelegates W(Ljava/lang/String;Ljava/util/List;Lorg/openide/util/Lookup;)[Lorg/openide/util/Lookup;
      #org/openide/util/lookup/ProxyLookup ([Lorg/openide/util/Lookup;)V	  ! " # path Ljava/lang/String;	  % & ' lkp (Lorg/openide/util/lookup/AbstractLookup;	  ) * + content 0Lorg/openide/util/lookup/AbstractLookup$Content;
  - . / order "(Ljava/util/List;)Ljava/util/List;
  1 2 3 setPairs (Ljava/util/Collection;)V
 5 6 7 8 9  org/openide/filesystems/FileUtil getSystemConfigRoot &()Lorg/openide/filesystems/FileObject;
 ; < = > ? "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem; A 1org/openide/filesystems/FileStateInvalidException
 C D E F G org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
 5 I J K weakFileChangeListener l(Lorg/openide/filesystems/FileChangeListener;Ljava/lang/Object;)Lorg/openide/filesystems/FileChangeListener;	  M N O weakL ,Lorg/openide/filesystems/FileChangeListener;
 Q R S T U "org/openide/filesystems/FileSystem addFileChangeListener /(Lorg/openide/filesystems/FileChangeListener;)V W java/util/LinkedHashMap
 V  Z [ \ ] ^ java/util/List iterator ()Ljava/util/Iterator; ` a b c d java/util/Iterator hasNext ()Z ` f g h next ()Ljava/lang/Object; j Forg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$FOItem
 i l m n 
access$000 n(Lorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$FOItem;)Lorg/openide/filesystems/FileObject; p q r s t java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; p v w x keySet ()Ljava/util/Set;
 5 z { | getOrder )(Ljava/util/Collection;Z)Ljava/util/List; Z ~  � size ()I
  �  � (I)V p � � � get &(Ljava/lang/Object;)Ljava/lang/Object; Z � � � add (Ljava/lang/Object;)Z � java/lang/StringBuilder
 � 
 � � � � 9 !org/openide/filesystems/FileEvent getFile
 ; � � � getPath ()Ljava/lang/String;
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; � /
 � � � � toString
 � � � � � java/lang/String 
startsWith (Ljava/lang/String;)Z
  � �  
setLookups
 5 � � � getConfigFile 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject; � java/util/LinkedList
 � 
 ; � � � getChildren '()[Lorg/openide/filesystems/FileObject;
 ; � � d isFolder
  �  � (Ljava/lang/String;)V � shadow
 ; � � � hasExt � originalFile
 ; � � � getAttribute &(Ljava/lang/String;)Ljava/lang/Object; � instance � instanceCreate
 i �  � '(Lorg/openide/filesystems/FileObject;)V
 � � � � � org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; � java/lang/ClassLoader
 � � � � lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 � � � � � java/lang/Thread currentThread ()Ljava/lang/Thread;
 � � � � getContextClassLoader ()Ljava/lang/ClassLoader; � ?org/netbeans/modules/openide/filesystems/RecognizeInstanceFiles
 � � � � � java/lang/Class getClassLoader � META-INF/namedservices/
 � � � � � org/openide/util/lookup/Lookups metaInfServices D(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/openide/util/Lookup; Z � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � [Lorg/openide/util/Lookup;
  � � � refresh &(Lorg/openide/filesystems/FileEvent;)V � *org/openide/filesystems/FileChangeListener Code LineNumberTable LocalVariableTable this KLorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$OverFiles; MethodParameters items Ljava/util/List; cnt LocalVariableTypeTable ZLjava/util/List<Lorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$FOItem;>; 	Signature �(Ljava/lang/String;Ljava/util/List<Lorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$FOItem;>;Lorg/openide/util/lookup/AbstractLookup$Content;)V ex 3Lorg/openide/filesystems/FileStateInvalidException; fs $Lorg/openide/filesystems/FileSystem; StackMapTable �(Ljava/lang/String;Ljava/util/List<Lorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$FOItem;>;Lorg/openide/util/lookup/AbstractLookup;Lorg/openide/util/lookup/AbstractLookup$Content;)V item HLorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$FOItem; f $Lorg/openide/filesystems/FileObject; m Ljava/util/Map; files r }Ljava/util/Map<Lorg/openide/filesystems/FileObject;Lorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$FOItem;>; 6Ljava/util/List<Lorg/openide/filesystems/FileObject;>; �(Ljava/util/List<Lorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$FOItem;>;)Ljava/util/List<Lorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$FOItem;>; ev #Lorg/openide/filesystems/FileEvent; 	delegates real Ljava/lang/Object; p Lorg/openide/util/Lookup; fo l Ljava/lang/ClassLoader; +Ljava/util/List<Lorg/openide/util/Lookup;>;( %[Lorg/openide/filesystems/FileObject; �(Ljava/lang/String;Ljava/util/List<Lorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$FOItem;>;Lorg/openide/util/Lookup;)[Lorg/openide/util/Lookup; fileFolderCreated fe fileDataCreated fileChanged fileDeleted fileRenamed ,(Lorg/openide/filesystems/FileRenameEvent;)V )Lorg/openide/filesystems/FileRenameEvent; fileAttributeChanged /(Lorg/openide/filesystems/FileAttributeEvent;)V ,Lorg/openide/filesystems/FileAttributeEvent; 
SourceFile RecognizeInstanceFiles.java InnerClasses Content 	OverFiles FOItem 0    �   " #    N O    * +    & '      �  �   L     *+� Y� � Y� 	� 
�    �   
    U  V              " #     "       �   n     *+,� Y-� -� �    �   
    Y  Z    *          " #         +             "      	   
     �  #     N*+,-� � *+�  *-� $*� (*� (,� ,� 0:� 4� ::� 
:� B**� H� L*� L� P�  ( 0 3 @  �   6    ] 
 ^  _  `  a % b ( d 0 g 3 e 5 f : h D i M j    H  5     N     N " #    N    N & '    N +  ( &        N     � 3   � Z   Q  @    "     &    	    
 . /  �  R     � VY� XL*� Y M,� _ � ,� e � iN+-� k-� o W���+� u � yM� Y,� } � �N,� Y :� _ � $� e � ;:-+� � � i� � W���-�    �   * 
   m  n " o . p 1 q < r J s h t z u } v    >  "   h         w  < C  J 5    *        w  < C  J 5     �  p `� !�   Z Z `� *     	     � �  �   �     J� �Y� �+� �� �� ��� �� �*�  � �� �� Y� M*�  ,*� $� N*� (,� ,� 0*-� ��    �       z # { $ } , ~ 9  D � I �    *    J     J  ,   9  �      ,      $      
    �    
   �*� �N� �Y� �:,� � W-� �-� �:�66� x2:� �� � Y� �� �� � W� L�� �� �� �:		� �� 	� �� �:ƶ �� ȶ �� +� iY� ʹ � W����� �Ӷ �� �:� � ٶ �:� 
� �:� �Y� �� �*� �� �� � � W� ι � � ��    �   ^    �  �  �  �  � 7 � ? � V � ` � i � q � { � � � � � � � � � � � � � � � � � � � � � � �    R  i   	 7 h    �! #     �    � &"   �#   �  � H$%        �   �&    2 � )  � Z � ; Z'  � , ;$� � �  �   !     &  	   ) * �  �   >     *+� ��    �   
    �  �             +    +   , �  �   >     *+� ��    �   
    �  �             +    +   - �  �   >     *+� ��    �   
    �  �             +    +   . �  �   >     *+� ��    �   
    �  �             +    +   /0  �   >     *+� ��    �   
    �  �             +1    +   23  �   >     *+� ��    �   
    �  �             +4    +   5   67      8 	  �9  i �: 