����   4H
      1org/openide/explorer/view/TableQuickSearchSupport doSearch (Ljava/lang/String;Z)V	   	 
 lastSearchText Ljava/lang/String;	     table Ljavax/swing/JTable;	     qss GLorg/openide/explorer/view/TableQuickSearchSupport$QuickSearchSettings;
      java/lang/Object <init> ()V	     quickSearchInitialRow I	     quickSearchInitialColumn	  ! "  quickSearchLastRow	  $ %  quickSearchLastColumn	  ' ( ) quickSearchLastPos Ljava/awt/Point;	  + , - quickSearchTableFilter 2Lorg/openide/explorer/view/QuickSearchTableFilter;
 / 0 1 2 3 javax/swing/JTable getSelectedRow ()I
 / 5 6 3 getSelectedColumn
 / 8 9 3 getColumnCount
 / ; < 3 getRowCount
 > ? @ A B Eorg/openide/explorer/view/TableQuickSearchSupport$QuickSearchSettings isMatchCase ()Z
 D E F G H java/lang/String toUpperCase ()Ljava/lang/String; J K L M N 0org/openide/explorer/view/QuickSearchTableFilter getStringValueAt (II)Ljava/lang/String;
 D P Q R 
startsWith (Ljava/lang/String;)Z
 T U V W X org/openide/awt/QuickSearch findMaxPrefix 9(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;	 Z [ \ ]  java/awt/Point x	 Z _ `  y
  b c d displaySearchResult (II)V
 f g h i j java/awt/KeyboardFocusManager getCurrentKeyboardFocusManager !()Ljava/awt/KeyboardFocusManager;
 f l m n getFocusOwner ()Ljava/awt/Component;
 > p q r getColumnsIgnoredToSearch ()Ljava/util/Set;
 / t u v getColumnName (I)Ljava/lang/String; x y z { | java/util/Set contains (Ljava/lang/Object;)Z
 D ~  � indexOf (Ljava/lang/String;)I
 / � � � getSelectionModel "()Ljavax/swing/ListSelectionModel; � � � �  javax/swing/ListSelectionModel clearSelection
 / � � � getColumnModel &()Ljavax/swing/table/TableColumnModel; � � � "javax/swing/table/TableColumnModel
 / � � � getCellRect (IIZ)Ljava/awt/Rectangle;
 / � � � scrollRectToVisible (Ljava/awt/Rectangle;)V
 Z �  d � � � d setSelectionInterval � 3org/openide/explorer/view/TableQuickSearchSupport$1
 � �  � 6(Lorg/openide/explorer/view/TableQuickSearchSupport;)V � javax/swing/JPopupMenu
 �  � javax/swing/JCheckBoxMenuItem � %org/openide/explorer/view/OutlineView � CTL_MatchCase
 � � � � � org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 � �   � 3org/openide/explorer/view/TableQuickSearchSupport$2
 � �  � �(Ljavax/swing/JCheckBoxMenuItem;Lorg/openide/explorer/view/TableQuickSearchSupport$QuickSearchSettings;Ljava/awt/event/ActionListener;)V
 � � � � addItemListener  (Ljava/awt/event/ItemListener;)V
 � � � � add 0(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;
 � � �  addSeparator � � � � 
getColumns ()Ljava/util/Enumeration; � � � � B java/util/Enumeration hasMoreElements � 3org/openide/explorer/view/TableQuickSearchSupport$3 � CTL_ColumnsToSearch
 � �  � (Ljava/lang/String;)V
 � � � � � javax/swing/JMenuItem setFocusable (Z)V � Borg/openide/explorer/view/TableQuickSearchSupport$DummyButtonModel
 � 
 � � � � setModel (Ljavax/swing/ButtonModel;)V � � � � nextElement ()Ljava/lang/Object; � javax/swing/table/TableColumn
 � � � � getHeaderValue
  � � H toString � $org/openide/awt/QuickSearch$Callback �(Ljavax/swing/JTable;Lorg/openide/explorer/view/QuickSearchTableFilter;Lorg/openide/explorer/view/TableQuickSearchSupport$QuickSearchSettings;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/explorer/view/TableQuickSearchSupport; MethodParameters setQuickSearchTableFilter 6(Lorg/openide/explorer/view/QuickSearchTableFilter;Z)V asynchronous Z quickSearchUpdate 
searchText StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; showNextSelection forward &(Ljava/lang/String;)Ljava/lang/String; prefixUp strUp str col row prefix row1 row2 col1 col2 	maxPrefix quickSearchConfirmed quickSearchCanceled 
focusOwner Ljava/awt/Component; java/awt/Component cName n lineStartSearch columnsIgnoredToSearch Ljava/util/Set; LocalVariableTypeTable #Ljava/util/Set<Ljava/lang/String;>; column createSearchPopupMenu ()Ljavax/swing/JMenu; getSearchPopupMenu �(Lorg/openide/explorer/view/TableQuickSearchSupport$QuickSearchSettings;Ljavax/swing/table/TableColumnModel;Ljava/awt/event/ActionListener;)Ljavax/swing/JPopupMenu; description Ljavax/swing/JMenuItem; Ljavax/swing/table/TableColumn; cMenu Ljavax/swing/JCheckBoxMenuItem; columnModel $Ljavax/swing/table/TableColumnModel; doSearchAction Ljava/awt/event/ActionListener; pm Ljavax/swing/JPopupMenu; 	matchCase 	iListener Ljava/awt/event/ItemListener; columns Ljava/util/Enumeration; 8Ljava/util/Enumeration<Ljavax/swing/table/TableColumn;>;1 java/awt/event/ActionListener3 java/awt/event/ItemListener 
access$000 |(Lorg/openide/explorer/view/TableQuickSearchSupport;)Lorg/openide/explorer/view/TableQuickSearchSupport$QuickSearchSettings; x0 
access$100 I(Lorg/openide/explorer/view/TableQuickSearchSupport;)Ljavax/swing/JTable; 
access$200 G(Lorg/openide/explorer/view/TableQuickSearchSupport;)Ljava/lang/String; 
access$300 I(Lorg/openide/explorer/view/TableQuickSearchSupport;Ljava/lang/String;Z)V x1 x2 
SourceFile TableQuickSearchSupport.java InnerClasses QuickSearchSettings DummyButtonModel CallbackF Corg/openide/explorer/view/TableQuickSearchSupport$StringValuedTable StringValuedTable      � 	            "     %     ( )    	 
         , -            �  �   �     -*� *� *� *�  *� #*� &*+� *,� **-� �    �   * 
   C  7 	 8  9  :  ;  D " E ' F , G �   *    - � �     -      - , -    -    �       ,       � �  �   H     *+� *�    �   
    J  K �         � �      , -     � �  �   	 ,   �    � �  �   �     T*+� *� � 3**� � .� **� � 4� *� � *� *� � *� **� �  **� � #*+� �    �   2    O  P  Q  R # S + T 0 V 8 W = Z E [ M \ S ] �       T � �     T � 
  �    0 �    �   �     �    � �  �   �     B� 7*Y� #`Z� #*� � 7� "*� #*Y�  `Z�  *� � :� *�  **� � �    �       a  b  c  d 3 e 8 i A j �       B � �     B  �  �    8 �       �     �    W  �  >     �*� � =� +M� +� CM>*� � :66*� � 76:6� n6		� ]*� *	� I :
*� � =� 

:� 

� C:,� O� '� 

:� 
*� � =� � � S:�	�������� �+�    �   ^    o 
 p  r  t  u  v " w + x . y 8 z C { R } \ ~ c � j � s � x �  � � z � y � � � � � � �   �    
  `  
  R E 
 
 j - 
  < a  	 1 r     � � �     � 
   � 
   �    �	   " �
   + �   .  
  �   � �  D�  	  D D D  � 
� & D�  D�    D D D D D  D D�     D D D D D  D D� � �  �      �     �      �   g     $*� &� **� &� Y*� &� ^� a*� *� �    �       �  �  �  � # � �       $ � �   �     �     �      �   �     '� e� kL+� **� *� � a*� *� *� &�    �       �  �  �  �  � ! � & � �       ' � �       �    �  �     �       �  #    �*� � =� +� CL*� � :>*�  6*�  `66*� � o:*� #6� *� � 7� 6	� � d6
� 
� ֧ 

� �6� 	� �� 
	� �*� � s:� w � � Z*� *
p� I :� � A*� � =� 
� C:� +� O� "*
p� a�+� }� *
p� a�� �� ��6��g� � *� � 7d6� �

