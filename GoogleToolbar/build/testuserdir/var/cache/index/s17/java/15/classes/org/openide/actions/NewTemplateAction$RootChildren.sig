����   4
      2org/openide/actions/NewTemplateAction$RootChildren updateWizard '(Lorg/openide/loaders/TemplateWizard;)V
   	 
 	doSetKeys ()V
     
 org/openide/nodes/Children$Keys <init>
      org/openide/nodes/NodeOp weakNodeListener T(Lorg/openide/nodes/NodeListener;Ljava/lang/Object;)Lorg/openide/nodes/NodeListener;	     listener  Lorg/openide/nodes/NodeListener;
      !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
  ! " # getRegistry -()Lorg/openide/windows/TopComponent$Registry;
 % & ' ( ) org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener; + , - . / )org/openide/windows/TopComponent$Registry addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 1 2 3 4 5 %org/openide/actions/NewTemplateAction 	getWizard >(Lorg/openide/nodes/Node;)Lorg/openide/loaders/TemplateWizard;	  7 8 9 
rootFolder  Lorg/openide/loaders/DataFolder;
 ; < = > ? org/openide/nodes/Node getDisplayName ()Ljava/lang/String; A org/openide/loaders/DataShadow
 ; C D E 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; G org/openide/loaders/DataNode	 I J K L M org/openide/nodes/Children LEAF Lorg/openide/nodes/Children;
 F O  P ?(Lorg/openide/loaders/DataObject;Lorg/openide/nodes/Children;)V
 F <
 @ S T U getOriginal "()Lorg/openide/loaders/DataObject;
 W X Y Z [ org/openide/loaders/DataObject getNodeDelegate ()Lorg/openide/nodes/Node;
 W ] ^ _ 
