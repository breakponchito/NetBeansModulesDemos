����   4 �
      'org/openide/explorer/view/NodeListModel clearChildrenCount ()V	   	 
 selectedObject Ljava/lang/Object;
     listener 4()Lorg/openide/explorer/view/NodeListModel$Listener;	     
showParent Z	     parent *Lorg/openide/explorer/view/VisualizerNode;
      javax/swing/AbstractListModel <init>	     depth I	 ! " # $  (org/openide/explorer/view/VisualizerNode EMPTY
  
  ' ( ) setNode (Lorg/openide/nodes/Node;)V
  + ( , (Lorg/openide/nodes/Node;Z)V	 . / 0 1 2 org/openide/util/Mutex EVENT Lorg/openide/util/Mutex; 4 )org/openide/explorer/view/NodeListModel$1
 3 6  7 E(Lorg/openide/explorer/view/NodeListModel;Lorg/openide/nodes/Node;Z)V
 . 9 : ; 
readAccess (Ljava/lang/Runnable;)V = )org/openide/explorer/view/NodeListModel$2
 < ?  @ ,(Lorg/openide/explorer/view/NodeListModel;)V	  B  C 2Lorg/openide/explorer/view/NodeListModel$Listener; E 0org/openide/explorer/view/NodeListModel$Listener
 D ?
  H I J findSize 0(Lorg/openide/explorer/view/VisualizerNode;ZII)I
  L M N findElementAt Z(Lorg/openide/explorer/view/VisualizerNode;ZIII)Lorg/openide/explorer/view/VisualizerNode;
  P Q R getSize ()I	  T U V childrenCount Ljava/util/Map; X Y Z [ \ java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; ^ ,org/openide/explorer/view/NodeListModel$Info	 ] ` a  index
  c d e fireContentsChanged (Ljava/lang/Object;II)V g java/util/HashMap
 f i  j (I)V	 ] l U 
 ] 	 ] 
 ! p q r children ()Ljava/util/Enumeration; t u v w x java/util/Enumeration hasMoreElements ()Z t z { | nextElement ()Ljava/lang/Object; X ~  � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 ! � � � 
getChildAt (I)Ljavax/swing/tree/TreeNode;	  � �  size
  � � e fireIntervalAdded
  � � e fireIntervalRemoved
 � � � � � /org/openide/explorer/view/VisualizerEvent$Added getVisualizer ,()Lorg/openide/explorer/view/VisualizerNode;
 � � � � getArray ()[I
  � � � cachedDepth -(Lorg/openide/explorer/view/VisualizerNode;)I
  � � � getIndex (Ljava/lang/Object;)I
 � � � 1org/openide/explorer/view/VisualizerEvent$Removed
 � � � javax/swing/ComboBoxModel serialVersionUID J ConstantValue�B*`���l 	Signature iLjava/util/Map<Lorg/openide/explorer/view/VisualizerNode;Lorg/openide/explorer/view/NodeListModel$Info;>; Code LineNumberTable LocalVariableTable this )Lorg/openide/explorer/view/NodeListModel; root Lorg/openide/nodes/Node; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value "OverridableMethodCallInConstructor showRoot setDepth StackMapTable getDepth s Ljava/lang/Override; getElementAt (I)Ljava/lang/Object; i o .Lorg/openide/explorer/view/NodeListModel$Info; setSelectedItem (Ljava/lang/Object;)V anObject getSelectedItem v it Ljava/util/Enumeration; vis includeOwnself info tmp 	countSelf indx realIndx findVisualizerDepth D(Ljavax/swing/ListModel;Lorg/openide/explorer/view/VisualizerNode;)I n m Ljavax/swing/ListModel; addAll 	removeAll 	changeAll added 4(Lorg/openide/explorer/view/VisualizerEvent$Added;)V ev 1Lorg/openide/explorer/view/VisualizerEvent$Added; indices [I seg � removed 6(Lorg/openide/explorer/view/VisualizerEvent$Removed;)V 3Lorg/openide/explorer/view/VisualizerEvent$Removed; update -(Lorg/openide/explorer/view/VisualizerNode;)V 