� �
�
6
��%� � 6���*� &*� � �� � *� � �� � � � *� *� *� *� � �� ��    �   � $   � 
 �  �  �  � % � ( � 1 � 7 � H � l � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �5 �A �F �K �W �h � � �   �  � f 
  � F 
  p �   W �  
 7

   H �  	  � � �    � � 
   �  �  i   c   %[	   (X �  1O      1O  �   S � !   D x  � @� 
C� � �  D�  D� D� HD� @ �   	 �       c d  �   �     J*�  *� #*� ZY� �� &*� � �� � *� � �� � � � *� *� � �� ��    �       �  � 
 �  � % � 8 � I � �        J � �     J     J   �   	        �   3     	� �Y*� ��    �       � �       	 � �     �  =  
   ǻ �Y� �N� �Y��� �*� =� �:� �Y*,� �:� �-� �W-� �+� � :� � � ,� �Y�ϸ �� �:� �� �Y� ܶ �-� �W� � � H� � � �:� � �:� �Y*� o� w � � � �:		� �-	� �W���-�    �   ^    �  �  �  �  � ) 0 7 ; C M ] c o v � �  �! �# �$ �% �& �' �   p  ]    � 6!  � , 
  � "# 	   �       �$%    �&'   �()   �*#  ) �+,  C �-.      C �-/  �   x � v  > �0 � �2 �  � 7 	 > �0 � �2 � � D  � � D�   	 > �0 � �2 � � D  � � D�  �     $ & 45  �   /     *� �    �       5 �       6 �  78  �   /     *� �    �       5 �       6 �  9:  �   /     *� �    �       5 �       6 �  ;<  �   E     *+� �    �       5 �        6 �     = 
    > �  ?   @A   :  > B  �       �       �       � C  � TD	E G