����   4�	      (org/openide/explorer/view/VisualizerNode NO_REF Ljava/lang/ref/Reference;	   	  children
      #javax/swing/event/EventListenerList <init> ()V	     icon Ljavax/swing/Icon;	     indexOf I	     htmlDisplayName Ljava/lang/String;	     cachedIconType	    !  hashCode	  # $ % node Lorg/openide/nodes/Node;
 ' ( ) * + java/lang/System identityHashCode (Ljava/lang/Object;)I
 - . / 0 1 org/openide/nodes/NodeOp weakNodeListener T(Lorg/openide/nodes/NodeListener;Ljava/lang/Object;)Lorg/openide/nodes/NodeListener;
 3 4 5 6 7 org/openide/nodes/Node addNodeListener #(Lorg/openide/nodes/NodeListener;)V	  9 :  UNKNOWN	  < =  name	  ? @  displayName	  B C  shortDescription
  E F G getVisualizer s(Lorg/openide/explorer/view/VisualizerChildren;Lorg/openide/nodes/Node;Z)Lorg/openide/explorer/view/VisualizerNode;	  I J K TEMPLATE *Lorg/openide/explorer/view/VisualizerNode;	  M N O cache Ljava/util/WeakHashMap;
 Q R S T U java/util/WeakHashMap get &(Ljava/lang/Object;)Ljava/lang/Object; W java/lang/ref/Reference
 V Y T Z ()Ljava/lang/Object;
  \  ] (Lorg/openide/nodes/Node;)V _ java/lang/ref/WeakReference
 ^ a  b (Ljava/lang/Object;)V
 Q d e f put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	  h i j parent .Lorg/openide/explorer/view/VisualizerChildren;
 3 l m n getShortDescription ()Ljava/lang/String;
  p q r getIcon (ZZ)Ljavax/swing/Icon;
 t u v w x org/openide/util/ImageUtilities 
