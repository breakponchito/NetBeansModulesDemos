����   4 
      java/lang/Object <init> ()V	  	 
   2org/openide/explorer/propertysheet/SheetTableModel model 5Lorg/openide/explorer/propertysheet/PropertySetModel;
     setPropertySetModel 8(Lorg/openide/explorer/propertysheet/PropertySetModel;)V      3org/openide/explorer/propertysheet/PropertySetModel removePropertySetModelListener @(Lorg/openide/explorer/propertysheet/PropertySetModelListener;)V  "java/lang/IllegalArgumentException  Model cannot be null
     (Ljava/lang/String;)V      addPropertySetModelListener " !javax/swing/event/TableModelEvent
 ! $  % !(Ljavax/swing/table/TableModel;)V
  ' ( ) fireTableChanged &(Ljavax/swing/event/TableModelEvent;)V + java/lang/String - java/lang/StringBuilder
 ,  0 Column 
 , 2 3 4 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 , 6 3 7 (I)Ljava/lang/StringBuilder; 9  does not exist.
 , ; < = toString ()Ljava/lang/String; ? COLUMN_NAMES
 A B C D E org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String; G COLUMN_VALUES  I J K getCount ()I  M N O getFeatureDescriptor !(I)Ljava/beans/FeatureDescriptor; Q "org/openide/nodes/Node$PropertySet S org/openide/nodes/Node$Property
 R U V W canWrite ()Z Y Illegal row/column: 
 [ \ ] < ^ java/lang/Integer (I)Ljava/lang/String; ` Cannot set property names.
 R b c d setValue (Ljava/lang/Object;)V f Index  h   does not represent a property.  j  java/lang/IllegalAccessException
 l m n o = java/lang/Class getName
 q r s t u java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 w x y z { java/util/logging/Level WARNING Ljava/util/logging/Level;
 q } ~  log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � +java/lang/reflect/InvocationTargetException �  
 R � � = getShortDescription
 � � � � � ,org/openide/explorer/propertysheet/PropUtils getPropertyEditor >(Lorg/openide/nodes/Node$Property;)Ljava/beans/PropertyEditor; � � � � = java/beans/PropertyEditor 	getAsText
 R � � � getValueType ()Ljava/lang/Class;
 R � � � getValue ()Ljava/lang/Object;
 * � � K length � java/lang/Exception
 � ;
 P �	  � � � tableModelListenerList Ljava/util/List; � java/util/ArrayList
 �  � � � � � java/util/List add (Ljava/lang/Object;)Z � � � � remove
 � � � � clone � � � K size � � � � get (I)Ljava/lang/Object; � $javax/swing/event/TableModelListener � � � ) tableChanged	 � � � � � 8org/openide/explorer/propertysheet/PropertySetModelEvent start I	 � � � � end	 � � � � type
 ! �  � %(Ljavax/swing/table/TableModel;IIII)V � javax/swing/table/TableModel � ;org/openide/explorer/propertysheet/PropertySetModelListener 	Signature 8Ljava/util/List<Ljavax/swing/event/TableModelListener;>; Code LineNumberTable LocalVariableTable this 4Lorg/openide/explorer/propertysheet/SheetTableModel; psm MethodParameters mod StackMapTable getPropertySetModel 7()Lorg/openide/explorer/propertysheet/PropertySetModel; getColumnClass (I)Ljava/lang/Class; columnIndex #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getColumnCount getColumnName getRowCount 
getValueAt (II)Ljava/lang/Object; result Ljava/lang/Object; rowIndex isCellEditable (II)Z fd Ljava/beans/FeatureDescriptor; � java/beans/FeatureDescriptor 
setValueAt (Ljava/lang/Object;II)V p !Lorg/openide/nodes/Node$Property; iae "Ljava/lang/IllegalAccessException; ite -Ljava/lang/reflect/InvocationTargetException; aValue getDescriptionFor (II)Ljava/lang/String; s Ljava/lang/String; ped Ljava/beans/PropertyEditor; e Ljava/lang/Exception; ps $Lorg/openide/nodes/Node$PropertySet; row column addTableModelListener )(Ljavax/swing/event/TableModelListener;)V listener &Ljavax/swing/event/TableModelListener; removeTableModelListener list i event #Ljavax/swing/event/TableModelEvent; java/lang/Throwable boundedChange =(Lorg/openide/explorer/propertysheet/PropertySetModelEvent;)V :Lorg/openide/explorer/propertysheet/PropertySetModelEvent; tme wholesaleChange pendingChange 
SourceFile SheetTableModel.java InnerClasses org/openide/nodes/Node PropertySet Property 0    � �  � � �  �    �            �   <     
*� *� �    �       5  2 	 6 �       
 � �       �   O     *� *� *+� �    �       8  2 	 9  : �        � �      �   �    �       �   �     I*� +� �*� � *� *�  *+� *� � � Y� �+*�  *+� *� !Y*� #� &�    �   .    A  B 	 E  F  I  K & L 0 Q 7 S < U H V �       I � �     I �   �    	 �    �    � �  �   /     *� �    �       Z �        � �    � �  �   �     B�     !                *��� Y� ,Y� ./� 1� 58� 1� :� �    �       a  c  f " i �       B � �     B � �  �     �    �   �     �    � K  �   ,     �    �       o �        � �   �     �    � ^  �   Y     � >� @�F� @�    �       w  x  { �        � �      � �  �     �    �   �     �    � K  �   N     *� � �*� � H �    �       �  � 	 � �        � �   �    	 �     �    � �  �   �     � N� *� � L N-�    �       �  � 
 �  � �   4    � �     � �      � �     � �    � �  �   	 
� 
  �   	 �   �   �     �    � �  �   �     L� �� *� � L N-� P� �-� R� T�� Y� ,Y� .X� 1� Z� 1� Z� 1� :� �    �   & 	   �  �  �  �  �  �  � ' � 8 � �   *    � �    L � �     L � �    L � �  �    �  ��  �   	 �   �   �     �    � �  �  `     �� � Y_� �*� � L :� R� � R:+� a� -� Y� ,Y� .e� 1� Z� 1� Z� 1g� 1� :� �� ,:� k� p� v� |� :� k� p� v� |�   \ _ i  \ u �  �   B    �  �  �  � " � ) � / � 2 � C � \ � _ � a � r � u � w � � � �   R  )  � �   B � �  a  � �  w  � �    � � �     � � �    � � �    � � �  �    � # �� )B iU � �    �   �   �   �     �    � �  �  �     �� � ��*� � L N-� R� 
