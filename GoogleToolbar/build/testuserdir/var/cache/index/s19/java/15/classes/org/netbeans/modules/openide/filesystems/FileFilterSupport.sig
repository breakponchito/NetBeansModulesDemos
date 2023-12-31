����   4t
      :org/netbeans/modules/openide/filesystems/FileFilterSupport constructFilterDisplayName 6(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
   	 
 accept !(Ljava/io/File;Ljava/util/List;)Z
      java/lang/Object <init> ()V  java/lang/StringBuilder
     (Ljava/lang/String;)V   [
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;      ! java/util/List iterator ()Ljava/util/Iterator; # $ % & ' java/util/Iterator hasNext ()Z # ) * + next ()Ljava/lang/Object; - Horg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement / , 
 , 1 2 3 getName ()Ljava/lang/String; 5 ]
  7 8 3 toString
 : ; < = ' java/io/File isDirectory
 , ? 	 @ (Ljava/io/File;)Z B java/util/LinkedList
 A  E Services/MIMEResolver
 G H I J K  org/openide/filesystems/FileUtil getConfigFile 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject; M java/util/HashMap
 L 
 P Q R S T "org/openide/filesystems/FileObject getChildren '()[Lorg/openide/filesystems/FileObject;
 P V W ' isFolder
   Z fileChooser.
  \  ] (I)Ljava/lang/StringBuilder;
 P _ ` a getAttribute &(Ljava/lang/String;)Ljava/lang/Object; c java/lang/String e f g h i java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; k java/util/Set m java/util/HashSet
 l  e p q r put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; j t u v add (Ljava/lang/Object;)Z e x y z entrySet ()Ljava/util/Set; j  } java/util/Map$Entry |  � + getKey | � � + getValue
  � � � createFilter G(Ljava/lang/String;Ljava/util/Set;)Ljavax/swing/filechooser/FileFilter;  t
  � � � sortFiltersByDescription "(Ljava/util/List;)Ljava/util/List; � java/util/ArrayList
 � �  � (I)V � ext.
  � � � addExtensionToList %(Ljava/util/List;Ljava/lang/String;)V � 	fileName.
  � � � addNameToList � mimeType
  � � � addMimeTypeExts � 	mimeType.
  � � � sortFilterElements � Iorg/netbeans/modules/openide/filesystems/FileFilterSupport$FileFilterImpl
 � �  � %(Ljava/lang/String;Ljava/util/List;)V
 G � � � getMIMETypeExtensions $(Ljava/lang/String;)Ljava/util/List;
  � � � addAllExtensionsToList #(Ljava/util/List;Ljava/util/List;)V
 , � � � createForExtension ^(Ljava/lang/String;)Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;
  � � � addFilterElementToList ](Ljava/util/List;Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;)V � ,\[([^,]+), (true|false), (true|false)\](\S*)
 � � � � � java/util/regex/Pattern compile -(Ljava/lang/String;)Ljava/util/regex/Pattern;
 � � � � matcher 3(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
 � � � � ' java/util/regex/Matcher find
 � � � � group (I)Ljava/lang/String; � true
 b � � v equals
 , � � � createForFileName r(Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;	  � � � LOG Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level INFO Ljava/util/logging/Level; � Incorrect name pattern {0}
 � � � � � java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V  � � � size ()I  � h � (I)Ljava/lang/Object;
 , � � � compare �(Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;)Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ComparisonResult;	 � � � � � <org/netbeans/modules/openide/filesystems/FileFilterSupport$3 d$SwitchMap$org$netbeans$modules$openide$filesystems$FileFilterSupport$FilterElement$ComparisonResult [I
 � �  � Yorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ComparisonResult ordinal  set '(ILjava/lang/Object;)Ljava/lang/Object; <org/netbeans/modules/openide/filesystems/FileFilterSupport$1
 

 java/util/Collections sort )(Ljava/util/List;Ljava/util/Comparator;)V <org/netbeans/modules/openide/filesystems/FileFilterSupport$2
 
 1 java/lang/Class
 � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; Code LineNumberTable LocalVariableTable this <Lorg/netbeans/modules/openide/filesystems/FileFilterSupport; el JLorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement; displayName Ljava/lang/String; elements Ljava/util/List; sb Ljava/lang/StringBuilder; first Z LocalVariableTypeTable \Ljava/util/List<Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;>; StackMapTable MethodParameters 	Signature �(Ljava/lang/String;Ljava/util/List<Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;>;)Ljava/lang/String; elm file Ljava/io/File; m(Ljava/io/File;Ljava/util/List<Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;>;)Z findRegisteredFileFilters ()Ljava/util/List; Ljava/util/Set; i I f child $Lorg/openide/filesystems/FileObject; e Ljava/util/Map$Entry; filters root filterNameToResolversMap Ljava/util/Map; 5Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; ^Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lorg/openide/filesystems/FileObject;>;>; 6Ljava/util/List<Ljavax/swing/filechooser/FileFilter;>; XLjava/util/Map<Ljava/lang/String;Ljava/util/Set<Lorg/openide/filesystems/FileObject;>;>;E %[Lorg/openide/filesystems/FileObject; 8()Ljava/util/List<Ljavax/swing/filechooser/FileFilter;>; n type t fo lastAtt name 	resolvers elems Ljava/util/ArrayList; aLjava/util/ArrayList<Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;>; m(Ljava/lang/String;Ljava/util/Set<Lorg/openide/filesystems/FileObject;>;)Ljavax/swing/filechooser/FileFilter; exts q(Ljava/util/List<Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;>;Ljava/lang/String;)V s list toAdd $Ljava/util/List<Ljava/lang/String;>; �(Ljava/util/List<Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;>;Ljava/util/List<Ljava/lang/String;>;)V ext fileName 	substring 
ignoreCase 	extension p Ljava/util/regex/Pattern; m Ljava/util/regex/Matcher; result [Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ComparisonResult; newItem �(Ljava/util/List<Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;>;Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;)V n(Ljava/util/List<Ljavax/swing/filechooser/FileFilter;>;)Ljava/util/List<Ljavax/swing/filechooser/FileFilter;>; �(Ljava/util/List<Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;>;)Ljava/util/List<Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;>; 
access$000 x0 x1 
access$100 <clinit> 
SourceFile FileFilterSupport.java InnerClasses FilterElement Entry FileFilterImpl ComparisonResult 1       � �          3     *� �      
    5  6          
          Y� Y*� M>,� W+�  :� " � ,� ( � ,:� >� 
,.� W,� 0� W���,4� W,� 6�      .    C 	 D  E  F 0 G 4 H 9 J @ L J M M N T O   4  0     Y !     Y"#  	 P$%   N&' (       Y") *    �   #�  ,� +   	   "  ,   - 
 	 
    �     6*� 3*� 9� �+�  M,� " � ,� ( � ,N-*� >� �����      "    ^  _  `  b ' c / d 1 f 4 h      ' 
