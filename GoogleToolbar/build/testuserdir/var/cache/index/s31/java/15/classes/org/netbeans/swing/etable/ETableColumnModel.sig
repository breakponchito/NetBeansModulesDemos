����   4p
      )javax/swing/table/DefaultTableColumnModel <init> ()V  java/util/ArrayList
  	      +org/netbeans/swing/etable/ETableColumnModel sortedColumns Ljava/util/List;	     hiddenColumns	     hiddenColumnsPosition  java/util/Vector
  	     tableColumns Ljava/util/Vector;  java/lang/StringBuilder
  
  ! " # append -(Ljava/lang/String;)Ljava/lang/StringBuilder; % ColumnsNumber
  ' ( ) toString ()Ljava/lang/String;
 + , - . / java/util/Properties getProperty &(Ljava/lang/String;)Ljava/lang/String;
 1 2 3 4 5 java/lang/Integer parseInt (Ljava/lang/String;)I
 7 8 9 : ;  org/netbeans/swing/etable/ETable createColumn "(I)Ljavax/swing/table/TableColumn; = &org/netbeans/swing/etable/ETableColumn
 < ? @ A readSettings ,(Ljava/util/Properties;ILjava/lang/String;)V
  C D E 	addColumn "(Ljavax/swing/table/TableColumn;)V
 < G H I getComparator ()Ljava/util/Comparator; K L M N O java/util/List size ()I K Q R S get (I)Ljava/lang/Object;
 < U V O getSortRank K X Y Z add (ILjava/lang/Object;)V \ HiddenColumnsNumber ^ Hidden K ` Y a (Ljava/lang/Object;)Z c HiddenPosition e ETableColumn-
 1 g ( h (I)Ljava/lang/String;
 1 j k l valueOf (I)Ljava/lang/Integer;
  L
 + o p q setProperty 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
  s t u iterator ()Ljava/util/Iterator; w x y z { java/util/Iterator hasNext ()Z w } ~  next ()Ljava/lang/Object;
 < � � A writeSettings K s
 1 � � O intValue K � � { isEmpty � 6org/netbeans/swing/etable/ETable$OriginalRowComparator
 �  � >org/netbeans/swing/etable/ETableColumnModel$CompoundComparator
 � �  � 0(Lorg/netbeans/swing/etable/ETableColumnModel;)V
 < � � { isSortingAllowed K � � a contains
 < � � � setAscending (Z)V
 < � � � setSortRank (I)V K � � a remove
 < � � � 	setSorted (IZ)V
  � � E clearSortedColumns
 < � � { isAscending
  � �  updateRanks
  � � � removeColumn #(Ljavax/swing/table/TableColumn;Z)V � javax/swing/table/TableColumn
  � � � removeHiddenColumn #(Ljavax/swing/table/TableColumn;Z)I
  � � � indexOf (Ljava/lang/Object;)I
  � � E K � � � set '(ILjava/lang/Object;)Ljava/lang/Object;
 � � � � a java/lang/Object equals K � � S
  �
 � � � � � java/lang/Math min (II)I
  � D � #(Ljavax/swing/table/TableColumn;I)V � "java/lang/IllegalArgumentException � Object is null
 � �  � (Ljava/lang/String;)V
  � � � insertElementAt (Ljava/lang/Object;I)V
 � � � � addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V	  � � � totalColumnWidth I � 'javax/swing/event/TableColumnModelEvent
 � �  � )(Ljavax/swing/table/TableColumnModel;II)V
  � � � fireColumnAdded ,(Ljavax/swing/event/TableColumnModelEvent;)V
  � � � 
moveColumn (II)V
  � � � 
getColumns ()Ljava/util/Enumeration;
 � � � � � java/util/Collections list .(Ljava/util/Enumeration;)Ljava/util/ArrayList;
 <  { isSorted
   � K addAll (Ljava/util/Collection;)Z
  �	 
 columnHierarchyRoot 8Lorg/netbeans/swing/etable/TableColumnSelector$TreeNode; NUMBER_OF_COLUMNS Ljava/lang/String; ConstantValue NUMBER_OF_HIDDEN_COLUMNS PROP_HIDDEN_PREFIX PROP_HIDDEN_POSITION_PREFIX 	Signature 1Ljava/util/List<Ljavax/swing/table/TableColumn;>; %Ljava/util/List<Ljava/lang/Integer;>; Code LineNumberTable LocalVariableTable this -Lorg/netbeans/swing/etable/ETableColumnModel; M(Ljava/util/Properties;Ljava/lang/String;Lorg/netbeans/swing/etable/ETable;)V setc (Lorg/netbeans/swing/etable/ETableColumn; j etc i myPrefix posStr pos p Ljava/util/Properties; propertyPrefix table "Lorg/netbeans/swing/etable/ETable; s 
numColumns sh numHiddenColumns StackMapTable/ java/lang/String MethodParameters +(Ljava/util/Properties;Ljava/lang/String;)V obj Ljava/lang/Object; G()Ljava/util/Comparator<Lorg/netbeans/swing/etable/ETable$RowMapping;>; setColumnSorted -(Lorg/netbeans/swing/etable/ETableColumn;ZI)V 	ascending Z newRank 	wasSorted #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value deprecation toggleSortedColumn ,(Lorg/netbeans/swing/etable/ETableColumn;Z)V cleanAll column Ljavax/swing/table/TableColumn; Ljava/lang/Override; sc index n columnIndex doShift hi hiddenIndex setColumnHidden Ljava/lang/Integer; hidden aColumn ci1 ci2 getAllColumns ()Ljava/util/List; columns LocalVariableTypeTable 3()Ljava/util/List<Ljavax/swing/table/TableColumn;>; isColumnHidden "(Ljavax/swing/table/TableColumn;)Z tc o 
notThisOne getSortedColumns clean 
allColumns getColumnHierarchyRoot :()Lorg/netbeans/swing/etable/TableColumnSelector$TreeNode; setColumnHierarchyRoot ;(Lorg/netbeans/swing/etable/TableColumnSelector$TreeNode;)V 
SourceFile ETableColumnModel.java InnerClasses OriginalRowComparator CompoundComparatori 6org/netbeans/swing/etable/TableColumnSelector$TreeNodek -org/netbeans/swing/etable/TableColumnSelector TreeNoden +org/netbeans/swing/etable/ETable$RowMapping 
RowMapping !           $      [      ]      b �                                `     &*� *� Y� 	� 
*� Y� 	� *� Y� 	� �          I  6  =  ? % J       &    @   �    t*� Y� � *� Y� 	� 
+� Y� ,�  $�  � &� *:� 066� o-� 6� <:+,� >*� B� F� G6*� 
� J � )*� 
� P � <:		� T� T� � 	����*� 
� W ����*� Y� 	� +� Y� ,�  [�  � &� *:� 066� :-� 6� <:		+� Y� ,�  ]�  � &� >*� 	� _ W����*� Y� 	� 6� I� Y� ,�  b�  d�  � f�  � &:	+	� *:

