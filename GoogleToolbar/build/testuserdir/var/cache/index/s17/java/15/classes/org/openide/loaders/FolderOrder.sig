����   4i
      org/openide/loaders/FolderOrder 
doSetOrder $([Lorg/openide/loaders/DataObject;)V
  	 
   java/lang/Object <init> ()V	     folder $Lorg/openide/filesystems/FileObject;	     sortMode )Lorg/openide/loaders/DataFolder$SortMode;
      'org/openide/loaders/DataFolder$SortMode write '(Lorg/openide/filesystems/FileObject;)V
     read O(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataFolder$SortMode;
   ! " # $ "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem; & !org/openide/loaders/FolderOrder$1
 % (  ) E(Lorg/openide/loaders/FolderOrder;[Lorg/openide/loaders/DataObject;)V
 + , - . / "org/openide/filesystems/FileSystem runAtomicAction 4(Lorg/openide/filesystems/FileSystem$AtomicAction;)V 1 java/util/HashMap
 0 3  4 (I)V	  6 7 8 order Ljava/util/Map;
 : ; < = > org/openide/util/Enumerations array ,([Ljava/lang/Object;)Ljava/util/Enumeration;
 : @ A B removeDuplicates 0(Ljava/util/Enumeration;)Ljava/util/Enumeration; D E F G H java/util/Enumeration hasMoreElements ()Z D J K L nextElement ()Ljava/lang/Object; N org/openide/loaders/DataObject
 M P Q R getPrimaryFile &()Lorg/openide/filesystems/FileObject;
   T U R 	getParent
  W X Y equals (Ljava/lang/Object;)Z
   [ \ ] 
getNameExt ()Ljava/lang/String;
 _ ` a b c java/lang/Integer valueOf (I)Ljava/lang/Integer; e f g h i java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  k  
 m n o p q $org/openide/loaders/FolderComparator findFileObject 8(Ljava/lang/Object;)Lorg/openide/filesystems/FileObject; e s t u get &(Ljava/lang/Object;)Ljava/lang/Object;
  w x y getSortMode +()Lorg/openide/loaders/DataFolder$SortMode;
 m { | } 	doCompare '(Ljava/lang/Object;Ljava/lang/Object;)I
   � } compare
 M � � � find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject; � /org/openide/loaders/DataObjectNotFoundException � "java/lang/IllegalArgumentException � Expected DataObjects or Nodes.
 � �  � (Ljava/lang/String;)V
 _ � � � intValue ()I � org/openide/loaders/DataFolder � OpenIDE-Folder-Order
   � � � getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
   � � � setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V e � � � size e � � � entrySet ()Ljava/util/Set; � � � � � java/util/Set iterator ()Ljava/util/Iterator; � � � � H java/util/Iterator hasNext � � � L next � java/util/Map$Entry � � � L getValue � � � L getKey � java/lang/String
   � � � getFileObject 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 � � � � � java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 � � � � �  org/openide/filesystems/FileUtil setOrder (Ljava/util/List;)V	  � � � previous Ljava/lang/Object; � [Ljava/lang/Object;
  � � � )([Ljava/lang/Object;[Ljava/lang/Object;)Z
  � � � doRead (Ljava/lang/Object;)V	  � � 8 knownOrders
 � � � �  org/openide/loaders/FolderList changedFolderOrder
 � � � � � java/lang/Math min (II)I
  � � � checkNonNull ([Ljava/lang/Object;I)Z � [[Ljava/lang/String;
 0 	 � java/util/StringTokenizer � /
 � �  � '(Ljava/lang/String;Ljava/lang/String;)V
 � � � H hasMoreTokens
 � � � ] 	nextToken	  � � � map Ljava/util/WeakHashMap;
 s java/util/WeakHashMap java/lang/ref/Reference
 t L
   
 java/lang/ref/SoftReference
	  �
 f
   
 3
 java/util/Collections synchronizedMap  (Ljava/util/Map;)Ljava/util/Map; java/util/Comparator 	Signature yLjava/util/WeakHashMap<Lorg/openide/filesystems/FileObject;Ljava/lang/ref/Reference<Lorg/openide/loaders/FolderOrder;>;>; GLjava/util/Map<Lorg/openide/filesystems/FileObject;Ljava/lang/Object;>; 6Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>; Code LineNumberTable LocalVariableTable this !Lorg/openide/loaders/FolderOrder; MethodParameters setSortMode ,(Lorg/openide/loaders/DataFolder$SortMode;)V mode 
Exceptions( java/io/IOException StackMapTable arr ![Lorg/openide/loaders/DataObject; obj  Lorg/openide/loaders/DataObject; fo en Ljava/util/Enumeration; i I LocalVariableTypeTable 9Ljava/util/Enumeration<Lorg/openide/loaders/DataObject;>; ex 1Lorg/openide/loaders/DataObjectNotFoundException; fo1 fo2 
comparator obj1 obj2 i1 Ljava/lang/Integer; i2 entry Ljava/util/Map$Entry; children %[Lorg/openide/filesystems/FileObject; <Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;B o a b len from 	namesExts names [Ljava/lang/String; exts set file Ljava/lang/String; sepnames tok Ljava/util/StringTokenizer;L findFor G(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/FolderOrder; ref Ljava/lang/ref/Reference; <Ljava/lang/ref/Reference<Lorg/openide/loaders/FolderOrder;>;[ java/lang/Throwable 
access$000 x0 x1 <clinit> <Ljava/lang/Object;Ljava/util/Comparator<Ljava/lang/Object;>; 
SourceFile FolderOrder.java InnerClasses SortModef /org/openide/filesystems/FileSystem$AtomicAction AtomicAction Entry 0      � �      � 8      7 8                � �          F     
*� *+� �          C  D 	 E       
 !     
   "       #$    J     *+� +*� � �          M  N  Q        !     %  &    '"   %    x y    R     *� � **� � � *� �          V  W  Y        !  )      �     L     *� � � %Y*+� '� *�      
    d  i        !     *+ &    '"   *  "     0     q+� f*� 0Y+�hl`� 2� 5+� 9� ?M>,� C � =,� I � M:� O:*� � S� V� *� 5� Z�� ^� d W���� *� 5*� j�      B    l  m  p  q  p  t ! u * v 5 w < x K z a | d } g ~ l � p �   >  5 ,,-  < %.    E/0  ! C12    q !     q*+ 3      E/4 )    � ! D?� &    '"   *    � }   �  	   �*� 5� � *� 5+� l� Z� r � _N*� 5� � *� 5,� l� Z� r � _:-� g� �*� v:� m� � m+,� z�+� M� ,� M� +� M,� M� ~�+� l:,� l:� �� �� ~�:� �Y�� ��� �-� �� �� �-� �� �� ��  � � � �    b    �  � ? � C � H � J � P � X � c � q �  � � � � � � � � � � � � � � � � � � � � � � � � � � �   \ 	 � 
56  � "7   � 8   P W9     � !     �: �    �; �   �<=  ? �>= )   F R _�  _R _�  _�  �      _ _       �� "   	:  ;         �     u*� �� �� *� �� �*� 5� Z*� 5� � �  L*� 5� � � � M,� � � .,� � � �N+-� � � _� �*� -� � � �� �S���+� �� Ǳ      & 	   �  �  �  � * � L � j � m � t �      L ?@  * JAB    u !  3     L ?C )    � "D �� 3� &    '       �     u*� �� �L*� �� +� *� �� *� �+� V� �+� љ *� �� љ +� �*� �� Ѹ ә �*+� �*+� �*� �� � �*� *� ͹ d W*� � ݱ      6    � 
 � ! � ' � ( � 9 � J � K � P � U � \ � m � t �       u !   
 kE � )    �   "! 
 � �   ;     �*+� �*�+�� �=>� T*2+2� E*2� �*2+2� V� � .*2� љ #+2� љ *2� �+2� Ѹ ә � ������*�+�� *� +N-� � ��      N    �  �  �  �  �  � % � ' � 3 � 6 � H � Z � ] � _ � a � g � t � | � ~   4   V12    �F �     �G �   qH2  t * � )    � 	&� 