icon2Image $(Ljavax/swing/Icon;)Ljava/awt/Image;
 t z { | getImageToolTip $(Ljava/awt/Image;)Ljava/lang/String;
 ~  � � � java/lang/String length ()I � java/lang/StringBuilder
 � �  � (I)V � </?html> �  
 ~ � � � 
replaceAll 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � <html>
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; � <br> � </html>
 � � � n toString
 3 � � n getDisplayName
 3 � � n getName
  � � � getChildren 1(Z)Lorg/openide/explorer/view/VisualizerChildren; � ,org/openide/explorer/view/VisualizerChildren
 3 � � � isLeaf ()Z
 3 � � � ()Lorg/openide/nodes/Children;
 � � � � � org/openide/nodes/Children getNodesCount	  � �  prefetchCount
 � � � � getNodes ()[Lorg/openide/nodes/Node;
 � � � � � java/lang/Math min (II)I
 � � � � 	getNodeAt (I)Lorg/openide/nodes/Node;	 � � � � MUTEX Lorg/openide/util/Mutex; � *org/openide/explorer/view/VisualizerNode$1
 � �  � -(Lorg/openide/explorer/view/VisualizerNode;)V
 � � � � � org/openide/util/Mutex 
readAccess 3(Lorg/openide/util/Mutex$Action;)Ljava/lang/Object;	 � � � j EMPTY
  � � � 0()Lorg/openide/explorer/view/VisualizerChildren;
 � � � � getIndex (Ljavax/swing/tree/TreeNode;)I
  �
 � � � � isReadAccess
 � � � � isWriteAccess	  � � � LOG Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level;
 � � � � � java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z	 � � � � FINEST � java/util/logging/LogRecord � LOG_NO_READ_ACCESS
 � �  � .(Ljava/util/logging/Level;Ljava/lang/String;)V
 org/openide/util/NbBundle 	getBundle -(Ljava/lang/Class;)Ljava/util/ResourceBundle;
 �	 setResourceBundle (Ljava/util/ResourceBundle;)V java/lang/Object
 java/lang/Integer valueOf (I)Ljava/lang/Integer;
 � setParameters ([Ljava/lang/Object;)V
 � �
 � setLoggerName (Ljava/lang/String;)V java/lang/AssertionError
 � n 
getMessage
 a
 �"#$ 	setThrown (Ljava/lang/Throwable;)V
 �&'( 
getChildAt (I)Ljavax/swing/tree/TreeNode;
 �*+ � getChildCount
 �- 	. (Z)Ljava/util/Enumeration;
 3012 getParentNode ()Lorg/openide/nodes/Node;
 4 F5 r(Lorg/openide/explorer/view/VisualizerChildren;Lorg/openide/nodes/Node;)Lorg/openide/explorer/view/VisualizerNode;	 �78 � FINER: "childrenAdded event: {0}
  ch: {1}
 �<=> log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V@ childrenAdded - exit
 �B= �	 DEF QUEUE -Lorg/openide/explorer/view/VisualizerNode$QP;H /org/openide/explorer/view/VisualizerEvent$Added
JKLMN !org/openide/nodes/NodeMemberEvent getDeltaIndices ()[I
GP Q V(Lorg/openide/explorer/view/VisualizerChildren;[ILorg/openide/nodes/NodeMemberEvent;)V
STUVW +org/openide/explorer/view/VisualizerNode$QP runSafe (Ljava/lang/Runnable;)VY childrenAdded - end[ $childrenRemoved event: {0}
  ch: {1}] childrenRemoved - exit_ 1org/openide/explorer/view/VisualizerEvent$Removed
^Pb childrenRemoved - end
defgN "org/openide/nodes/NodeReorderEvent getPermutationi childrenReordered {0}
  ch: {1}k childrenReordered - exitm 3org/openide/explorer/view/VisualizerEvent$Reordered
lo p W(Lorg/openide/explorer/view/VisualizerChildren;[ILorg/openide/nodes/NodeReorderEvent;)Vr childrenReordered - endt 3org/openide/explorer/view/VisualizerEvent$Destroyed
sv w x(Lorg/openide/explorer/view/VisualizerChildren;Lorg/openide/nodes/NodeEvent;Lorg/openide/explorer/view/VisualizerNode;)V
yz{| n java/beans/PropertyChangeEvent getPropertyName 
 ~�� equals (Ljava/lang/Object;)Z� 
openedIcon = @ C� leaf� 7org/openide/explorer/view/VisualizerNode$PropLeafChange
� �
 �� �W
 ��� getListenerList ()[Ljava/lang/Object;� #org/openide/explorer/view/NodeModel��� � update
 ��� 	getParent ()Ljavax/swing/tree/TreeNode;

��� getClass ()Ljava/lang/Class;� 8org/openide/explorer/view/VisualizerNode$StrongReference
� a
 ��� add -(Ljava/lang/Class;Ljava/util/EventListener;)V
 ��� remove
  �
 � � '� '@
��� toHexString (I)Ljava/lang/String;� 	 parent: 
 �� �� -(Ljava/lang/Object;)Ljava/lang/StringBuilder;� 
 indexOf: 
 �� �� (I)Ljava/lang/StringBuilder;
 3�� n getHtmlDisplayName� noHtmlDisplayName
 ��� getCacheType (ZZ)I� java/beans/BeanInfo
 3��� getOpenedIcon (I)Ljava/awt/Image;
 3� q�� q� Node "� " [
� �� java/lang/Class� ] cannot return null from � (). See Node.� 
 contract.
 ��� warning� java/lang/RuntimeException	 ��� � INFO
 ��=� C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 ��� getDefaultIcon ()Ljavax/swing/Icon;
 t��� 
image2Icon $(Ljava/awt/Image;)Ljavax/swing/Icon;	 ��  defaultIcon� !org/openide/nodes/defaultNode.png
 t��� loadImageIcon ,(Ljava/lang/String;Z)Ljavax/swing/ImageIcon;
 ��� getPathToRoot .(I)[Lorg/openide/explorer/view/VisualizerNode;	 �� i K
  �
 � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
 Q 	 3 � %	  � K
S 
 ~  1org.openide.explorer.VisualizerNode.prefetchCount
 
getInteger ((Ljava/lang/String;I)Ljava/lang/Integer;
 � intValue
 � � max org/openide/nodes/NodeListener javax/swing/tree/TreeNode java/lang/Runnable 	Signature ILjava/lang/ref/Reference<Lorg/openide/explorer/view/VisualizerChildren;>; �Ljava/util/WeakHashMap<Lorg/openide/explorer/view/VisualizerNode;Ljava/lang/ref/Reference<Lorg/openide/explorer/view/VisualizerNode;>;>; serialVersionUID J ConstantValue3���切H NO_HTML_DISPLAYNAME DEFAULT_ICON Code LineNumberTable LocalVariableTable this MethodParameters n ch create Z r v LocalVariableTypeTable ELjava/lang/ref/Reference<Lorg/openide/explorer/view/VisualizerNode;>; StackMapTable str Ljava/lang/StringBuilder; desc toolTip: javax/swing/Icon i nch Lorg/openide/nodes/Children; count nodes [Lorg/openide/nodes/Node;@ p1 Ljavax/swing/tree/TreeNode; getAllowsChildren assertAccess  (I)Ljava/util/logging/LogRecord; index level rec Ljava/util/logging/LogRecord; ()Ljava/util/Enumeration; E()Ljava/util/Enumeration<Lorg/openide/explorer/view/VisualizerNode;>; childrenAdded &(Lorg/openide/nodes/NodeMemberEvent;)V ev #Lorg/openide/nodes/NodeMemberEvent; childrenRemoved childrenReordered '(Lorg/openide/nodes/NodeReorderEvent;)V $Lorg/openide/nodes/NodeReorderEvent; perm [IV nodeDestroyed  (Lorg/openide/nodes/NodeEvent;)V Lorg/openide/nodes/NodeEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; propertyChange #(Ljava/beans/PropertyChangeEvent;)V evt  Ljava/beans/PropertyChangeEvent; isIconChange run 	listeners [Ljava/lang/Object;d notifyVisualizerChildrenChange 2(ZLorg/openide/explorer/view/VisualizerChildren;)V strongly addNodeModel ((Lorg/openide/explorer/view/NodeModel;)V l %Lorg/openide/explorer/view/NodeModel; removeNodeModel o Ljava/lang/Object; toId method image Ljava/awt/Image; x Ljava/lang/RuntimeException; iconType opened large newCacheType{ java/awt/Image Ljava/lang/Runnable; -()[Lorg/openide/explorer/view/VisualizerNode; retNodes +[Lorg/openide/explorer/view/VisualizerNode; depth 
access$102 ^(Lorg/openide/explorer/view/VisualizerNode;Ljava/lang/ref/Reference;)Ljava/lang/ref/Reference; x0 x1 
access$200 ()Ljava/lang/ref/Reference; <clinit> 
SourceFile VisualizerNode.java InnerClasses� org/openide/util/Mutex$Action Action QP� )org/openide/explorer/view/VisualizerEvent Added Removed 	Reordered 	Destroyed PropLeafChange StrongReference 0      J K    � �          
 N O      � K   EF    :     ! "   # %  "   � 
�    &  "   �  �           $ %    !     	        i j          =     @     C              (   � '   ~     **� 
*� *� � *� *� *� *� *� "�   (   & 	   r  T 	 ]  c  m  n  s $ t ) u)       ** K     * !  +    !     ] '   �     T*� 
*� *� � *� *� *� *+� "**� "� &� *� "**� "� ,� 2*� 8� ;*� 8� >*� 8� A�   (   6    z  T 	 ]  c  m  n  { $ | /  > � E � L � S �)       T* K     T, % +   ,   	 F5 '   ;     *+� D�   (       �)       - j     , % +   	-  ,   ) F G '  #     q� H+� &� � H+� "� L� H� P� VN� H� � H� "-� � 
-� X� :� %� �� Y+� [:� L� ^Y� `� cW*� 	*� g�   (   :    � 
 �  �  � % � , � = � B � F � H � R � d � h � n �)   4    q- j     q, %    q./   S0   = 41 K 2      S03 4    � 4 VF �  	+   -  ,  .    m n '   �     o*� AL+� 8� **� "� kYL� A*� � 
*� � 	*� o� s� yM,� }� 5� �Y �� �N+��� �L-�� �+� ��� �,� ��� �W-� �L+�   (   * 
   �  �  �  � 4 � ; � F � O � h � m �)   *  F '56    o* K    j7   4 ;8  4    �  ~E9� ? ~  � n '   t     %*� >� 8� **� "� � 
*� "� �� >*� >�   (       � 
 �   �)       %* K  4    V �      ~  � n '   t     %*� ;� 8� **� "� � 
*� "� �� ;*� ;�   (       � 
 �   �)       %* K  4    V �      ~  � � '   0     *� ��   (       �)       * K    � � '  R     �*� � X� �M� t,� p*� "� �� f*� "� �N-� �6:� �� =� �� -� �:� ,� �� �� 3:6�� -� �S���� ƻ �Y*� ̶ �� �M,� 	� է ,�   (   :    �  �  � % � + � . � 4 � < � E � R � ] � h � n � �)   H  U ;   % [<=  + U>   . R?@    �* K     �./   �- j 4   & � E   � �A  � � � 	@ �+   .    � � '   =     	*� �+� ۬   (      )       	* K     	BC +   B  D � '   B     *� ߚ � �   (      )       * K  4    @ EF '       �� ƶ �� �� ƶ � �� � � � �� � �� � 	� �� � �M� �Y,�� �N-� �-�
Y*SY�S�-� ��,� �� -�Y-�� �!-�   (   :    	    " $ : E N  a! k" r# �%)   *    �* K     �G   : IH �  E >IJ 4    
B �� G � �+   G   '( '   =     	*� ��%�   (      ))       	* K     	B  +   B   + � '   2     *� ض)�   (      -)       * K    	K '   3     	*� ��,�   (      1)       	* K     L  � � '   2     *� "� ��   (      5)       * K   �� '   `     *� "�/L+� � +�3�   (   
   9 ;)       * K     i % 4    �  3D MN '   �     T*� � X� �M� �69�
Y+SY,S�;,� � �6?�A��C�GY,+�I+�O�R� �6X�A�   (   "   F H #J 'K 3L 4O GP SQ)        T* K     TOP   I- j 4    � 4 �+   O   QN '   �     T*� � X� �M� �6Z�
Y+SY,S�;,� � �6\�A��C�^Y,+�I+�`�R� �6a�A�   (   "   W Y #Z '[ 3\ 4_ G` Sa)        T* K     TOP   I- j 4    � 4 �+   O   RS '   �     V*� � X� �M+�cN� �6h�
Y-SY,S�;,� � �6j�A��C�lY,-+�n�R� �6q�A�   (   & 	  g i j (k ,l 8m 9p Iq Ur)   *    V* K     VOT   K- j   FUV 4    � 9 �W+   O   XY '   M     �C�sY*� �+*�u�R�   (   
   y z)       * K     OZ +   O  [    \   ]^ '  +     �+�xM},�~� �,�~� � >�,�~� �,�~� � #� *� �,�~� *� �C*�R��,�~� *� A� 8� �C*�R��,�~� �C��Y*���R��   (   B    � � 7� ;� @� J� O� V� W� k� r� s� }� �� ��)   *    �* K     �_`   � =    na/ 4    	�  ~@� +   _  b  '   �     `� ƶ �� � �*���**� "� �� ;**� "� �� >*� 8� A*L+� .+��M,�d>� ,2��*�� �����+��� L��Ա   (   >   � 	� � � � '� .� 0� 4� 9� B� N� T� \� _�)   *  > ;   9 #cd    `* K   0 0 i K 4    �  � e� � 
  fg '   �     O� **� ���� *� � X,� 5*��Y,��� � &*� ��^� *� � X,� *� ^Y,� `� �   (      � � � +� B� N�)        O* K     Oh/    O- j 4    +   	h  -   !ij '   A     	*�+���   (   
   � �)       	* K     	kl +   k   !mj '   A     	*�+���   (   
   � �)       	* K     	kl +   k    ! � '   /     *� �   (      �)       * K  [    \   �� '   z     +� � �+� M,� "*� "� � �   (      � � 	� �)        * K     no   1 K 4    	�  @+   n  [    \    � n '   /     *���   (      �)       * K  [    \   p n '   t     B� �Y���� �*��� ��� �*� &��� ��� �*� g���� �*� ��� ��   (      � � A�)       B* K   � n '   {     3*� � **� "��� *� � 
*�� *� �� � *� �   (           
)       3* K  4     C ~   q r '  �     ���>*� � �� � 6� *� "�ȧ *� "��:� a� 	Χ �:� � �Y��ж �*� "� �� �Ҷ �*� "���Զ �׶ �� �ٶ �� �۶ �� ��ݧ :� ����:� *�� � *�� *� *� �   � �� (   J       4 9 H \ � �" � �  �! �$ �% �' �+ �-)   \ 	 H Oq   4 frs  � tu   �v   � rs    �* K     �w/    �x/   �y  4   8 � @� Hz� zB ~� P�    �� z� +   	w  x   �� '   `     � � � � ��   (      4)       w/     x/ 4    @G�    +   	w  x   
�� '   =      ��� ������   (      9 : <4     VW '   6     �C*�R�   (   
   @ A)       b|  +   b    �} '   0     *���   (      �)       * K    �� '   �     1�*� g� *� g��� � M� *� g����M,,�d*S,�   (      � � � � (� /�)   *   ~    1* K     1�   ( 	~ 4   
 � �+   �  �� '   ;     *+Z� �   (       2)       � K     �  �� '         � �   (       2 �  '   �      \� Y��� H�Ը � � ^Y� `� � QY�� L��3��SY�	�C� ~Y�
� 82���� ��   (   "    4  6  9 ! < + @ 5 C ? D I O �   ��   J 	 �      � ��	S � G�� ^�� l�� s�� � � � � 