� 06*� � i� _ W�����      � !   T  U  V / W 6 X @ Y K Z T [ Z \ b ] e ^ s _ � ` � a � ^ � d � X � g � h � i � j � k � l m j o# p- qO rW s^ tm ps v   �  �  	 e A �  K [  9 s  �  � ' 	 � >  � O ! 	W " 
^ # � & M  �   t    t$%   t&   t'(  /E)  6>* �  � �+  � �, � -   + 
� 9.� + <-� � � -.� =� � L0   $  &  '    �1   5  	  &>*� � m6+� Y� ,�  $�  � &� f� nW*� � r:� v � )� | :� <� � <:+�,� ����>*� � J 6+� Y� ,�  [�  � &� f� nW*� � � :� v � ;� | :� <� '� <:+�� Y� ,�  ]�  � &� ����>� H*� � P � 1� �6� Y� ,�  b�  d�  � f�  � &:+� f� nW�����      Z    �  �  � ( � D � L � S � ^ � a � c � n � � � � � � � � � � � � � � � � � � �% �   z  S   D 23  �   � ,23  � -# �  !   &    &$%   &&  $  �  * �  n �, � -    � 1 w,� � 4 w>� � J0   	$  &    H I    X     *� 
� � � � �Y� ��� �Y*� ��          �  �  �         -       4 56    �     I+� �� �*� 
+� � 6� +� �+� �*� 
+� � W� 	+� �� *� 
d+� W �      .    �  �  �  �  �  � # � 1 � 7 � ; � H �   4    I     I    I78    I9 �   5:8 -   	 � (0     7  9  ;    < =[ s>  ?@    �     c+� �� �*� 
+� � >� *+� �� *+� �� +� �� *� 
+� � W+� �*� �� +*� 
� J `� �*� 
+� _ W�      :    �  �  �  �  �  �   � ' � / � : � @ � G � W � b �   *    c     c    cA8   P:8 -    � 0   	  A  ;    < =[ s>  � E    ?     *+� ��      
    �  �            BC 0   B  ;    D    � �   �     �*� 