@ �� 
 �"   	F  G   
 � �    v     =*�� *2� ������                    12    F �     I2 )   
 � � "   	F  I    � �   P     �+� 	*� 5�+� � g+� �M,�� 	*� 5�,2N,2:-� � -��� 	*� 5�� 0Y-�� 2:6-�� -2� ^� d W����*� 5�+� �� H+� �M� 0Y� �N� �Y,� �:6� �� � �:-� ^� d W����*-� 5�*� 5�      � !    	 
    ! " & +! <# A$ B( M* W+ h* n- t. u0 |2 �3 �4 �5 �6 �7 �8 �9 �: �< �= �@ �A   z  P 12   _J �  & OKL  + JML  M (N 8  � OP  � @QP  � 8N 8  � ,RS  � )12    � !     �E � 3     M (N  � 8N )   O 

�  �� TT�  e� �      � "    � e �  "�      "   E   	UV   M     tL� �YM² �*� �N-� � 
-�� L+� 1� Y*�L+� �*� r � �++� ͷ ֲ �*�	Y+��W,ç 
:,��+YM�+�+,ð:,��   W Z   Z ^ Z   e l m   m q m      :   K L M N #O 'P 0Q =R ET UV aX eY iZ m[       BWX    t      r 7! 3      BWY )   / �   F � 2DZ� �       Z"      \ )    :     *+� �          %       ]!     ^+ &    ' _     @      �Ye�� ��Y2��� ڱ          )  3  4  3    `a   bc   "   �d	 %      e +g	 � eh	