access$000 U(Lorg/openide/explorer/view/NodeListModel;)Lorg/openide/explorer/view/VisualizerNode; x0 
access$100 ,(Lorg/openide/explorer/view/NodeListModel;)Z 
access$200 ](Lorg/openide/explorer/view/NodeListModel;)Lorg/openide/explorer/view/NodeListModel$Listener; 
access$102 -(Lorg/openide/explorer/view/NodeListModel;Z)Z x1 
access$002 (Lorg/openide/explorer/view/NodeListModel;Lorg/openide/explorer/view/VisualizerNode;)Lorg/openide/explorer/view/VisualizerNode; 
access$302 O(Lorg/openide/explorer/view/NodeListModel;Ljava/lang/Object;)Ljava/lang/Object; 
access$400 
SourceFile NodeListModel.java InnerClasses Listener Info � )org/openide/explorer/view/VisualizerEvent Added Removed !    �   � �  �    � �  C   �     �     � 	 
   � �          U V  �    �      �   Z     *� *� *�  � *�  � *� �    �       B  9 	 C  D  E  F �        � �     )  �   F     
*� %*+� &�    �       M  N 	 O �       
 � �     
 � �  �    �   �     �  �[ s �  ( )  �   ?     *+� *�    �   
    U  V �        � �      � �  �    �    ( ,  �   S     � -� 3Y*+� 5� 8�    �   
    Y  s �         � �      � �     �   �   	 �  �   � j  �   m      *� � *� *� � -� <Y*� >� 8�    �       y  z  {  }  � �         � �          �     �        � R  �   /     *� �    �       � �        � �       �   S     *� A� *� DY*� F� A*� A�    �       �  �  � �        � �   �      Q R  �   L     **� *� *� � G<�    �   
    �  � �        � �     �   �     �    � �  �   G     **� *� *� � K�    �       � �        � �      �   �    �   �     �    � �  �   v      *� OW*� S+� W � ]M,� � ,� _�    �       �  �  � �          � �       � 
    � �  �   
 �  ]C �    �    � �  �   ^     *� +� *+� **� b�    �       �  �  �  � �        � �      � 
  �     �    �   �     �    � |  �   /     *� �    �       � �        � �   �     �       �   <     *� fY� h� S�    �   
    �  � �        � �    I J  �  �  	   �*� S+� W � ]:� 	� k�� �6� ]Y� m:� n� _��� 7+� o:� s � '� y � !:�*`� G`6���� 
`� � k*� S+� } W�    �   N    �  �  �  �  � ! � $ � - � 4 � : � B � H � R � ^ � a � s � v � � � � � �   \ 	 ^  �   H . � �    � � �     � �     � �     � a     �     � � �  $ t �   �   / �  ]� & t� -L ]�    ! ]  ] �    �   �   a       M N  �  T  	   x� � +������ +� �� !�+� o:� s � K� y � !:��� �*�� G6� *� K�d>`6���+�    �   J      
 	   $ . : A D T Z g l s  v" �   \ 	 : 9 �   T  �     x � �     x �     x �     x �     x �     x    $ T � �  �    
�  t�  !� "�  �    �   �   �   �       � �  �   �     ,*� � &*� M,� S+� W � ]N-� ,� -� ndd��    �      + , - / 0 *4 �   *    � �    � �    , � �     , �   �    * �   	 �   �    �   �   [     **� O� �*� �� ***� �d� ��    �      ; = > @ �        � �   �      �   �   O     *� �� ***� �d� ��    �      C D F �        � �   �      �   �   a     **� O� �*� *� �� ***� �� b�    �      I J K L N �        � �   �      � �  �   �     L+� �M+� �N*,� �� -�� �*� **� O� �*� ,� � *,� �6**-.`--�d.`� ��    �   & 	  Q R 
V W Z [ $] 7^ K_ �   4    L � �     L � �   G �   
 B � �  7  �   �    �  ! � D �    �    � �  �   �     D+� �M+� �N*,� �� -�� �*� *� ,� � *,� �6**-.`--�d.`� ��    �   "   b c 
g h k m /n Co �   4    D � �     D � �   ? �   
 : � �  /  �   �    �  ! � D �    �    � �  �   �     %*� OW*� S+� W � ]M,� **,� _,� _� b�    �      s u w x $z �        % � �     % �     � �  �    � $ ] �    �    � �  �   z     *� OW*� S+� W � ]M,� ,� n��    �      }  � � � �         � �      �     � �  �    �  ] �    �   � �  �   /     *� �    �       & �        � �   � �  �   /     *� �    �       & �        � �   � �  �   /     *� �    �       & �        � �   � �  �   ;     *Z� �    �       & �        � �      �   � �  �   ;     *+Z� �    �       & �        � �      �   � �  �   ;     *+Z� �    �       & �        � �      � 
  � @  �   /     *� �    �       & �        � �    �    � �   2  D  �  3       <       ]  �  � � �  � � � 