.    6/0     6"# (       6") *    �  #� +   	/  "  ,   1 	23     
   � AY� CKD� FL� LY� NM+� ON-�66� u-2:� U� � ^6� Y� XY� � [� 6� ^� bY:� 9,� d � j:		� � lY� n:	,	� o W	� s W��������,� w � { N-� " � /-� ( � |:*� ~ � b� � � j� �� � W���*� ��      R    l  m  o  q / r 7 s : u = w _ y l z q { z | � ~ �  � � � q � � � � � � � �   R  l &4 	 = X56  \ 97!  / f89  � :;   �<#    �=9   �>? (   *  l &@ 	 � :A   �<B    �>C *   K � "   P eD  �  P� � G b j�    P eD  � �  #� 4,   F 
 � �     
   ޻ �Y� �M+� { :� " � �� ( � P:6� Y� X�� � [� 6� ^� bYN� ,-� �����6� Y� X�� �� [� 6� ^� bYN� ,-� ������ ^� bY:� 	,� �6	� Y� X�� 	�	� [� 6� ^� bY:� ,� ���է�E,� �W� �Y*,� ��      F    � 	 � ' � * � K � P � V � Y � } � � � � � � � � � � � � � � � � �   \ 	 * �56  Y sG6  � :H!  � .I6 	 ' �J9  H �K!    �L!     �M4  	 �NO (       �M@  	 �NP *   U 	�  �  #�  P� +  b j � b # P  � +�  b� � -  b j � b #  � +   	L M ,   Q 
 � �    S     	*+� �� ��      
    �  �       	R#     	H! (       	R)  +   	R  H  ,   S 
 � �    �     #+�  M,� " � ,� ( � bN*-� ����          �  �  � " �       T!    #U#     #V# (       #U)     #VW *    �  #� +   	U  V  ,   X 
 � �    S     	*+� �� ��      
    �  �       	U#     	Y! (       	U)  +   	U  Y  ,   S 
 � �        X�� �M,+� �N-� ș ;-� �:-� �Ѷ �6-� �Ѷ �6-� �:*� ָ �� � ڲ ��+� �      .    �  �  �  �  � & � 2 � 9 � H � K � W �   R   .Z!  & "['  2 \'  9 ]!    XU#     XL!   R^_   L`a (       XU)  *    � K � �+   	U  L  ,   S 
 � �   
     a=*� � � O*� � � ,N+-� �:� �� �.�   +                    !� �*+� W�����*+� � W�      .    �  �  �  � D � G � H � Q � R � X � ` �   4   ;   4bc   V56    aU#     ad (       aU)  *    � � A , � � 	� +   	U  d  ,   e 
 � �    M     *�Y��	*�      
    �  �       U#  (       UB  +   U  ,   f 
 � �    M     *�Y��	*�      
    �  �       "#  (       ")  +   "  ,   gh 
    :     *+� �          *       i0     j# k     :     *+� �          *       i!     j#  l     ,      ��� ڱ          /  0  / m   no   :  , p
 | eq	 � r 
 � ,s@ �                