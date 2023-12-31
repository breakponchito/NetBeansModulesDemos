����   4 �
      'org/openide/explorer/view/NodeTreeModel <init> ()V
   	 
 getChildCount (Ljava/lang/Object;)I
     getChild '(Ljava/lang/Object;I)Ljava/lang/Object;
      $org/openide/explorer/view/Visualizer findNode ,(Ljava/lang/Object;)Lorg/openide/nodes/Node;
      org/openide/nodes/Node isLeaf ()Z
       java/lang/Object equals (Ljava/lang/Object;)Z	 " # $ % & :org/openide/explorer/view/ContextTreeView$NodeContextModel root Ljavax/swing/tree/TreeNode;	 " ( ) * $assertionsDisabled Z , java/lang/AssertionError . java/lang/StringBuilder
 -  1  ch: 
 - 3 4 5 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 - 7 4 8 -(Ljava/lang/Object;)Ljava/lang/StringBuilder; : 
 indices: 
 - < = > toString ()Ljava/lang/String;
 + @  A (Ljava/lang/Object;)V C They should be the same: 
 - E 4 F (I)Ljava/lang/StringBuilder; H  == 	 " J K L newChildren [Ljava/lang/Object; N Children should be cleared: 	 " P Q R 
newIndices [I T indices should be cleared:  V !Path has to be greater than zero  X (org/openide/explorer/view/VisualizerNode
 W 
 " [ \ ] getIndexOfChild '(Ljava/lang/Object;Ljava/lang/Object;)I
 " 
 " 	 a b c d e )org/openide/explorer/view/ContextTreeView LOG Ljava/util/logging/Logger; g fireTreeNodesRemoved
 i j k l m java/util/logging/Logger fine (Ljava/lang/String;)V
 " o p q removalEvent +([Ljava/lang/Object;[I[Ljava/lang/Object;)Z s fireTreeNodesRemoved - exit
  u g v =(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V x fireTreeNodesRemoved - end
 z { | } ~ )org/openide/explorer/view/VisualizerEvent getVisualizer ,()Lorg/openide/explorer/view/VisualizerNode;
 z � � � getArray ()[I
 " � � � getPathToRoot 9(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;
  � � � computeChildren @(Lorg/openide/explorer/view/VisualizerEvent;)[Ljava/lang/Object;
 " � � v fireTreeNodesInserted �
 " � � q filterEvent � fireTreeNodesInserted - exit
  � � fireTreeNodesInserted - end � fireTreeNodesChanged � fireTreeNodesChanged - exit
  � � v � fireTreeNodesChanged - end
 � � � �  java/lang/Class desiredAssertionStatus Code LineNumberTable LocalVariableTable this <Lorg/openide/explorer/view/ContextTreeView$NodeContextModel; 	origChild Ljava/lang/Object; n Lorg/openide/nodes/Node; i I parent index superCnt myCnt StackMapTable MethodParameters child node *Lorg/openide/explorer/view/VisualizerNode; path childIndices children filter accepted L R pos size myPos actualI source #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; nodesWereInsertedInternal .(Lorg/openide/explorer/view/VisualizerEvent;)V ev +Lorg/openide/explorer/view/VisualizerEvent; <clinit> 
SourceFile ContextTreeView.java InnerClasses NodeContextModel 0 "      Q R    K L   ) *         �   /     *� �    �       � �        � �       �   �     >*+� >66� -*+� :� :� � �� ������    �   * 
   �  � 	 �  �  � " � * � 3 � 6 � < � �   R    � �  "  � �   0 � �    > � �     > � �    > � �   8 � �  	 5 � �  �    � )�  �   	 �   �    	 
  �   �     0*+� =>6�  *+� � :� � ������    �   "    �  �  �  �  � % � ( � . � �   >    � �   # � �    0 � �     0 � �   * � �   ( � �  �    � �  �    �    \ ]  �   �     A*+� >66� 0*+� :,� � �� :� � ������    �   .    �  � 	 �  �  � $ � ' � . � 6 � 9 � ? � �   R    � �  .  � �   3 � �    A � �     A � �    A � �   ; � �  	 8 � �  �    � �  � �  �   	 �   �        �   6     �    �       � �        � �      � �  �    �    � q  �  �  	  �+�� +2*� !� 	,� �� '� /,� -� '� +Y� -Y� /0� 2-� 69� 2,� 6� ;� ?�� '� 0-�,�� )� +Y� -Y� /B� 2-�� DG� 2,�� D� ;� ?�� '� (*� I� !� +Y� -Y� /M� 2*� I� 6� ;� ?�� '� (*� O� !� +Y� -Y� /S� 2*� O� 6� ;� ?�� '� $+�� � +Y� -Y� /U� 2+�� D� ;� ?�++�d2� W:,��
:66,�� $-2� W:� Y� �O����� �*�
� O*� � I6� +*� I-.2S*� O**� I2� ZO�����    �   b    �  �  � H � { � � � � � � � �	 � � � �' �1 �7 �< �> �F �OYg{� �   f 
  � �  ( � � R / � �   � � �    � � L   � � R   � � L  � � � 	 z � R  w � �  �   0 #2**&�   " � � � W �  !� � � . �    �   �   �    p q  �  h    �� '� /,� -� '� +Y� -Y� /0� 2-� 69� 2,� 6� ;� ?�� '� 0-�,�� )� +Y� -Y� /B� 2-�� DG� 2,�� D� ;� ?�� '� (*� I� !� +Y� -Y� /M� 2*� I� 6� ;� ?�� '� (*� O� !� +Y� -Y� /S� 2*� O� 6� ;� ?�� '� $+�� � +Y� -Y� /U� 2+�� D� ;� ?�++�d2� W:,��
:66,�� $-2� W:� Y� �O����� �*�
� O*� � I*� ^666	6
66� a,.� 2-2� W:� Y� *� O	�	O*� IS��� #*
�
� _� W:� � Y� �	�����    �   � $   2 e � � � � � � 	!!&"(%0&9(A)D*G+J,M.W/`0i2q3}4�5�8�9�:�<�=�A�D �   � 	  � �  � ( � � i # � � �  � � P e � �   � � �    � � L   � � R   � � L  � � � �  � � � R  � � � � A v � � D s � � G p � � 	J m � � 
M j � �  �   U #2**&�   " � � � W �  !� � '  " � � � W �  � 8 W� �  �    �   �   �    g v  �   �     =� `f� h*,-� n� � `r� h�*+,*� O*� I� t*� O*� I� `w� h�    �   & 	  Q R S T W *X /Y 4Z <[ �   4    = � �     = � �    = � L    = � R    = � L  �     �    �   �   �   �   �     �     � �  �   �     +� yM+� N*,� �:**-+� �� ��    �      _ ` 
a b c �   4     � �      � �    � &  
  � R    � L  �    �  �     �    � v  �   �     =� `�� h*,-� �� � `�� h�*+,*� O*� I� �*� O*� I� `�� h�    �   & 	  g h i j m *n /o 4p <q �   4    = � �     = � �    = � L    = � R    = � L  �     �    �   �   �   �   �     �    � v  �   �     =� `�� h*,-� �� � `�� h�*+,*� O*� I� �*� O*� I� `�� h�    �   & 	  u v w x { *| /} 4~ < �   4    = � �     = � �    = � L    = � R    = � L  �     �    �   �   �   �   �     �    �   �   4      a� �� � � '�    �       � �    @  �    � �   
  " a � 