-� R� ::� n� � �:� E� �:� � � :� -� �*� #� �� *:� � � � ���� (:� � �� � �:� -� P:� �:� �:�  1 } � � ~ � � �  �   f    � 
 �  �  � ) � , � 1 � 5 � ? � F � K � W � a � k � { � ~ � � � � � � � � � � � � � � � � � � � �   f 
 k  � �  F ;   �   �     � � �     � �    � �   � � �  ) � � �  , � � �  �   9 
�  �@ R�  R *�  �� & *� B ��  �D *�  �   	     !	  �   g     *� �� *� �Y� �� �*� �+� � W�    �       �  �   �        � �     
  �     �   
   �     �   !	  �   X     *� �� *� �+� � W�    �        	 �        � �     
  �     �   
   �     �     ( )  �   �     K*YN�*� �� -ñ*� �� �� �� �M-ç 
:-��>,� � � ,� � � �+� � ����    !     !   ! % !    �   & 	       ( 4 D J �   4    �  *   �    K � �     K  ( # �  �   $ �   R�    ! �  � �  �        �   �     '� !Y*+� �+� �+� �+W� � � �M*,� &�    �      " $ !& &' �        ' � �     '  !   �   5 �    �      �     �       �      �     �     �   E     *� !Y*� #� &�    �   
   , . �        � �       �      �     �     �   5      �    �      4 �        � �       �      �     �           P	 R	