isTemplate ()Z a :org/openide/actions/NewTemplateAction$DataShadowFilterNode	  J
 ` d  e I(Lorg/openide/nodes/Node;Lorg/openide/nodes/Children;Ljava/lang/String;)V
 1 g h i access$1000 #(Lorg/openide/loaders/DataObject;)Z k 6org/openide/actions/NewTemplateAction$TemplateChildren
 j m  n (Lorg/openide/nodes/Node;)V	  p q r current Ljava/lang/ref/WeakReference;
 t u v w x java/lang/ref/WeakReference get ()Ljava/lang/Object;
 ; z { | removeNodeListener #(Lorg/openide/nodes/NodeListener;)V
 ; ~  | addNodeListener
 t �  � (Ljava/lang/Object;)V	  � � � wizard $Lorg/openide/loaders/TemplateWizard;
 � � � � � "org/openide/loaders/TemplateWizard getTemplatesFolder "()Lorg/openide/loaders/DataFolder;
 � X � org/openide/loaders/DataFolder
  � � 
 
updateKeys
 � � � � � 2org/netbeans/modules/openide/loaders/DataNodeUtils reqProcessor %()Lorg/openide/util/RequestProcessor; � 4org/openide/actions/NewTemplateAction$RootChildren$1
 � �  � 7(Lorg/openide/actions/NewTemplateAction$RootChildren;)V
 � � � � � !org/openide/util/RequestProcessor post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;
 ; � � � getChildren ()Lorg/openide/nodes/Children;
 I � � � getNodes (Z)[Lorg/openide/nodes/Node;
  � � � setKeys ([Ljava/lang/Object;)V
 � � � � ? java/beans/PropertyChangeEvent getPropertyName
 � � � x 	getSource � cookie
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z	 � � � � � org/openide/util/Mutex EVENT Lorg/openide/util/Mutex; � 4org/openide/actions/NewTemplateAction$RootChildren$2
 � �  � O(Lorg/openide/actions/NewTemplateAction$RootChildren;Lorg/openide/nodes/Node;)V
 � � � � 
readAccess (Ljava/lang/Runnable;)V � activatedNodes + � � � getActivatedNodes ()[Lorg/openide/nodes/Node;
  � � n 
updateNode
  � � � createNodes 3(Lorg/openide/nodes/Node;)[Lorg/openide/nodes/Node; � org/openide/nodes/NodeListener 	Signature 7Ljava/lang/ref/WeakReference<Lorg/openide/nodes/Node;>; Code LineNumberTable LocalVariableTable this 4Lorg/openide/actions/NewTemplateAction$RootChildren; n Lorg/openide/nodes/Node; reg +Lorg/openide/windows/TopComponent$Registry; MethodParameters getRootFolder StackMapTable dn Lorg/openide/loaders/DataNode; nodeName Ljava/lang/String; obj  Lorg/openide/loaders/DataObject; shadow  Lorg/openide/loaders/DataShadow; prev w newNode childrenReordered '(Lorg/openide/nodes/NodeReorderEvent;)V ev $Lorg/openide/nodes/NodeReorderEvent; childrenRemoved &(Lorg/openide/nodes/NodeMemberEvent;)V #Lorg/openide/nodes/NodeMemberEvent; childrenAdded nodeDestroyed  (Lorg/openide/nodes/NodeEvent;)V Lorg/openide/nodes/NodeEvent; #(Ljava/beans/PropertyChangeEvent;)V node arr [Lorg/openide/nodes/Node;  Ljava/beans/PropertyChangeEvent; pn -(Ljava/lang/Object;)[Lorg/openide/nodes/Node; access$1100 x0 access$1200 [(Lorg/openide/actions/NewTemplateAction$RootChildren;Lorg/openide/loaders/TemplateWizard;)V x1 [Lorg/openide/nodes/Children$Keys<Lorg/openide/nodes/Node;>;Lorg/openide/nodes/NodeListener; 
SourceFile NewTemplateAction.java InnerClasses RootChildren Keys  org/openide/windows/TopComponent Registry org/openide/nodes/Node$Cookie Cookie DataShadowFilterNode TemplateChildren &org/openide/util/RequestProcessor$Task Task      �   � �    8 9    q r  �    �         n  �   z     (*� **� � � �  M,*,� $� * *+� 0� �    �      : 6 ; < > '? �        ( � �     ( � �    � �  �    �    � �  �   K     *� 6� *� *� 6�    �      B D F �        � �   �      � �  �  4 	    �+� :MN+@� B� @:� "� FY� H� N:� QM� RN-� VL-� +W� B� WN-� >-� \� � ;Y� `Y+� b,� cS�-� f� � ;Y� `Y+� jY+� l,� cS��    �   B   M O P Q T %U +V 1W 6Z :[ D\ H] O_ cb jd �h �   >  %  � �    � � �     � � �   � � �   ~ � �   s � �  �    � 6 � W @ �    �    � n  �   �     J*� o� *� o� s+� �*� o� *� o� s� ;� M,� ,*� � y+*� � }*� tY+� �� o�    �   "   n o r )s -t 5w =x Iy �        J � �     J � �  ) ! � �  �    @ ;�  ; �    �       �   �     =*� �+� �*� �� *� �� �� �M,*� � y+� �� �M,*� � }*+� �*� ��    �   * 
  ~  	� � � #� +� 3� 8� <� �   *    � �    = � �     = � �  +  � �  �    	 �    �    � 
  �   >     � �� �Y*� �� �W�    �   
   � � �        � �    	 
  �   P     **� �� �� 6**� 6� �� �� �� ��    �      � � � �        � �    � �  �   =     *� ��    �   
   � � �        � �      � �  �    �    � �  �   =     *� ��    �   
   � � �        � �      � �  �    �    � �  �   =     *� ��    �   
   � � �        � �      � �  �    �    �   �   5      �    �      � �        � �      �  �    �    (  �   �     c+� �M*� o� 7+� �*� o� s� )�,� �� B*� o� s� ;N� �� �Y*-� ȶ ˧ %�,� �� � �  � � N-�� 
*-2� ձ    �   .   � � � #� .� =� @� I� U� [� b� �   4  .  �  U     c � �     c �   ^ �  �   	 � @ �! �    �  D �  �   3     	*+� ;� ذ    �      + �       	 � �   �    � 	 �  �   /     *� �    �      + �       
 �    �   :     *+� �    �      + �       
 �      �   �         J 	  1 
  I	 +	 ;	 ` 1 
 j 1 
 �       �  �      