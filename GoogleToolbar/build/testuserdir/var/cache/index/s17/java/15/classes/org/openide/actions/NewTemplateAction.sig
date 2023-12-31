����   4�
      %org/openide/actions/NewTemplateAction getPopupPresenter F(Lorg/openide/util/Lookup;Ljavax/swing/Action;)Ljavax/swing/JMenuItem;
   	 
 updateAction ()V
     	acceptObj #(Lorg/openide/loaders/DataObject;)Z	     targetFolder  Lorg/openide/loaders/DataFolder;
     getNodesFromLookup 4(Lorg/openide/util/Lookup;)[Lorg/openide/nodes/Node;
     doShowWizard ;(Lorg/openide/loaders/DataObject;Lorg/openide/nodes/Node;)V	     recentChanged Z
    !  isValidTemplate
  # $ % getRecentList ()Ljava/util/List;
  ' ( % getPrivilegedList
  * + , getTemplateRoot 2(Lorg/openide/nodes/Node;)Lorg/openide/nodes/Node;
 . / 0 1 
 #org/openide/util/actions/NodeAction <init>	  3 4  active 6 java/util/ArrayList
 5 8 1 9 (I)V	  ; < = 
recentList Ljava/util/List;
 ? @ A B C !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
 ? E F G getRegistry -()Lorg/openide/windows/TopComponent$Registry; I J K L M )org/openide/windows/TopComponent$Registry getActivatedNodes ()[Lorg/openide/nodes/Node; O org/openide/loaders/DataFolder
 Q R S T U org/openide/nodes/Node 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
 Q W X Y getParentNode ()Lorg/openide/nodes/Node; [ ,org/openide/actions/NewTemplateAction$Cookie Z ] ^ _ getTemplateWizard &()Lorg/openide/loaders/TemplateWizard; a ;org/openide/actions/NewTemplateAction$DefaultTemplateWizard
 ` /
  d e f 	getWizard >(Lorg/openide/nodes/Node;)Lorg/openide/loaders/TemplateWizard;
 N h i j isValid ()Z
 l m n o p "org/openide/loaders/TemplateWizard setTargetFolder #(Lorg/openide/loaders/DataFolder;)V	  r s t selectedTemplate  Lorg/openide/loaders/DataObject;
 v h w org/openide/loaders/DataObject
 l y z { setTemplate #(Lorg/openide/loaders/DataObject;)V
 l } ~  setTargetName (Ljava/lang/String;)V
 l � � � instantiate ()Ljava/util/Set;
 l � � � getTemplate "()Lorg/openide/loaders/DataObject;
  � �  	addRecent
 l � � � getTargetFolder "()Lorg/openide/loaders/DataFolder; � java/io/IOException � EXC_TemplateFailed
 � � � � � org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 � � � � � org/openide/util/Exceptions attachLocalizedMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
 � � � � printStackTrace (Ljava/lang/Throwable;)V
 N � � � getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 � � � � j "org/openide/filesystems/FileObject canWrite � NewTemplate � org/openide/util/HelpCtx
 � � 1 � (Ljava/lang/Class;)V � 'org/openide/actions/NewTemplateAction$1
 � � 1 � R(Lorg/openide/actions/NewTemplateAction;Lorg/openide/util/actions/SystemAction;Z)V � 'org/openide/actions/NewTemplateAction$2
 � � 1 � Q(Lorg/openide/actions/NewTemplateAction;Lorg/openide/util/actions/SystemAction;)V � 4org/openide/actions/NewTemplateAction$MenuWithRecent
  � � j 	isEnabled
 � � 1 � C(Lorg/openide/actions/NewTemplateAction;Lorg/openide/nodes/Node;Z)V � 'org/openide/actions/NewTemplateAction$3 � <org/openide/actions/NewTemplateAction$TemplateActionListener
 � � 1 � (Lorg/openide/util/Lookup;)V
 � � 1 � {(Lorg/openide/actions/NewTemplateAction;Lorg/openide/nodes/Node;Lorg/openide/nodes/NodeAcceptor;ZLorg/openide/nodes/Node;)V
 � � � � � org/openide/awt/Actions connect /(Ljavax/swing/JMenuItem;Ljavax/swing/Action;Z)V	  � �  privilegedListFolder � Templates/Privileged
 � � � � �  org/openide/filesystems/FileUtil getConfigFile 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 N � � � 
findFolder F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataFolder;
 N � � � getChildren #()[Lorg/openide/loaders/DataObject; � org/openide/loaders/DataShadow
 � � � � getOriginal � � � � � java/util/List add (Ljava/lang/Object;)Z
 l � � � Q(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataFolder;)Ljava/util/Set;	  � �  recentListFolder � Templates/Recent
  � � � getRecentFolder
  �   removeRecent
 v j 
isTemplate � � contains
 	  isRecent
 v createShadow B(Lorg/openide/loaders/DataFolder;)Lorg/openide/loaders/DataShadow;
 N setOrder $([Lorg/openide/loaders/DataObject;)V
 java/lang/Class getName ()Ljava/lang/String;
 java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 !"# java/util/logging/Level WARNING Ljava/util/logging/Level;
%&' log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V	 )*+ MAX_RECENT_ITEMS I
 v-. 
 delete0 2org/openide/actions/NewTemplateAction$RootChildren
/2 13 (Lorg/openide/nodes/Node;)V5 )org/openide/loaders/DataFolder$FolderNode
/78 � getRootFolder
:;<=> java/util/Objects requireNonNull &(Ljava/lang/Object;)Ljava/lang/Object;
4@ 1A ?(Lorg/openide/loaders/DataFolder;Lorg/openide/nodes/Children;)V
 v �D simple
 �FGH getAttribute &(Ljava/lang/String;)Ljava/lang/Object;	JKLMN java/lang/Boolean TRUE Ljava/lang/Boolean;
JPQ � equals
STUVW org/openide/util/Lookup 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection;	 YZ[ EMPTY_NODE_ARRAY [Lorg/openide/nodes/Node;]^_`a java/util/Collection toArray (([Ljava/lang/Object;)[Ljava/lang/Object;[d 4org/openide/actions/NewTemplateAction$DelegateAction
cf 1g C(Lorg/openide/actions/NewTemplateAction;Lorg/openide/util/Lookup;)V 	Signature 2Ljava/util/List<Lorg/openide/loaders/DataObject;>; Code LineNumberTable LocalVariableTable this 'Lorg/openide/actions/NewTemplateAction; arr t $Lorg/openide/loaders/TemplateWizard; n Lorg/openide/nodes/Node; folder c .Lorg/openide/actions/NewTemplateAction$Cookie; StackMapTable MethodParameters performAction ([Lorg/openide/nodes/Node;)V ignore Ljava/io/IOException; e activatedNodes wizard instantiated� java/lang/Throwable asynchronous enable ([Lorg/openide/nodes/Node;)Z cookie 
getHelpCtx ()Lorg/openide/util/HelpCtx; getMenuPresenter ()Ljavax/swing/JMenuItem; getToolbarPresenter ()Ljava/awt/Component; menu Ljavax/swing/JMenuItem; actionContext Lorg/openide/util/Lookup; action Ljavax/swing/Action; nodes tw fo $Lorg/openide/filesystems/FileObject; dobj i data ![Lorg/openide/loaders/DataObject; l2 LocalVariableTypeTable� 4()Ljava/util/List<Lorg/openide/loaders/DataObject;>; created Ljava/util/Set; template node ioe 	templates newOrder size ch 4Lorg/openide/actions/NewTemplateAction$RootChildren; help o Ljava/lang/Object; obj� java/lang/Object lookup createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; 
access$000 x0 
access$100 9(Lorg/openide/actions/NewTemplateAction;)Ljava/util/List; 
access$200 
access$300 J(Lorg/openide/actions/NewTemplateAction;Lorg/openide/loaders/DataObject;)Z x1 
access$402 +(Lorg/openide/actions/NewTemplateAction;Z)Z 
access$400 *(Lorg/openide/actions/NewTemplateAction;)Z 
access$700 b(Lorg/openide/actions/NewTemplateAction;Lorg/openide/loaders/DataObject;Lorg/openide/nodes/Node;)V x2 
access$800 
access$900 access$1000 access$1300 *(Lorg/openide/actions/NewTemplateAction;)V access$1400 m(Lorg/openide/actions/NewTemplateAction;Lorg/openide/util/Lookup;Ljavax/swing/Action;)Ljavax/swing/JMenuItem; <clinit> 
SourceFile NewTemplateAction.java InnerClasses�  org/openide/windows/TopComponent Registry� org/openide/nodes/Node$Cookie Cookie DefaultTemplateWizard MenuWithRecent TemplateActionListener RootChildren 
FolderNode DelegateAction� 8org/openide/actions/NewTemplateAction$NodeLookupListener NodeLookupListener� :org/openide/actions/NewTemplateAction$DataShadowFilterNode DataShadowFilterNode� 6org/openide/actions/NewTemplateAction$TemplateChildren TemplateChildren !  .   	 
 s t   
     
*+    4     �     �          < = h   i Z[   &  1 
 j   Q     *� -*� 2*� *� 5Y� 7� :�   k       /  W 	6 7l       mn    e f j       i*� � >� D� H L+�� +2K*L� � � +� +N� P� N� +� VL���*� � *Z� P� ZM,� ,� \ N-� -�� `Y� b�   k   >    <  =  >  ?  D  F   G * H 6 I > L P M T N [ O _ P a Tl   4   
o[  [ pq    irs    Mts  P uv w    �  QH Z�  Zx   r   yz j      @*� 2� �*� 2+�� 	+2� M,� cN-� `� /� � � � g� 
-� � k� q� � q� u� 
-� q� x6-� |-� �� � 6-� `� 4� -� �� q� q� **� q� �� -� �� � :� q� *� 2� �:v�� �� �W� �-� `� 4� -� �� q� q� **� q� �� -� �� � :� q� *� 2� E:-� `� 4� -� �� q� q� **� q� �� -� �� � :� q� *� 2��  p � � � V i � � � � � � V i �   � � �  *- � � � �   k   � 7   \  ]  _  a  b   c ' d 6 e = f L g S i V l [ n i v p x u y | { � | � � � � � � � � � � � � � � � o � p � q � p � s � v � x � y � { � | � � � � � � � � � � � � � � � v x y { |# �* �- �/ �3 �7 �< �? �l   \ 	 � {|  � }|  � {| / {|   @mn    @~[  %rs    q  V ��  w   ; @ Q� " Q l� @%I �	G �7I �	G�� % �I �	� x   ~   � j j   ,     �   k       �l       mn   �� j   �     I+� 	+�� �+2Z� P� ZM,� ,� \ � � �+2N� P� NN-� -� �� �� ��   k   & 	   � 
 �  �  �  � + � 7 � E � G �l   *    Imn     I~[   1uv  7 �  w    
�  Z@ �  Nx   ~    j   2     v�� ��   k       �l       mn   �� j   4     
� �Y� ��   k       �l       
mn   �� j   5     � �Y**� ��   k       �l       mn   �� j   4     
� �Y**� ��   k       �l       
mn    � j   1     **� �   k       �l       mn      j       [� QN+� +� N-�� 	-2� :� c:� `� � �Y**� �� °� �Y*� �Y+� �� �:,� ��   k   * 
   �  � 	 �  �  � $ � , � ; � Q � X �l   H  Q 
��    [mn     [��    [��   V�[   >rs  $ 7�q w    � b@ Q�  Q lx   	� �    ( % j  <     t*� �� ظ �L+� *+� � �*� �� N*� ն �L� 5Y+�� 7M>+�� 2+2:� � � � �:*� � ,� � W����,�� 5Y� 7�   k   >   : ; < >  ? (@ 2A :B ?C GD QE ZF cA iI kKl   >   ��  ? $� t  4 5�+  ( C��  2 9� =    tmn  �     2 9�i w    � � ��  v� � � h   �    j       T� ,� cN-� |-+� � �:� "-� `� -� �� q� q� **� q� �� � :v�� �� �W� ��  	 < ? � k   >   P Q 	T U V $X +Y 1[ <c ?^ A_ G` J_ Nb Sdl   >   $��  A }|    Tmn     T� t    T�s  	 Kq w    � < lB �x   	�  �    � � j   k     *� �� �� �L+� *+� � �*� ��   k      g h i j nl      ��    mn  w      $ % j  M     �*� � *� :�*� �� _*� �� �L� 5Y+�� 7M>+�� =+2:� � � � �:*� � ,� � W� *+2� �W����*,� :� *� 5Y� 7� :*� *� :�   k   F   r s t u %v -w 2x :y Dz M{ Y} av g� l� o� {� ��l   4  2 /� t  ' @�+   Q��  % G� =    �mn  �     % G�i w    � � ��  v� � � h   �  !  j   W     +� +�� +� u� � �   k      �l       mn     � t w    @x   �    �  j  �     �*� �M,� �*� &+� � �*+�� �,� �N-�`� v:6�� -d2S����+,�
S,�� :����$�,� �N-�6�(� *-d2� �W������  N ] ` � k   V   � � � � $� )� 2� =� H� N� W� ]� `� b� s� u� z� ~� �� �� ��l   R  5 �+  b �|    �mn     �� t   �t   ) p��  2 g��  ~ �+ w   ! 	�  N	� ��� Q �� x   �      j   �     $*� �M,� �+�,�N���-�$�     � k      � � � � � � "�l   *   �|    $mn     $� t   t  w    �  NE �x   �   	  j   ?     *� "+� �   k      �l       mn     � t x   �   	 + Y j   I     �/Y�1K�4Y*�6Y�9W*�?�   k   
   � 	�l     	 ��   
 + , j   c     �/Y*�1L�4Y+�6Y�9W+�?M,�   k      � 	� �l        rs   	 ��   �s x   r   
   j   �     1*�� �*� N� "*�BC�EL+� �I+�O� � ��   k      � � 	� � � /�l      ��    1� t  w    	� �@�  x   �    	 
 j   +      �   k      nl       mn   :   j   U     *� *Q�R�X�\ �b��X�   k      q r tl       ��  w    x   �   �� j   >     
�cY*+�e�   k      zl       
mn     
�� x   �  � , j   /     *� )�   k       /l       �s  �� j   /     *� &�   k       /l       �n  �� j   /     *� "�   k       /l       �n  �� j   :     *+� �   k       /l       �n     � t �� j   ;     *Z� �   k       /l       �n     �  �� j   /     *� �   k       /l       �n  �� j   E     *+,� �   k       /l        �n     � t    �s �  j   /     *� �   k       /l       ��  � � j         � �   k       /�  j   /     *� �   k       /l       � t  �� j   /     *� �   k       /l       �n  �� j   E     *+,� �   k       /l        �n     ��    ��  � 
 j   (      �(� Q�X�   k   
    5 e �   ��   z  I��	� Q�	 Z �	 ` � 
 �       �       � �  �       � � 
/ � 
4 N� c � � � � � 
� � 
