����   4

      6org/openide/explorer/view/TreeTableView$ScrollListener revalidateScrollBar ()V	   	 
 this$0 )Lorg/openide/explorer/view/TreeTableView;
      java/awt/event/ComponentAdapter <init>	     movecorrection Z	      'org/openide/explorer/view/TreeTableView 	treeTable Ljavax/swing/JTable;  #org/openide/explorer/view/TreeTable
     getTreeColumnIndex ()I ! width
 # $ % & ' java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;
 ) * + , - java/lang/String equals (Ljava/lang/Object;)Z
 # / 0 1 	getSource ()Ljava/lang/Object;
 3 * 4 java/lang/Object
  6 7 8 
access$900 C(Lorg/openide/explorer/view/TreeTableView;)Ljavax/swing/JScrollBar;
 : ; < = > javax/swing/JScrollBar getPreferredSize ()Ljava/awt/Dimension;
 @ A B C D javax/swing/JTable getColumnModel &()Ljavax/swing/table/TableColumnModel; F G H I J "javax/swing/table/TableColumnModel 	getColumn "(I)Ljavax/swing/table/TableColumn;
 L M N O  javax/swing/table/TableColumn getWidth	 Q R S ! T java/awt/Dimension I
 : V W X setPreferredSize (Ljava/awt/Dimension;)V
 : Z [  
revalidate
 : ] ^  repaint ` 	positionX b treeColumnIndex
  d e f access$1000 c(Lorg/openide/explorer/view/TreeTableView;)Lorg/openide/explorer/view/TreeTableView$ScrollListener;
 L h i j addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V l column_moved
 # n o 1 getOldValue q java/lang/Integer
 p s t  intValue
 # v w 1 getNewValue F y z { 
moveColumn (II)V
 @ } ~  getTableHeader "()Ljavax/swing/table/JTableHeader;
 � A � javax/swing/table/JTableHeader
 L � � � setModelIndex (I)V
  � � � access$1100 U(Lorg/openide/explorer/view/TreeTableView;)Lorg/openide/explorer/view/NodeTableModel;
 � y � (org/openide/explorer/view/NodeTableModel
 : � � � getModel !()Ljavax/swing/BoundedRangeModel; � � � �  javax/swing/BoundedRangeModel getValue
  � � � setPositionX
  � � � isDisplayable ()Z F � �  getColumnCount	  � � � tree Ljavax/swing/JTree;
 � ; � javax/swing/JTree
  � � � access$1200 D(Lorg/openide/explorer/view/TreeTableView;)Ljavax/swing/JScrollPane;
 � � � � � javax/swing/JScrollPane getViewport ()Ljavax/swing/JViewport;
 � � � � > javax/swing/JViewport getSize	 Q � � T height
  � �  getPositionX
 � � � � � java/lang/Math min (II)I
 � � � � max
 : � � � 	isVisible
 � � � � getVerticalScrollBar ()Ljavax/swing/JScrollBar;
 : � �  	getHeight
 : M
 : � � � 	setValues (IIII)V
  � � � access$1300 ,(Lorg/openide/explorer/view/TreeTableView;)Z
 : � � � 
setVisible (Z)V � !java/beans/PropertyChangeListener �  javax/swing/event/ChangeListener ,(Lorg/openide/explorer/view/TreeTableView;)V Code LineNumberTable LocalVariableTable this 8Lorg/openide/explorer/view/TreeTableView$ScrollListener; MethodParameters propertyChange #(Ljava/beans/PropertyChangeEvent;)V dim Ljava/awt/Dimension; from to evt  Ljava/beans/PropertyChangeEvent; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; componentResized "(Ljava/awt/event/ComponentEvent;)V e Ljava/awt/event/ComponentEvent; stateChanged "(Ljavax/swing/event/ChangeEvent;)V Ljavax/swing/event/ChangeEvent; value extentWidth maxWidth extentHeight 	maxHeight 
hsbvisible 
vsbvisible 	hsbheight vsbwidth 
access$400 ;(Lorg/openide/explorer/view/TreeTableView$ScrollListener;)V x0 
SourceFile TreeTableView.java InnerClasses ScrollListener 0    � �        	 
       �  �   A     *+� *� *� �    �      ~ 	|  �        � �   �    	  � �  �  6    Z*� � � � � � +� "� (� h*� � +� .� 2� P*� � 5� 9M,*� � � ?*� � � � � E � K� P*� � 5,� U*� � 5� Y*� � 5� \*� � �_+� "� (� 
*� � �a+� "� (� ,*� � � ?*� � � � � E *� � c� g� �k+� "� (� �+� m� p� r=+� u� p� r>� � )*� � *� � *� *� � � ?� x �*� � � |� �� E � �*� � � |� �� E � �*� � �dd� ��    �   v   � � � � /� :� W� ]� h� r� |� �� �� �� �� �� �� �� �� �� �� ���	���2�I�Y� �   4  : B � �  � w � T  � l � T   Z � �    Z � �  �    
� i4� ) � = �    �   �     �    � �  �   =     *� �    �   
   � � �        � �      � �  �    �   �     �    � �  �   e     *� � 5� �� � =*� � � � ��    �      � � � �         � �      � �    � T  �    �   �     �       �  4    %*� � �� �*� � � ?� � �
*� � � � � �*� � � ?*� � � � � E � K<*� � �� �� P=*� � �� �� �� �>*� � �� �� �6*� � � � �6d� �� �6*� � 5� �6*� � �� ɶ �6� *� � 5� ͧ 6	*� � �� ɶ �6
*� � 5� �*� � ՚ � � "	`� 
`� *� � 5� ٧ *� � 5� ٱ    �   Z   � 
� � � '� -� I� M� [� l� {� �� �� �� �� �� �� �� ����$� �   p  M � � T  [ � � T  l � � T  { � � T  � � ` T  � � � T  � � �   � q    � \ T 	 � M T 
  % � �   �   ' � � 	   @� D� 
      �   /     *� �    �      { �        �         
   	 