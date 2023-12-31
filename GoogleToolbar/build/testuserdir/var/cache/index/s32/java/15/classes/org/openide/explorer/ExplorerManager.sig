����   4�	      $org/openide/explorer/ExplorerManager selectionSyncTask (Lorg/openide/util/RequestProcessor$Task;	   	 
 propertySupport "Ljava/beans/PropertyChangeSupport;
     areUnderTarget 4([Lorg/openide/nodes/Node;Lorg/openide/nodes/Node;)Z	     weakListener  Lorg/openide/nodes/NodeListener;	     rootContext Lorg/openide/nodes/Node;	     LOCK Ljava/lang/Object;
     checkUnderRoot (Lorg/openide/nodes/Node;)V	    !  exploredContext	  # $ % vetoableSupport "Ljava/beans/VetoableChangeSupport;
  ' ( ) isUnderRoot (Lorg/openide/nodes/Node;)Z
  + , - 
equalNodes 5([Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;)Z	  / 0 1 selectedNodes [Lorg/openide/nodes/Node;
 3 4 5 6 7 java/lang/Object <init> ()V
  9 : 7 init	 < = > ?  org/openide/nodes/Node EMPTY A -org/openide/explorer/ExplorerManager$Listener
 @ C 6 D )(Lorg/openide/explorer/ExplorerManager;)V	  F G H listener /Lorg/openide/explorer/ExplorerManager$Listener;
 J K L M N org/openide/nodes/NodeOp weakNodeListener T(Lorg/openide/nodes/NodeListener;Ljava/lang/Object;)Lorg/openide/nodes/NodeListener;
  4
 Q R S T U java/util/Arrays equals )([Ljava/lang/Object;[Ljava/lang/Object;)Z
 J W X Y 
createPath E(Lorg/openide/nodes/Node;Lorg/openide/nodes/Node;)[Ljava/lang/String; [ <org/openide/explorer/ExplorerManager$1AtomicSetSelectedNodes
 Z ] 6 ^ B(Lorg/openide/explorer/ExplorerManager;[Lorg/openide/nodes/Node;)V	 ` a b c d org/openide/nodes/Children MUTEX Lorg/openide/util/Mutex;
 f g h i j org/openide/util/Mutex 
readAccess (Ljava/lang/Runnable;)V
 Z l m 7 fire	 Z o p q veto "Ljava/beans/PropertyVetoException;
  s t u setExploredContext 4(Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;)V w 8org/openide/explorer/ExplorerManager$1SetExploredContext
 v y 6 z Z(Lorg/openide/explorer/ExplorerManager;Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;)V
 v l } Dorg/openide/explorer/ExplorerManager$1SetExploredContextAndSelection
 | y
 | l	 | o � java/util/IdentityHashMap
 � � 6 � (I)V
  � � � collectNodes *(Lorg/openide/nodes/Node;Ljava/util/Map;)V � � � � � java/util/Map keySet ()Ljava/util/Set; � � � � � java/util/Set iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � � next ()Ljava/lang/Object;
 < � � � addNodeListener #(Lorg/openide/nodes/NodeListener;)V
 < � � � removeNodeListener	  � � � $assertionsDisabled Z
 f � � � isReadAccess � java/lang/AssertionError
 � 4 � � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 < � � � getParentNode ()Lorg/openide/nodes/Node;
  � � � setSelectedNodes ([Lorg/openide/nodes/Node;)V �  java/beans/PropertyVetoException � "java/lang/IllegalArgumentException
 � � � � � org/openide/explorer/Bundle EXC_CannotHaveNullRootContext ()Ljava/lang/String;
 � � 6 � (Ljava/lang/String;)V
 < � T � (Ljava/lang/Object;)Z � 4org/openide/explorer/ExplorerManager$1SetRootContext
 � � 6 � A(Lorg/openide/explorer/ExplorerManager;Lorg/openide/nodes/Node;)V �  java/beans/PropertyChangeSupport
 � � 6 � (Ljava/lang/Object;)V
 � � � � addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 � � � � removePropertyChangeListener �  java/beans/VetoableChangeSupport
 � �
 � � � � addVetoableChangeListener &(Ljava/beans/VetoableChangeListener;)V
 � � � � removeVetoableChangeListener
 � � � � � java/lang/Class getName
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level; � ;Explored context not under root: {0}---{1}; ROOT: {2}---{3}
 < � � � getDisplayName
 � �  log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 � "EXC_ContextMustBeWithinRootContext 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
	
 7 &org/openide/util/RequestProcessor$Task waitFinished
 � java/io/ObjectOutputStream writeObject
 	putFields '()Ljava/io/ObjectOutputStream$PutField;
 < 	getHandle !()Lorg/openide/nodes/Node$Handle; root
 � #java/io/ObjectOutputStream$PutField '(Ljava/lang/String;Ljava/lang/Object;)V  rootName" explored$ java/util/LinkedList
# 4'()* � java/util/List add, selected'./0 toArray ()[Ljava/lang/Object;
23 7 writeFields
5678 � java/io/ObjectInputStream 
readObject: org/openide/nodes/Node$Handle
 <=> readObjectOld =(Lorg/openide/nodes/Node$Handle;Ljava/io/ObjectInputStream;)V
5@AB 
readFields &()Ljava/io/ObjectInputStream$GetField;
DEFGH "java/io/ObjectInputStream$GetField get 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;J java/lang/StringL !org/openide/util/io/SafeExceptionN java/io/IOExceptionP java/lang/StringBuilder
O 4S 2Could not restore Explorer window; the root node "
OUVW append -(Ljava/lang/String;)Ljava/lang/StringBuilder;Y 3" is not persistent; override Node.getHandle to fix
O[\ � toString
M �
K_ 6` (Ljava/lang/Exception;)Vb [Ljava/lang/String;d [Ljava/lang/Object;9fg � getNodei Node.Handle.getNode (for k ) should not return null
 Qmno asList %([Ljava/lang/Object;)Ljava/util/List;
 qrs restoreSelection >(Lorg/openide/nodes/Node;[Ljava/lang/String;Ljava/util/List;)V
Muv � 
getMessage
Mxy � getLocalizedMessage
{|}~ org/openide/util/Utilities compareObjects '(Ljava/lang/Object;Ljava/lang/Object;)Z
 ���� EXC_handle_failed &(Ljava/lang/Object;)Ljava/lang/String;
����� org/openide/util/Exceptions attachLocalizedMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
 ��� findPath E(Lorg/openide/nodes/Node;[Ljava/lang/String;)Lorg/openide/nodes/Node;
 ��  setRootContext	 f�� d EVENT� &org/openide/explorer/ExplorerManager$1
�� 6� d(Lorg/openide/explorer/ExplorerManager;Ljava/util/List;Lorg/openide/nodes/Node;[Ljava/lang/String;)V
����� java/awt/Component 	getParent ()Ljava/awt/Container;� -org/openide/explorer/ExplorerManager$Provider���� getExplorerManager (()Lorg/openide/explorer/ExplorerManager;
 J�� 'org/openide/nodes/NodeNotFoundException
��� � getClosestNode	 ��� selectionProcessor #Lorg/openide/util/RequestProcessor;� !org/openide/util/RequestProcessor� ExplorerManager-selection
� �	 ��� actions ;Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;� 9org/netbeans/modules/openide/explorer/ExplorerActionsImpl
� 4
��� D attach� &org/openide/explorer/ExplorerManager$2
�� 6� _(Lorg/openide/explorer/ExplorerManager;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
�
 ��� clone
 ��� � desiredAssertionStatus� java/io/ObjectStreamField
�� 6� &(Ljava/lang/String;Ljava/lang/Class;)V	 ��� serialPersistentFields [Ljava/io/ObjectStreamField;	 �� � SCHEDULE_REMOVE_ASYNCH� java/io/Serializable� java/lang/Cloneable serialVersionUID J ConstantValue��.BI PROP_ROOT_CONTEXT Ljava/lang/String;  PROP_EXPLORED_CONTEXT ! PROP_SELECTED_NODES 0 PROP_NODE_CHANGE� 
nodeChange SELECTION_SYNC_DELAY I   � Code LineNumberTable LocalVariableTable this &Lorg/openide/explorer/ExplorerManager; em #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getSelectedNodes ()[Lorg/openide/nodes/Node; arr1 arr2 i StackMapTable MethodParameters value setNodes >Lorg/openide/explorer/ExplorerManager$1AtomicSetSelectedNodes; 
Exceptions $Lorg/openide/util/NbBundle$Messages; 8EXC_NodeCannotBeNull=Cannot use null for node selection. QEXC_NoElementOfNodeSelectionMayBeNull=No element of a node selection may be null. getExploredContext 	selection set :Lorg/openide/explorer/ExplorerManager$1SetExploredContext; setExploredContextAndSelection FLorg/openide/explorer/ExplorerManager$1SetExploredContextAndSelection; addRemoveListeners (Z)V n collect Ljava/util/Map; LocalVariableTypeTable 9Ljava/util/Map<Lorg/openide/nodes/Node;Ljava/lang/Void;>; 1 *Ljava/util/Map<Lorg/openide/nodes/Node;*>; 	Signature E(Lorg/openide/nodes/Node;Ljava/util/Map<Lorg/openide/nodes/Node;*>;)V setSelectedNodes0 nodes getRootContext run 6Lorg/openide/explorer/ExplorerManager$1SetRootContext; java/lang/Throwable <EXC_CannotHaveNullRootContext=Cannot have null root context. node target l #Ljava/beans/PropertyChangeListener; #Ljava/beans/VetoableChangeListener; ## {0} - name of node to be selected # {1} - name of node at root cEXC_ContextMustBeWithinRootContext=An explored context ({0}) must be within the root context ({1}). (Ljava/io/ObjectOutputStream;)V Ljava/util/List; os Ljava/io/ObjectOutputStream; fields %Ljava/io/ObjectOutputStream$PutField; rCH Lorg/openide/nodes/Node$Handle; %Ljava/util/List<[Ljava/lang/String;>; (Ljava/io/ObjectInputStream;)V safe #Lorg/openide/util/io/SafeException; ioe Ljava/io/IOException; exploredCtx selPaths ois Ljava/io/ObjectInputStream; firstObject $Ljava/io/ObjectInputStream$GetField; h9  java/lang/ClassNotFoundException # {0} - name of old node iEXC_handle_failed=Could not restore Explorer window; the root node "{0}" could not be restored correctly. path rootCtx ll selectedPaths Ljava/util/List<*>; A(Lorg/openide/nodes/Node;[Ljava/lang/String;Ljava/util/List<*>;)V find <(Ljava/awt/Component;)Lorg/openide/explorer/ExplorerManager; comp Ljava/awt/Component; ex )Lorg/openide/nodes/NodeNotFoundException; r getSelectionProcessor %()Lorg/openide/util/RequestProcessor; findExplorerActionsImpl c(Lorg/openide/explorer/ExplorerManager;)Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl; 	fireInAWT 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V propName oldVal newVal waitActionsFinished aU $java/lang/CloneNotSupportedException 
access$000 A(Lorg/openide/explorer/ExplorerManager;)[Lorg/openide/nodes/Node; x0 
access$100 [(Lorg/openide/explorer/ExplorerManager;[Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;)Z x1 x2 
access$200 A(Lorg/openide/explorer/ExplorerManager;Lorg/openide/nodes/Node;)Z 
access$300 J(Lorg/openide/explorer/ExplorerManager;)Ljava/beans/VetoableChangeSupport; 
access$002 Z(Lorg/openide/explorer/ExplorerManager;[Lorg/openide/nodes/Node;)[Lorg/openide/nodes/Node; 
access$400 @(Lorg/openide/explorer/ExplorerManager;)Lorg/openide/nodes/Node; 
access$500 
access$402 X(Lorg/openide/explorer/ExplorerManager;Lorg/openide/nodes/Node;)Lorg/openide/nodes/Node; 
access$600 :(Lorg/openide/explorer/ExplorerManager;)Ljava/lang/Object; 
access$700 
access$702 
access$800 H(Lorg/openide/explorer/ExplorerManager;)Lorg/openide/nodes/NodeListener; 
access$900 Z(Lorg/openide/explorer/ExplorerManager;[Lorg/openide/nodes/Node;Lorg/openide/nodes/Node;)Z access$1000 J(Lorg/openide/explorer/ExplorerManager;)Ljava/beans/PropertyChangeSupport; access$1200 P(Lorg/openide/explorer/ExplorerManager;)Lorg/openide/util/RequestProcessor$Task; access$1202 x(Lorg/openide/explorer/ExplorerManager;Lorg/openide/util/RequestProcessor$Task;)Lorg/openide/util/RequestProcessor$Task; <clinit> 
SourceFile ExplorerManager.java InnerClasses Task Listener AtomicSetSelectedNodes SetExploredContext SetExploredContextAndSelection SetRootContext PutField Handle GetField Provider� "org/openide/util/NbBundle$Messages� org/openide/util/NbBundle Messages 1  3 ��  �� �   � �� �   � �� �   � �� �   � �� �   � ��   �� �   � ��   � $ %   � 	 
         !     0 1   � G H   �          ��   �     � �   � �   3  6 7 �   ;     	*� 2*� 8�   �       �  �  ��       	��    : 7 �   v     8**� ;Z� � *� <� .*� @Y*� B� E**� E� I� *� 3Y� 2� �   �       �  �  �   � , � 7 ��       8��   �� �   f     "� Y� OL+*� � +*� � +*� .� .+�   �       �  �  �  �   ��       "��    �� �    �   �� �   /     *� .�   �       ��       ��    , - �   �     C+,� P� �+� +�� �>+�� +2� V,2� V� P� 	����+�� � �   �   "    �  � 
 �  �  �  � 1 � 7 ��   *    C��     C� 1    C� 1   ,�� �    
� 	@�   	�  �    � � �   �     "� ZY*+� \M� _,� e,� k,� n� ,� n��   �       
    !�        "��     "� 1  
 �� �    � ! Z�     ��   � �    � �[ s s  � �   /     *� �   �      )�       ��    t  �   B     
*+� <� r�   �   
   2 	3�       
��     
�  �   �    t u �   k     � vY*+,� xN� _-� e-� {�   �      Y Z [ \�   *    ��     �      1    �   	�    u �   �     #� |Y*+,� ~N� _-� e-� -� �� -� ���   �      � � � � � "��   *    #��     #�     # 1    �    � " |�     ��   	�   	 �  3     w� �YM� �M**� ,� �*� .N-�66� -2:*,� �����,� � � � N-� � � *-� � � <:� *� � �� *� � ���ӱ   �   .   � � � -� 4� :� Z� ^� j� s� v��   4  - 
   Z 
     w��     w* �   l       l �   * �     �  � �  �� # <� � �   *    � � �   �     5� �� � _� �� � �Y� ��+� +*� � ,+� � W+� �L���   �      � � #� ,� 4��        5��     5
     5        5 �    �   	
         � �   _     
*+� �� M�      � �      � � � 	��       
��     
 1 �    H � �       � �   /     *� �   �      ��       ��   �  �   �     @+� � �Y� �� ǿ*� YM�*� +� ʙ ,ñ,ç N,�-�� �Y*+� �M� _,� e�   # )   $ & )   ) , )   �   & 	  � � � � !� $� .� 8� ?��        @��     @�   8  �    �  3D� �   � �    � �[ s    �   �     2>+�� ++2:� ,� ʙ � � �:���������   �   & 	  � � � � �   ( *� 0�   4       .��    2��     2 1    2  �    � � 
 <	� � �   	     ! � � �   e     *� � *� �Y*� Ե *� +� ױ   �         �       ��      �    �      ! � � �   U     *� � *� +� ۱   �        �       ��      �    �      ! � � �   e     *� "� *� �Y*� � "*� "+� �   �      ! " % &�       ��      �    �      ! � � �   U     *� "� *� "+� �   �      , - /�       ��      �    �       ( ) �   j     +� +*� � ʙ �+� �L����   �      5 6 7 : =�       ��       �     �         �   �     S+� Q*+� &� I� � �� ��� 3Y+� �SY+SY*� � �SY*� S� �� �Y+� �*� � ��� ǿ�   �   "   E F  G 9F <I AK KJ RO�       S��     S�  �    � R�   �  �    � �[ s s!s" 
 7 �   J     *� � 
*� ��   �      T U W�       ��  �     # �  �     �+*�+�M*� �N,-�,*� � ��-� �*� � 	:� !**� � &� *� *� � V:� :,!��#Y�%:6*� .�� -**� .2� &� *� .2*� � V�& W����,+�- �+�1�   �   R   l n 
s t w (y ,� 3� 9� D� T� W� `� i� v� �� �� �� �� ���   \ 	 6 "b  Q "b  l 4��  W W"b  i E,$    ���     �%&  
 �'(   �)*      i E,+ �     � 99� a� '-� � �    M�   %   8, �  M  
   �*� 8+�4M,*� *,�9+�;�+�?N-�C�9:-�C�I:� -�KY�MY�OY�QR�T�TX�T�Z�]�^�-!�C�a:-+�C�c:�e :� &�MY�OY�Qh�T�Tj�T�Z�]�*�l�p� .:�KY�^:	�t�w�z� 	����W	��  � � �M �   f   � � 	� � � � � *� 7� <� f� s� �� �� �� �� �� �� �� �� �� �� �� �� ���   p  � 5   � -. 	 � )/0  s y1b  � l2d    ���     �34  	 �5    �'6  * �7*  7 � � �   d �  3� MD9I� Jac <�   5 3D9Iac M� 'MK�   5 3D9I  �    M8�   3  �    � �[ s:s; => �  $     T+� �,�4�aN,�4�a:�#Y�%:,�4�a:� � �& W���+�e -��:*�p�   �   6   � � � � � � (� -� 0� :� =� I� S��   R  ( <b   F=b   =1b   4>$  I 
     T��     T7*    T34       4>+ �    � aa'� a� �    M8�   	7  3   rs �   y     *+������Y*-+,��� e�   �      �   �   *    ��          1b    ?$        ?@ �    1 ?    A 	BC �   f     "*��K*� � Y� O�*�����*���� �   �      / 1 	3 6 8�       "DE  �     �   D   �� �   f     *+���M,���     � �      @ A B�       FG    H      <b �    F��   	H  <   (IJ �   @      ��� ��Y��������   �      H I L�     (KL �   u     1� �� *� � �Y� ��*��� *��Y����*��*��*���   �      T U V $W ,Z�       1��  �    �   �   MN �   r     *� � ����Y*+,-��� e�   �      ^ _ g�   *    ��     O�    P     Q  �    �   O P Q  R 7 �   �     YM�*��L,ç N,�-�+� +�ñ            �      k l 
m n o q�      
 S�    ��    	S� �   ! �     3 �   �  A� � �   /     *�İ   �       H�       ��  �    T�    �  VW �   /     *� .�   �       H�       X�  YZ �   E     *+,� *�   �       H�        X�     [ 1    \ 1 ]^ �   :     *+� &�   �       H�       X�     [  _` �   /     *� "�   �       H�       X�  ab �   ;     *+Z� .�   �       H�       X�     [ 1 cd �   /     *� �   �       H�       X�  e � �   :     *+� �   �       H�       X�     [  fg �   ;     *+Z� �   �       H�       X�     [  hi �   /     *� �   �       H�       X�  jd �   /     *� �   �       H�       X�  kg �   ;     *+Z� �   �       H�       X�     [  lm �   /     *� �   �       H�       X�  no �   E     *+,� �   �       H�        X�     [ 1    \  pq �   /     *� �   �       H�       X�  rs �   /     *� �   �       H�       X�  tu �   ;     *+Z� �   �       H�       X�     [   v 7 �   �      \�ǚ � � ���Y��Y9��SY��YI��SY��Y!a��SY��Y+c��S���ӱ   �       H  c W��    @ w   xy   j �z  @ {  Z  |   v  }   |  ~   �    �	9 <�	D5�	�      � �	�      ���&	