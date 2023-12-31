����   4d	      $org/openide/loaders/BrokenDataShadow url Ljava/net/URL;
  	 
   #org/openide/loaders/MultiDataObject <init> L(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/MultiFileLoader;)V
      org/openide/loaders/DataShadow readURL 4(Lorg/openide/filesystems/FileObject;)Ljava/net/URL;  java/io/IOException  java/net/URL  file  /UNKNOWN
     9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V  java/net/MalformedURLException
 ! " # $ % java/lang/Class getName ()Ljava/lang/String;
 ' ( ) * + java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 - . / 0 1 java/util/logging/Level WARNING Ljava/util/logging/Level;
 ' 3 4 5 log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  7 8 9 enqueueBrokenDataShadow )(Lorg/openide/loaders/BrokenDataShadow;)V
  ; < = getCookieSet ()Lorg/openide/nodes/CookieSet;
 ? @ A B C org/openide/nodes/CookieSet 	getLookup ()Lorg/openide/util/Lookup;	  E F G allDataShadows Ljava/util/Map; I java/util/HashMap
 H K  L ()V
  N O P getDataShadowsSet ()Ljava/util/Map;
  R S T getUrl ()Ljava/net/URL;
  V W % toExternalForm Y .org/openide/loaders/DataShadow$DSWeakReference
 X [  \ (Ljava/lang/Object;)V ^ _ ` a b java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; d java/util/Set
 f g h i j java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set; ^ l m n put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; p java/util/HashSet
 o r  s (Ljava/util/Collection;)V c u v w add (Ljava/lang/Object;)Z ^ y z { isEmpty ()Z } java/util/ArrayList ^  � � size ()I
 | �  � (I)V ^ � � � values ()Ljava/util/Collection; � � � � � java/util/Collection iterator ()Ljava/util/Iterator; � � � � { java/util/Iterator hasNext � � � � next ()Ljava/lang/Object; c � � java/lang/ref/Reference
 � � a � � u � java/util/List � "org/openide/loaders/OperationEvent
 � � � � 	getObject "()Lorg/openide/loaders/DataObject;
 � � � � � org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject; � !org/openide/filesystems/FileEvent
 � � � � getFile
  � � � canCheckValidity '(Lorg/openide/filesystems/FileObject;)Z
 � � � � T "org/openide/filesystems/FileObject getURL � 1org/openide/filesystems/FileStateInvalidException
  � � � getAllDataShadows ()Ljava/util/List; �  � � a � (I)Ljava/lang/Object;
  � � L refresh	  � � � CHECK_ONLY_DEFAULT Z
 � � � � getFileSystem &()Lorg/openide/filesystems/FileSystem;
 � � � � { "org/openide/filesystems/FileSystem 	isDefault	 � � � � LOG Ljava/util/logging/Logger;
 � � � % toString
 � � � � � "org/openide/loaders/DataLoaderPool getShadowLoader '()Lorg/openide/loaders/MultiFileLoader;
  	
  �
 � � � { canWrite
 � � � � � !org/openide/filesystems/URLMapper findFileObject 4(Ljava/net/URL;)Lorg/openide/filesystems/FileObject;
  � � � setValid (Z)V �  java/beans/PropertyVetoException
 � � � L printStackTrace	 � � � � � org/openide/util/HelpCtx DEFAULT_HELP Lorg/openide/util/HelpCtx; � 5org/openide/loaders/BrokenDataShadow$BrokenShadowNode
 � �  9  7org.openide.loaders.BrokenDataShadow.CHECK_ONLY_DEFAULT
 java/lang/Boolean 
getBoolean (Ljava/lang/String;)Z 	Signature uLjava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/ref/Reference<Lorg/openide/loaders/BrokenDataShadow;>;>;>; serialVersionUID J ConstantValueն�K��?^ Code LineNumberTable LocalVariableTable ex2  Ljava/net/MalformedURLException; ex Ljava/io/IOException; this &Lorg/openide/loaders/BrokenDataShadow; fo $Lorg/openide/filesystems/FileObject; loader %Lorg/openide/loaders/MultiFileLoader; StackMapTable #org/openide/loaders/MultiFileLoader 
Exceptions  -org/openide/loaders/DataObjectExistsException MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; w()Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/ref/Reference<Lorg/openide/loaders/BrokenDataShadow;>;>;>; ds m prim Ljava/lang/String; ref Ljava/lang/ref/Reference; s Ljava/util/Set; LocalVariableTypeTable ALjava/lang/ref/Reference<Lorg/openide/loaders/BrokenDataShadow;>; RLjava/util/Set<Ljava/lang/ref/Reference<Lorg/openide/loaders/BrokenDataShadow;>;>;1 java/lang/String r shadow refs Ljava/util/Iterator; ret Ljava/util/List; it WLjava/util/Iterator<Ljava/lang/ref/Reference<Lorg/openide/loaders/BrokenDataShadow;>;>; 8Ljava/util/List<Lorg/openide/loaders/BrokenDataShadow;>; hLjava/util/Iterator<Ljava/util/Set<Ljava/lang/ref/Reference<Lorg/openide/loaders/BrokenDataShadow;>;>;>; :()Ljava/util/List<Lorg/openide/loaders/BrokenDataShadow;>; checkValidity (Ljava/util/EventObject;)V key 3Lorg/openide/filesystems/FileStateInvalidException; obj Ljava/lang/Object; i I ev Ljava/util/EventObject; src  Lorg/openide/loaders/DataObject; shadows allL java/lang/ObjectN java/lang/Throwable e '(Lorg/openide/filesystems/FileObject;)V isDeleteAllowed "Ljava/beans/PropertyVetoException; isCopyAllowed isMoveAllowed isRenameAllowed 
getHelpCtx ()Lorg/openide/util/HelpCtx; createNodeDelegate ()Lorg/openide/nodes/Node; 
access$002 D(Lorg/openide/loaders/BrokenDataShadow;Ljava/net/URL;)Ljava/net/URL; x0 x1 <clinit> 
SourceFile BrokenDataShadow.java InnerClasses DSWeakReference BrokenShadowNode 0            � �   
 F G     	
            �     =*+,� *+� � � *N*� Y� � � :�  � &� ,� 2*� 6�       " %     * 
   S  V  ]  W  Y " \ % Z ' [ 8 ^ < _   4  '    &    =     =    =    . �    �  �    �   �     !   	      B C    2     *� :� >�          c         "    #   ( O P    =      � D� � HY� J� D� D�          m  n  p       $ * 8 9   (     d� ML*� Q� UM� XY*� ZN+,� ] � c:� -� e:� M,� k W� +� o� � oY� q:� M,� k W-� t W�      2    t  v  w  x ! y & z , { ; } C ~ N  Z � c �   4    d%    `& G   X'(   O)*  ! C+, -       `&   O).  ! C+/     � ;   ^0 � c  !   %   * � �   n     � D� � D� x � �� |Y� D� ~ � �K� D� � � � L+� � � F+� � � cM,� � N-� � � )-� � � �:� �� :� *� � W��ԧ��*�      >    �  �  � # � 1 � : � D � K � T � _ � i � n � w � z � } �   >  _ 2*  i 3  D 6),  K /45  # \67   1 N85 -   4  _ 2.  D 6)/  K /49  # \6:   1 N8;     �  � ��  c �+�    < =>   �  	   �YL² D� � D� x � +ñ+ç M+�,�L*� �� *� �� �L+� +� �M� *� �� *� �� �M� �,� �� �,� �� UN� :�:Y:² D� � D� x � ñ+� � D-� ] � c:� ñç :��� �:� �� � 66� � � :� � Ą���             !    [ c f � r � �   � � �   � � �   � � �      � #   �  �  �  � # � % � , � 4 � 8 � @ � G � R � S � Z � [ � c � f � h � i � l � r � � � � � � � � � � � � � � � � � � � � � � � � � � � � �   �  =    O    c ?(  h @  � AB  �  CD    �EF   % �GH  S �   i ?(  l |I,  � 3J7  � $ �D    I � KDM� �  ��   �J �� 0�  cKEM� � 
 �� � !   E   
 � �    ~     !� Ǚ *� ˶ ϬL� Բ ,+� �+� 2��     �        �  �  �  �  �  �      O@    !       N �!        P    A     	*+� ۷ �      
    �  �       	     	     !      Q {    2     *� � �                     � L    v     *� Q� �� *� � L+� �      �        
  
        OR          B � S {    ,     �                   T {    2     *� � �                   U {    2     *� � �         !          VW    .     � ��         (          XY    3     	� �Y*� ��         .       	     S T    /     *� �         2         Z[    ;     *+Z� �          ?       \     ]   ^ L    !      	��� Ǳ          H _   `a     X b  � c 