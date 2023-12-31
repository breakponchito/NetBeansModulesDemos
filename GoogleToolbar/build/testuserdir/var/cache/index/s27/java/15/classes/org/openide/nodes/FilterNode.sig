����   4�  org/openide/nodes/FilterNode
     originalDestroyed ()V
   	 
 <init> 7(Lorg/openide/nodes/Node;Lorg/openide/nodes/Children;)V  )org/openide/nodes/FilterNode$FilterLookup
   	 
   	  P(Lorg/openide/nodes/Node;Lorg/openide/nodes/Children;Lorg/openide/util/Lookup;)V
      org/openide/nodes/Node isLeaf ()Z	      org/openide/nodes/Children LEAF Lorg/openide/nodes/Children;  %org/openide/nodes/FilterNode$Children
  ! 	 " (Lorg/openide/nodes/Node;)V
  $ 	 % 8(Lorg/openide/nodes/Children;Lorg/openide/util/Lookup;)V	  ' ( ) pchlAttached Z + java/lang/Object
 * 	  . / 0 LISTENER_LOCK Ljava/lang/Object; 2 original
 4 5 6 7 8 org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V	  : ; ) childrenProvided	  = > ) lookupProvided	  @ 2 A Lorg/openide/nodes/Node;
  C D  init
  F G H internalLookup (Z)Lorg/openide/util/Lookup;
  J K L ownNode !(Lorg/openide/nodes/FilterNode;)V
  N O P getNodeListener "()Lorg/openide/nodes/NodeListener;	  R S T replaceProvidedLookupCache Ljava/util/Map;
 * V W X getClass ()Ljava/lang/Class; Z [ \ ] ^ java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; ` java/lang/Boolean b 	getCookie d java/lang/Class
  f g h overridesAMethod '(Ljava/lang/String;[Ljava/lang/Class;)Z
 _ j k l valueOf (Z)Ljava/lang/Boolean; Z n o p put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 _ r s  booleanValue
 c u v w 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
 y z { | X java/lang/reflect/Method getDeclaringClass ~ java/lang/NoSuchMethodException
 � � � � � org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V	  � � � delegateMask I
  � � � getPropertyChangeListener %()Ljava/beans/PropertyChangeListener;
  � � � addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  � � � getPropertyChangeListenersCount ()I
  � � � removePropertyChangeListener � "java/lang/IllegalArgumentException � java/lang/StringBuilder
 �  � Bad delegation mask: 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � (I)Ljava/lang/StringBuilder;
 � � � � toString ()Ljava/lang/String;
 � � 	 � (Ljava/lang/String;)V
  � �  	isDefault
  ! � :Node cannot be its own original (even thru indirect chain)
  � � �  checkIfIamAccessibleFromOriginal (Lorg/openide/nodes/Node;)Z
  � � � getChildren ()Lorg/openide/nodes/Children;	   � java/lang/IllegalStateException � 6Can't change implicitly defined Children on FilterNode
 � �	  � � ) $assertionsDisabled � java/lang/AssertionError �  
 � � 	 � (Ljava/lang/Object;)V	  � � � PR #Lorg/openide/util/Mutex$Privileged;
 � � � �  !org/openide/util/Mutex$Privileged enterWriteAccess
  � � � removeNodeListener #(Lorg/openide/nodes/NodeListener;)V
  � � � addNodeListener
  � � � setChildren (Lorg/openide/nodes/Children;)V
  � � " changeOriginal
 � � �  exitWriteAccess
  � � � 	checkNode ()Lorg/openide/util/Lookup;
  � �  fireCookieChange
  � � � fireNameChange '(Ljava/lang/String;Ljava/lang/String;)V
  � � � fireDisplayNameChange
  � � � fireShortDescriptionChange
  � �  fireIconChange
  � �  fireOpenedIconChange
  � � � firePropertySetsChange M([Lorg/openide/nodes/Node$PropertySet;[Lorg/openide/nodes/Node$PropertySet;)V
  
delegating (I)Z
  setValue '(Ljava/lang/String;Ljava/lang/Object;)V
 	
 getValue &(Ljava/lang/String;)Ljava/lang/Object;
  � setName
  � getName
  � setDisplayName
  � getDisplayName
  � setShortDescription
  � getShortDescription
  ! getIcon (I)Ljava/awt/Image;	 #$% LOGGER Ljava/util/logging/Logger;	'()*+ java/util/logging/Level WARNING Ljava/util/logging/Level;- #Cannot return null from {0}.getIcon
 c
01234 java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V	 67 A EMPTY
 9:! getOpenedIcon
 <=> 
getHelpCtx ()Lorg/openide/util/HelpCtx;
 @A  	canRename
 CD  
canDestroy
 FG  destroyI java/io/IOException
0KLM 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
0O3P C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 RST getPropertySets '()[Lorg/openide/nodes/Node$PropertySet;
 VWX clipboardCopy &()Ljava/awt/datatransfer/Transferable;
 Z[X clipboardCut
 ]^  canCopy
 `a  canCut
 cdX drag
 fgh getDropType Q(Ljava/awt/datatransfer/Transferable;II)Lorg/openide/util/datatransfer/PasteType;
 jkl getPasteTypes P(Ljava/awt/datatransfer/Transferable;)[Lorg/openide/util/datatransfer/PasteType;
 nop getNewTypes *()[Lorg/openide/util/datatransfer/NewType;
 rst 
getActions *()[Lorg/openide/util/actions/SystemAction;
 vwt getContextActions
 yz{ getDefaultAction )()Lorg/openide/util/actions/SystemAction;w
 ~s (Z)[Ljavax/swing/Action;sz
 ��� getPreferredAction ()Ljavax/swing/Action;
 ��  overridesGetDisplayName
 �� � getHtmlDisplayName	 �� T overridesGetDisplayNameCache
 ��  hasCustomizer
 ��� getCustomizer ()Ljava/awt/Component;
����� org/openide/util/Lookup lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 c��� 
isInstance (Ljava/lang/Object;)Z� org/openide/nodes/Node$Cookie
 c�� ^ cast
 � b� 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
 ��� 	getHandle !()Lorg/openide/nodes/Node$Handle;� )org/openide/nodes/FilterNode$FilterHandle
�� 	� "(Lorg/openide/nodes/Node$Handle;)V
 ��� getRepresentation 2(Lorg/openide/nodes/Node;)Lorg/openide/nodes/Node;
 ��� equals
 ��� hashCodeLogging (Z)Z
 �� � hashCode
����� java/lang/System identityHashCode (Ljava/lang/Object;)I� 'org/openide/nodes/FilterNode$StackError
��� L add	 �� � hashCodeDepth
�� 	� #(Lorg/openide/nodes/FilterNode$1;)V� 2org/openide/nodes/FilterNode$PropertyChangeAdapter
�� 	 L� (org/openide/nodes/FilterNode$NodeAdapter
��	 ��� propL #Ljava/beans/PropertyChangeListener;
 �� � createPropertyChangeListener	 ��� nodeL  Lorg/openide/nodes/NodeListener;
 �� P createNodeListener
 ��� getOriginal ()Lorg/openide/nodes/Node;
 ���  enterReadAccess	 ��  	hierarchy	 �
 ���  exitReadAccess
 ��  updateChildren
 c��  desiredAssertionStatus� java/util/WeakHashMap
�� 	� (I)V DELEGATE_SET_NAME ConstantValue    DELEGATE_GET_NAME    DELEGATE_SET_DISPLAY_NAME    DELEGATE_GET_DISPLAY_NAME    DELEGATE_SET_SHORT_DESCRIPTION    DELEGATE_GET_SHORT_DESCRIPTION     DELEGATE_DESTROY   @ DELEGATE_GET_ACTIONS   � DELEGATE_GET_CONTEXT_ACTIONS    DELEGATE_SET_VALUE    DELEGATE_GET_VALUE    DELEGATE_ALL  � 	Signature 8Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Boolean;>; Code LineNumberTable LocalVariableTable this Lorg/openide/nodes/FilterNode; MethodParameters children Lorg/openide/util/Lookup; lkp StackMapTable replaceProvidedLookup 4(Lorg/openide/util/Lookup;)Lorg/openide/util/Lookup; b Ljava/lang/Boolean;) java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; m Ljava/lang/reflect/Method; ex !Ljava/lang/NoSuchMethodException; name Ljava/lang/String; 	arguments [Ljava/lang/Class; !notifyPropertyChangeListenerAdded l #notifyPropertyChangeListenerRemoved enableDelegation mask disableDelegation what 	cloneNode f (Lorg/openide/nodes/Node;Z)V changeChildren attributeName value s type icon Ljava/awt/Image;F java/awt/Image 
Exceptions Ljava/io/IOException; t $Ljava/awt/datatransfer/Transferable; action index 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; context retValue [Ljavax/swing/Action; Ljavax/swing/Action;U javax/swing/ActionW java/lang/String res Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<TT;>; ?<T::Lorg/openide/nodes/Node$Cookie;>(Ljava/lang/Class<TT;>;)TT; Lorg/openide/nodes/Node$Handle;_ org/openide/nodes/Node$Handle o left right fn n result err )Lorg/openide/nodes/FilterNode$StackError; enter listenerAdded newChildren 
access$100 x0 <clinit> 
SourceFile FilterNode.java InnerClasses FilterLookup Childrent org/openide/util/Mutex 
Privilegedw "org/openide/nodes/Node$PropertySet PropertySet Cookie Handle FilterHandle 
StackError~ org/openide/nodes/FilterNode$1 PropertyChangeAdapter NodeAdapter� ,org/openide/nodes/FilterNode$ChildrenAdapter ChildrenAdapter !      � �       �       �       �       �     	 
 �       �       �       �       �       �       �      � T      S T     J� �    2 A   ��   ��    � �    ( )    ; )    > )    / 0   $%   � )   ?  	 "    ?     *+� �      
    �  �             2 A     2    	 
    P     *+,� Y� � �      
    �  �              2 A          	 2       	    �     �*,� +� � 	� � � Y+�  � ,-� #*� &*� *Y� ,� -1+� 3*,� � � 9*-� -� � � � <*+� ?*� B*� E:� � � *� I� � *� MW�      B    �  �  � " � ' � 2 � 8 � E � Y � ^ � b � i � q � } � � � � �   4    �     � 2 A    �      ��!  i "! #   j 	RJ�     �  � "    �  �      �  R �      �  � &�	    2     �   $%    �     Y� QYM² Q*� U� Y � _N-� ,*a� cYcS� e� � � iN� Q*� U-� m W-� q� +� ,ð:,��   Q R   R V R          �  �  �  � 5 � C � R �       <&'    Y     Y�! #   & � 0 * _@
@��   � * (   �  *    +   � g h    �     **� U� �*� U+,� tN-� x� �� N-� �    # }    & 	   � 	 �  �  �  �   � # � $ � ( �   4   ,-  $ ./    *     *01    *23 #   	 B }   	0  2    D     6     *�� ��      
    �  �           4 �    a     *� &� *� ?*� �� �*� &�                         5� #       5  *    +    6 �    a     *� �� *� ?*� �� �*� &�          	 
             5� #       5  *    +   7�    w     .� ~� � �Y� �Y� ��� �� �� �� ��*Y� ��� ��           # -       .     .8 � #    #   8   9�    y     0� ~� � �Y� �Y� ��� �� �� �� ��*Y� ��~� ��         ; < #? /@       0     08 � #    #   8       N     *� �~� � �         D            : � #    @   :   ;�    W     *� �� � Y*� ?� ��� Y*� ��         N R V         #      � �    �     &*+� � �Y�� ��+� � +� M*,� ?� �W�         ` a d e f $i       	<    &     & 2 A #        2    �=   "    ,1+� 3� !*� �� � *� �� �� � �Y�� ��� �� *+� �� � �YƷ ȿ� ˶ �*� ?*� M� �*� &� *� ?*� �� �*+� ?*� ?*� M� �*� &� *� ?*� �� �� Z+� � *� �� �� *� �� ۧ ?+� � *� �� �� *� Y+�  � ۧ +� � *� �� �� *� �� +� ߲ ˶ � N� ˶ �-�*� EN-� � -� � �W*� �*� �*� �*� �*� �*� �*� ��  @ � �      � $  ~ � � � � (� @� F� Q� X� c� h� s� z� �� �� �� �� �� �� �� �� �� �� �� �� �� �������!�%�+�   *   ,    , 2 A   ,> )  � 4"! #    
("!H(� �   	 2  >       q     * � � *� ?+,�� 	*+,��         � 
� � �             ?1    @ 0 #       	?  @  *    +   
    ^     * � � *� ?+��*+��         � 
� �            ?1 #       ?  *    +    �    c     *� � *� ?+�� *+��         � � � �            A1 #       A  *    +    �    P     *� � *� ?��*��         � � �         #    *    +    �    c     *� � *� ?+�� *+��         � � � �            A1 #       A  *    +    �    Q     *� � *� ?��*��         � 	� �         #    *    +    �    d     *� � *� ?+�� *+��          	              A1 #       A  *    +    �    Q     * � � *� ?��*��          	          #    *    +    !    �     -*� ?�M,� ,��"�&,*� ?� U�.�/�5��          	   %         -     -B �  	 $CD #    � E   B  *    +   :!    =     	*� ?�8�         ,       	     	B �    B   =>    2     *� ?�;�         0          A     2     *� ?�?�         8          D     2     *� ?�B�         ?          G     X     *@� � *� ?�E� *�E�         F 	G I K         #    G    H*    +         r     *�E� L�.�J�&+�N�     H       R U S T V      .H      #    GH ST    2     *� ?�Q�         ]          WX    2     *� ?�U�         g         G    H [X    2     *� ?�Y�         q         G    H ^     2     *� ?�\�         x          a     2     *� ?�_�                   dX    2     *� ?�b�         �         G    H gh    S     *� ?+�e�         �   *         IJ    K �    L �    I  K  L   kl    =     	*� ?+�i�         �       	     	IJ    I   op    2     *� ?�m�         �          st    R     * �� � *� ?�q�*�q�         � 
� �         #    M    N    O  *    +   wt    R     * � � *� ?�u�*�u�         � 
� �         #    M    N    O  *    +   z{    2     *� ?�x�         �         M    N    O  *    +   s    �     K� !* �� � *|� c� e� '*�}�* � � *�� c� e� 	*�}�*� ?�}M,�         � � � "� :� @� I�        K     KP )  I QR #       P  *    +   ��    y      *�� c� e� *��L� *� ?��L+�         � � � �       QS         QS #   	 � T*    +   � �    a     !*��� �*� � *� ?��� *���         � � 	�       !  #    	CV*    +   �     �     C��YL²�*� U� Y � _M,�  *�� c� e� iM��*� U,� m W,� q+ìN+�-�   = >   > A >             ) 7 >      (&'    C  #    � 7 * _�    * ( �     2     *� ?���                   ��    2     *� ?���                    b�    �     5*� EM,� %,+��N+-��� -��� +-����� �*� ?+���         ( * 
+ , ,/   *   X 0    5     5BY   /5! Z       5B[ #    � *� *@��     B     \*    +   ��    w      *� �� �*� ?��L+� ���Y+���         < > 	A C E H             2] #   	 	� ^ ��    �     <+� � �*+� �*��M+� ��N,� � 
-� � ,-� � �,-���      & 	  ^ _ 	b c g h k +l 6o   *    <     <` 0   'a A   b A #    	�   @    `  *    +   
��    }     *� � *� L+� �� *�+� ?K���*�         s t v w z { }      c    d A  #     �  �    d   � �    �     N� �� ��� � �YƷ ȿ*� �� *� ?��� *��<� �� ��� � �YƷ ȿ�L+*��+�    E F�       � � -� D� F� G� L�      - e �  G fg    N  #    C� �    �*    +   
��    |     /��� �˻�Y�ο� ��`�˧ ��d���         � 	� � � � %� -�       /h )  #       h   ��    /     *� ?�         �          � �    3     	��Y*�Ӱ         �       	   � P    3     	��Y*�װ         �       	     � �    ~     "*� -YL�*��� **�ܵ�*��+ðM+�,�                   � � � � �       "  #    �  *F(   O P    �     -*� -YL�*��� **���*��*�߶ �*��+ðM+�,�   ' (   ( + (         � � � � !� (�       -  #    � ! *F( i     4     *� MW�      
   � �         *    +    �     ]     *� U� �*� 9� *� <� � �         � 	� �         #    @ �         s*� �� jL� ˶�*� ?��� �� *�� �� 
� �L� &*� ?��� �� *�� �� � Y*� ?�  L� ˶� M� ˶�,�+� *+� ۧ *���  	 P Y      B     	 	 &
 - D P V Y ` b f k n r     	 bj     s  #    � - "H(� *    +  k L    /     *� �          C       l   m     c      4��� � � ���Y������Y��� Q�.�J�"�          C  m  n ( �#    @ n   op   b   q   r 	 �su v x	� y	^ z	� { � | 
}    �  � � � � 