+� � � F>*� 
� � :� v � /� | � �:� <� � <:� �� �����*+� �� �*� +� �>*+� �� s*� � J 66� !*� � P � 1� �� �����6� 6*� � P � 1� �6� *� ��� i� � W���ɱ      ^    �  �  � 0 � 8 � ? � J � M � P � Y � b � g � k � v � � � � � � � � � � � � � � � � � �   p  ?   0 EC   A  �  y %  �  � F �  � :  �  v eG �  b yH �    �     �BC    �I8 -   $ 	�  w� / �� � (� � 3� 0   	B  I    � �   �     �>6*� � J � !+*� � P � ę 	>� 	����� p*� � � W*� � � � 1� �6� L*� � J 66� 7*� � P � 1� �6� *� ��� i� � W������      J      % (	 + 1 5 @ R V a k ~ � � � �   \ 	  ,  �  ~ F �  d ;  �  a >G �  R PJ �    �     �BC    �I8   �K � -    � %� � 24� � 0   	B  I   L �   �     �� �*� +� � � �*� +� �>� h*+� �*� +� _ W*� � � :� v � � | � 1:� �� ����*� � i� � � 	����*� � i� _ W� _*� +� ˚ T*+� �>� I6*� � � :� v � � | � 1:� �� �����*� � m� �>*+� ұ      Z   % & ' ( ) $* /+ P, \- _. u/ �1 �3 �4 �5 �6 �7 �8 �9 �: �; �?   R  P #M   iF �  � #M  � C  �  � JF �    �     �BC    �N8 -   ! 
� : w!� � � # w!� � 0   	B  N    D �    �     0+� � �Y׷ ٿ*� +� �+*� �*� �*� �Y*� � ��         C D G H J !M /N        0     0OC    0F � -    0   	O  F    � �   �     �*� �*� � J >6� .*� � P � 1� �6� �� ������ E6� <*� � P � 1� �6� � *� ��� i� � W����� E6� <*� � P � 1� �6� � *� �� i� � W���ı      R   R T V W ,X 5Y >V D[ I\ R] e^ q_ �\ �c �d �e �f �g �d �k   f 
 , F �   1  �  e  F �  L ?  �  �  F �  � ?  �    �     �P �    �Q �   �G � -   ! 
� � !� � � 8� � 8� 0   	P  Q  ;    D    RS    �     U*� �� �L*� � J =>� =*� � P � 1� �6+� J � �6+*� � P � �� W ����+�      "   o p q r +s 8t Mq Sv   4  + "F �   ?  �    U    MT    CG � U      MT -    �  K� >   V WX    ?     *� +� � �                     YC 0   Y    �     �     ;*� 
� � L+� v � +� | M,� <� ,� <N-� ����*� Y� 	� 
�         � � !� &� ,� /� :�      &    Z3    ;  -    � 
 w!� ;    < =[ s>   � E    �     `*� 
+� � =*� 
� � N-� v � *-� | :� <� +� � <:� ����*� Y� 	� 
� *� 
+� _ W�      * 
  � � &� 4� ;� B� E� P� T� _�   4  ;   & Z3    `     `[C   U:8 -    �  w,� 0   [  ;    < =[ s>  �     �     ;<*� 
� � M,� v � (,� | N-� <� -� <:� �� 	� ���ձ      "   � � � #� )� 1� 7� :�   *  )    Z3    ;    9  � -    �  w*�   \S    /     *� 
�         �            V ]     �     R� Y*� � m*� � J `�L+*� � W+*� � W+� � M,� v � ,� | � �N*-����         � � $� /� I� N� Q�      I YC    R    9^  U      9^ -    � 6 K w�  _`    /     *�	�         �          ab    >     *+�	�      
   � �             0      c   de   "  � 7f  � g hjl	m 7o 