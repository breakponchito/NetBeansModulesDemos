����   4[	      3org/netbeans/swing/tabcontrol/DocumentSwitcherTable inCloseButtonRect Z
  	 
   .org/netbeans/swing/popupswitcher/SwitcherTable <init> 9([Lorg/netbeans/swing/popupswitcher/SwitcherTableItem;I)V	     lastRow I	     lastCol	     	displayer ,Lorg/netbeans/swing/tabcontrol/TabDisplayer;
     createCloseButton ()Ljavax/swing/JButton;	     btnClose Ljavax/swing/JButton;
 ! " # $ % javax/swing/ToolTipManager sharedInstance ()Ljavax/swing/ToolTipManager;
 ! ' ( ) registerComponent (Ljavax/swing/JComponent;)V
  + , - getModel  ()Ljavax/swing/table/TableModel; / 0 1 2 3 javax/swing/table/TableModel 
getValueAt (II)Ljava/lang/Object; 5 2org/netbeans/swing/popupswitcher/SwitcherTableItem
  7 8 9 getSelectedRow ()I
  ; < 9 getSelectedColumn
  > ? @ prepareRenderer =(Ljavax/swing/table/TableCellRenderer;II)Ljava/awt/Component; B 8org/netbeans/swing/tabcontrol/DocumentSwitcherTable$Item
  D E F 
isClosable =(Lorg/netbeans/swing/tabcontrol/DocumentSwitcherTable$Item;)Z H javax/swing/JLabel
 G J K L getText ()Ljava/lang/String; N  ←
 P Q R S T java/lang/String endsWith (Ljava/lang/String;)Z
 P V W 9 length
 P Y Z [ 	substring (II)Ljava/lang/String;
 G ] ^ _ setText (Ljava/lang/String;)V a javax/swing/JPanel c java/awt/BorderLayout
 b e  f (II)V
 ` h  i (Ljava/awt/LayoutManager;)V k Center
 ` m n o add )(Ljava/awt/Component;Ljava/lang/Object;)V q East
 s t u v w java/awt/Component getBackground ()Ljava/awt/Color;
 ` y z { setBackground (Ljava/awt/Color;)V
 } ~  � � java/awt/event/MouseEvent getPoint ()Ljava/awt/Point;
 } � � � 	getSource ()Ljava/lang/Object;
 � � � � � javax/swing/SwingUtilities convertPoint J(Ljava/awt/Component;Ljava/awt/Point;Ljava/awt/Component;)Ljava/awt/Point;
  � � � getCellRect (IIZ)Ljava/awt/Rectangle;
 � � � � � java/awt/Rectangle contains (Ljava/awt/Point;)Z
 � � � � � javax/swing/JButton getPreferredSize ()Ljava/awt/Dimension;	 � � �  x	 � � �  width	 � � � java/awt/Dimension	 � � �  y	 � � �  height	 � �
 � �  � (IIII)V
 } � � 9 getID
 A � � � 
getTabData )()Lorg/netbeans/swing/tabcontrol/TabData;
 � � � , � *org/netbeans/swing/tabcontrol/TabDisplayer .()Lorg/netbeans/swing/tabcontrol/TabDataModel; � � � � � *org/netbeans/swing/tabcontrol/TabDataModel indexOf *(Lorg/netbeans/swing/tabcontrol/TabData;)I � 2org/netbeans/swing/tabcontrol/event/TabActionEvent � close
 � �  � ((Ljava/lang/Object;Ljava/lang/String;I)V
 � � � � postActionEvent 7(Lorg/netbeans/swing/tabcontrol/event/TabActionEvent;)V
  � � � repaint (Ljava/awt/Rectangle;)V
  � � � 
rowAtPoint (Ljava/awt/Point;)I
  � � � columnAtPoint
 4 � � L getDescription
 �  � "org/openide/awt/CloseButtonFactory � 5org/netbeans/swing/tabcontrol/DocumentSwitcherTable$1
 � �  � 8(Lorg/netbeans/swing/tabcontrol/DocumentSwitcherTable;)V
 � � � � setModel (Ljavax/swing/ButtonModel;)V � (nb.popupswitcher.closebutton.defaultIcon
 � � � � � javax/swing/UIManager getIcon &(Ljava/lang/Object;)Ljavax/swing/Icon;
 � � � � setIcon (Ljavax/swing/Icon;)V � )nb.popupswitcher.closebutton.rolloverIcon
 � � � � setRolloverIcon	  � �  SHOW_CLOSE_BUTTON
 � � � � getContainerWinsysInfo >()Lorg/netbeans/swing/tabcontrol/WinsysInfoForTabbedContainer;
 �  :org/netbeans/swing/tabcontrol/WinsysInfoForTabbedContainer isTopComponentClosingEnabled ()Z
	 %org/netbeans/swing/tabcontrol/TabData getComponent ()Ljava/awt/Component;  org/openide/windows/TopComponent
 � %(Lorg/openide/windows/TopComponent;)Z nb.tabs.suppressCloseButton
 T java/lang/Boolean 
getBoolean e(Lorg/netbeans/swing/tabcontrol/TabDisplayer;[Lorg/netbeans/swing/popupswitcher/SwitcherTableItem;I)V Code LineNumberTable LocalVariableTable this 5Lorg/netbeans/swing/tabcontrol/DocumentSwitcherTable; items 5[Lorg/netbeans/swing/popupswitcher/SwitcherTableItem; MethodParameters text Ljava/lang/String; res Ljavax/swing/JPanel; renderer %Ljavax/swing/table/TableCellRenderer; row column item 4Lorg/netbeans/swing/popupswitcher/SwitcherTableItem; selected renComponent Ljava/awt/Component; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; onMouseEvent (Ljava/awt/event/MouseEvent;)Z evt 4Lorg/netbeans/swing/tabcontrol/event/TabActionEvent; tab 'Lorg/netbeans/swing/tabcontrol/TabData; tabIndex size Ljava/awt/Dimension; btnRect Ljava/awt/Rectangle; inButton mustRepaint rect e Ljava/awt/event/MouseEvent; p Ljava/awt/Point; selRow selCol :Lorg/netbeans/swing/tabcontrol/DocumentSwitcherTable$Item;E java/awt/Point getToolTipText /(Ljava/awt/event/MouseEvent;)Ljava/lang/String; event col defaultIcon Ljavax/swing/Icon; rolloverIconN javax/swing/Icon tc 
winsysInfo <Lorg/netbeans/swing/tabcontrol/WinsysInfoForTabbedContainer; 
access$000 8(Lorg/netbeans/swing/tabcontrol/DocumentSwitcherTable;)Z x0 <clinit> ()V 
SourceFile DocumentSwitcherTable.java InnerClasses Item                   �                         �     **,� *� *� *� *+� **� � �  *� &�      "    ,  K  L  M  -  . " / ) 0   *    *     *      *    * �           �    ? @        �*� *� . � 4:*� 6� *� :� � � 6*+� =:� w*� A� C� k� G� 0� G� I:M� O� � Ud� X:� G� \� `Y� bY� d� g:j� l*� p� l� r� x��      B    4  6  7 , 9 5 : F ; N < X = b > q ? { B � C � D � E � F � H   \ 	 X #   � !!"    �     �#$    �%     �&    �'(  , �)   5 |*+ ,    � ) 4@� P s2   #  %  &  -    .    /0   �    <+� |M+� �� s,*� �M*� 6>*� :6� � �*� *� . � A:� �*� C� �*� �:,� �� �*� � �:� �� �`� �d6� �� �� �dl`6	� �Y	� �� �� �:

,� �6*� � � 6*� � E+� ��� ;� �:*� � �� � 6� � �Y*� �� �:*� � ��� *� � *� � 	*
� �*� *� �� *� �      � !   P  Q  R  S  T & U ( V 9 X H Y R Z [ [ d \ w ] � ^ � _ � ` � a � b � c � d � e � f � g � h i m n$ o* p/ q2 s5 t: v   �  � 12  � 134  � !5   d �67  w � �   � � �  	 � �89 
 � �:   � w;   R �<9   <    <=>  7?@  %A   B   9'C ,   J 	� &D� �   }D A � � �  @� N�    }D A     =   FG    �     2*+� |� �=*+� |� �>� � *� *� . � 4:� װ�          { 	 |  }  ~ *  0 �   4  * '(    2     2H>  	 )%     I  ,    � 0   H  -    .         �     2� �L+� �Y*� ߶ �� �M,� +,� �� �N-� +-� �+�      & 	   �  �  �  �  �   � & � + � 0 �   *    2    .!    JK  & LK ,    �   �M� M   E F    �     A� �� +� �*� � �M,� ),� �� �+� �N-�:�
� ,�
���      .    � 
 �  �  �  �   � " � ' � - � 5 � ? �   4  ' 34  - O+    A     A'C   -PQ ,    
�  �   '  RS    /     *� �          %       T   UV    5      �� � � ��          ),    @ W   XY     A Z  �      