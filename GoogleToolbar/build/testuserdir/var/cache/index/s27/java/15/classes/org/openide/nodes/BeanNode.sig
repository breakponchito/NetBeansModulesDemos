����   4�
      org/openide/nodes/BeanNode getNameForBean ()Ljava/lang/String;	   	 
 synchronizeName Z	     beanInfo Ljava/beans/BeanInfo;
     <init> J(Ljava/lang/Object;Lorg/openide/nodes/Children;Lorg/openide/util/Lookup;)V
     getChildren 0(Ljava/lang/Object;)Lorg/openide/nodes/Children;
      org/openide/nodes/AbstractNode 8(Lorg/openide/nodes/Children;Lorg/openide/util/Lookup;)V	     
nameGetter Ljava/lang/reflect/Method;	  ! "  
nameSetter	  $ %  removePCLMethod	  ' ( ) propertyChangeListener "Lorg/openide/nodes/BeanNode$PropL; + java/lang/NullPointerException - "cannot make a node for a null bean
 * /  0 (Ljava/lang/String;)V	  2 3 4 bean Ljava/lang/Object;
  6 7 8 initialization (Z)V : !java/beans/IntrospectionException < java/lang/RuntimeException
  > ? @ mkie :(Ljava/lang/Throwable;)Ljava/beans/IntrospectionException; B java/lang/LinkageError D "java/beans/beancontext/BeanContext F org/openide/nodes/BeanChildren
 E H  I '(Ljava/beans/beancontext/BeanContext;)V K 'java/beans/beancontext/BeanContextProxy J M N O getBeanContextProxy +()Ljava/beans/beancontext/BeanContextChild;	 Q R S T U org/openide/nodes/Children LEAF Lorg/openide/nodes/Children;
 W X Y Z  java/lang/Throwable toString
 9 /
 9 ] ^ _ 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;
 a b c d e java/lang/reflect/Method getDeclaringClass ()Ljava/lang/Class;
 g h i j k java/beans/Beans getInstanceOf 7(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object; m java/lang/Object
 a o p q invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; s java/lang/Exception
 u v w x y org/openide/nodes/NodeOp 	exception (Ljava/lang/Throwable;)V
  { | } destroy ()V
   � 0 setName � � � � � java/beans/BeanInfo getIcon (I)Ljava/awt/Image;
  �
  �
 � � � � � org/openide/util/HelpCtx findHelp .(Ljava/lang/Object;)Lorg/openide/util/HelpCtx;	 � � � � DEFAULT_HELP Lorg/openide/util/HelpCtx;
 � �  � (Ljava/lang/Class;)V
  � � � computeProperties P(Ljava/lang/Object;Ljava/beans/BeanInfo;)Lorg/openide/nodes/BeanNode$Descriptor;
  � � � getSheet ()Lorg/openide/nodes/Sheet;
 � � � � � org/openide/nodes/Sheet createPropertiesSet ()Lorg/openide/nodes/Sheet$Set;	 � � � � � %org/openide/nodes/BeanNode$Descriptor property "[Lorg/openide/nodes/Node$Property;
 � � � � � org/openide/nodes/Sheet$Set put %([Lorg/openide/nodes/Node$Property;)V � � � � getBeanDescriptor ()Ljava/beans/BeanDescriptor; � propertiesHelpID
 � � � � � java/beans/BeanDescriptor getValue &(Ljava/lang/String;)Ljava/lang/Object; � helpID
 � � � � setValue '(Ljava/lang/String;Ljava/lang/Object;)V
 � � � � <(Lorg/openide/nodes/Sheet$Set;)Lorg/openide/nodes/Sheet$Set;	 � � � � expert
 � � � � createExpertSet � expertHelpID � java/lang/String � Copy � Tools � 
Properties
 u � � � createFromNames =([Ljava/lang/String;)[Lorg/openide/util/actions/SystemAction;
 � � � e getCustomizerClass
 � � � � � java/lang/Class newInstance ()Ljava/lang/Object; �  java/lang/InstantiationException �  java/lang/IllegalAccessException � java/beans/Customizer
 � � � � � org/openide/nodes/TMUtil attachCustomizer 2(Lorg/openide/nodes/Node;Ljava/beans/Customizer;)V � java/awt/Component
 � � � � createDialog %(Ljava/lang/Object;)Ljava/awt/Dialog; � � � � 	setObject (Ljava/lang/Object;)V � org/openide/nodes/BeanNode$1
 � �  � (Lorg/openide/nodes/BeanNode;)V � � �  addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V java/util/ArrayList
  } � getPropertyDescriptors "()[Ljava/beans/PropertyDescriptor;

 e java/beans/PropertyDescriptor getPropertyType $java/beans/IndexedPropertyDescriptor
 getReadMethod ()Ljava/lang/reflect/Method;
 a e getReturnType
 � isArray ()Z (org/openide/nodes/IndexedPropertySupport

  e getIndexedPropertyType
"# getWriteMethod
%& getIndexedReadMethod
() getIndexedWriteMethod
+ , �(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
./  getName
 
23  getDisplayName
56 0 setDisplayName
89  getShortDescription
;< 0 setShortDescription
>?@ attributeNames ()Ljava/util/Enumeration;BCDE java/util/Enumeration hasMoreElementsBGH � nextElement
 �
 �L ,org/openide/nodes/PropertySupport$Reflection



"
KP Q Z(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

.
K 

2
K5

8
K;

YZ e getPropertyEditorClass
K\] � setPropertyEditorClass

>

 �
K �
b �c org/openide/nodes/Node$Property

ef isHiddenhijkl java/util/List add (Ljava/lang/Object;)Z

no isExpert
bqr 8 	setExpert
 �t u 3(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Vw org/openide/nodes/beans.gif
 yz 0 setIconBaseWithExtension
 |} 8 setSynchronizeName
 l� e getClass
 ���� getModifiers ()I
����� java/lang/reflect/Modifier isPublic (I)Z
 ��� hasExplicitBeanInfo (Ljava/lang/Class;)Z
 ��� e getSuperclass
����� org/openide/util/Utilities getBeanInfo ((Ljava/lang/Class;)Ljava/beans/BeanInfo;
 �� } registerName
 �� 0 setNameSilently
 �8
 �2
���� compareObjects '(Ljava/lang/Object;Ljava/lang/Object;)Z
 ; ���� getEventSetDescriptors "()[Ljava/beans/EventSetDescriptor;
���� java/beans/EventSetDescriptor getAddListenerMethod
 a. �
 ���l equals
 a��  org/openide/nodes/BeanNode$PropL
� �
����� org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;
��� getRemoveListenerMethod� java/lang/StringBuilder
�� Trying to invoke 
���� append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
���� -(Ljava/lang/Object;)Ljava/lang/StringBuilder;�  where introspected class is 
 �.
� X
����� org/openide/util/Exceptions attachMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
 u�� y warning
 ��� createProperties *(Ljava/lang/Object;Ljava/beans/BeanInfo;)V
 �>
  �
 ���� createInstanceCookie 3(Ljava/lang/Object;)Lorg/openide/nodes/Node$Cookie;
 ��� getCookieSet ()Lorg/openide/nodes/CookieSet;
���k� org/openide/nodes/CookieSet "(Lorg/openide/nodes/Node$Cookie;)V
 ���� lastIndexOf (I)I
 ���� 	substring (I)Ljava/lang/String;
����� java/beans/Introspector getBeanInfoSearchPath ()[Ljava/lang/String;
���� (C)Ljava/lang/StringBuilder;� BeanInfo
 �  forName %(Ljava/lang/String;)Ljava/lang/Class;  java/lang/ClassNotFoundException/
 �	 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method; java/lang/NoSuchMethodException

3 java/lang/SecurityException Bad method:  .
 java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 java/util/logging/Level WARNING Ljava/util/logging/Level;
!"# log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V �	&'()* java/lang/Void TYPE Ljava/lang/Class;6-   	ICON_BASE Ljava/lang/String; ConstantValue 	Signature TT; 'Lorg/openide/nodes/BeanNode<TT;>.PropL; Code LineNumberTable LocalVariableTable this Lorg/openide/nodes/BeanNode; LocalVariableTypeTable !Lorg/openide/nodes/BeanNode<TT;>; 
Exceptions MethodParameters (TT;)V 1(Ljava/lang/Object;Lorg/openide/nodes/Children;)V children "(TT;Lorg/openide/nodes/Children;)V ie #Ljava/beans/IntrospectionException; re Ljava/lang/RuntimeException; le Ljava/lang/LinkageError; lkp Lorg/openide/util/Lookup; StackMapTableK org/openide/util/Lookup ;(TT;Lorg/openide/nodes/Children;Lorg/openide/util/Lookup;)V bch )Ljava/beans/beancontext/BeanContextChild; t Ljava/lang/Throwable; watch getBean ()TT; o e Ljava/lang/Exception;X java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
canDestroy m s 	canRename type I image Ljava/awt/Image;d java/awt/Image getOpenedIcon 
getHelpCtx ()Lorg/openide/util/HelpCtx; h eset Lorg/openide/nodes/Sheet$Set; info d 'Lorg/openide/nodes/BeanNode$Descriptor; sets Lorg/openide/nodes/Sheet; pset bd Ljava/beans/BeanDescriptor; (TT;Ljava/beans/BeanInfo;)V canCopy canCut 
getActions (Z)[Ljavax/swing/Action; context hasCustomizer getCustomizer ()Ljava/awt/Component; "Ljava/lang/InstantiationException; "Ljava/lang/IllegalAccessException; clazz cust Ljava/beans/Customizer; comp Ljava/awt/Component; Ljava/lang/Class<*>; aname Ljava/util/Enumeration; p &Ljava/beans/IndexedPropertyDescriptor; support *Lorg/openide/nodes/IndexedPropertySupport; prop !Lorg/openide/nodes/Node$Property; Ljava/beans/PropertyDescriptor; .Lorg/openide/nodes/PropertySupport$Reflection; help i Ljava/util/List; hidden propertyDescriptor  [Ljava/beans/PropertyDescriptor; k 3Ljava/util/List<Lorg/openide/nodes/Node$Property;>;� instanceCookie Lorg/openide/nodes/Node$Cookie; 	hasLookup 
descriptor sd eventSetDescriptors  [Ljava/beans/EventSetDescriptor; method� 	className indx paths [Ljava/lang/String;� (Ljava/lang/Class<*>;)Z ee !Ljava/lang/NoSuchMethodException; se Ljava/lang/SecurityException; name ex getPreferredAction ()Ljavax/swing/Action; arr ([Lorg/openide/util/actions/SystemAction;�� javax/swing/Action 
access$000 3(Lorg/openide/nodes/BeanNode;)Ljava/beans/BeanInfo; x0 
access$100 (Lorg/openide/nodes/BeanNode;)Z 
access$200 0(Lorg/openide/nodes/BeanNode;)Ljava/lang/String; 6<T:Ljava/lang/Object;>Lorg/openide/nodes/AbstractNode; 
SourceFile BeanNode.java InnerClasses PropL 
Descriptor Set� org/openide/nodes/Node Property� !org/openide/nodes/PropertySupport 
Reflection� org/openide/nodes/Node$Cookie Cookie !      ./ 0   v  3 4 1   2            "     %     ( ) 1   3  	 
      � 4   \     *+� �   5   
    n  o6       78      3 4 9       7:      32 ;     9<    3  1   =  > 4   f     *+,� �   5   
    y  z6        78      3 4    ? U 9       7:      32 ;     9<   	 3  ?  1   @    4  �     ^*,� 
+� � ,-� *� *�  *� #*� &+� � *Y,� .�*+� 1*-� � � 5� :�:� =�:� =��  8 E H 9 8 E M ; 8 E U A 5   F    �  X  Y  \   _ % � ) � 3 � 8 � E � H � J � M � O � U � W � ] �6   H  J AB  O CD  W EF    ^78     ^ 3 4    ^? U    ^GH 9       ^7:     ^ 32 I   T 	L�    l QJ  Q� %   l QJ  M �     l QJ  E 9D ;G A;     9<    3  ?  G  1   L 
   4   �     ;*� C� � EY*� C� G�*� J�  *� J� L L+� C� � EY+� C� G�� P�   5       �  �  �  � $ � + � 7 �6     $ MN    ; 3 4  I    #<    3   
 ? @ 4   =     � 9Y*� V� [*� \� 9�   5       �6       OP  <   O   } 8 4   P     *� �   5   
    �  �6       78     Q 
 9       7:  <   Q   R � 4   A     *� 1�   5       �6       78  9       7:  1   S  | } 4   �     7*� #� .*� 1*� #� `� fL*� #+� lY*� &S� nW� L+� t*� z�   * - r 5   "    �  �  � * � - � . � 2 � 6 �6       T 4  . UV    778  9       77:  I    m r;    WY    Z   [ 4   >     �   5       �6       78  9       7:  Y    Z    � 0 4   �     /*� � %*�  M,� ,*� 1� lY+S� nW� N-� t*+� ~�   ! $ r 5   & 	   �  �  �  � ! � $ � % � ) � . �6   *  % UV   \     /78     /]/ 9       /7:  I    � $   � a  r� <   ]  Y    Z   ^ 4   \     *� � 
*�  � � �   5      6       78  9       7:  I    @Y    Z    � � 4   �     *� � � M,� ,�*� ��   5         6        78     _`   ab 9       7:  I    � c<   _  Y    Z   e � 4   L     *� ��   5       6       78     _` 9       7:  <   _  Y    Z   fg 4   {     *� 1� �L+� �� +�� �Y� ��   5      % ' ( *6       78    h � 9       7:  I    �  �Y    Z   �� 4  t     �+,� �N*� �:� �:-� �� �,� � :� �� �� ��� �� �� �W-� ž� 6� �:-� Ŷ �� ˶ �� �˶ �� �� �W�   5   >   7 9 : ; = "? 1@ ?C GE OF TG ]I lJ zM �O6   R  T .ij    �78     � 3 4    �k    }lm   wno   rpj  " aqr 9       �7:     � 32 I   ' � ?   l � � � � �  � : �� <   	 3  k  1   s t 4   >     �   5      V6       78  9       7:  Y    Z   u 4   >     �   5      ^6       78  9       7:  Y    Z   vw 4   a     � �Y�SYSY�SY�S� հ   5      c6       78     x 
 9       7:  <   x  Y    Z   y 4   \     *� � � � �� � �   5      q6       78  9       7:  I    @Y    Z   z{ 4  �     ~*� � � � �L+� �+� �M� N-� t�N-� t�,� � �,� �N*-� �:,� � ,� �:� 	,� �:� �-*� 1� � *� #� -� �Y*� �� � �     �   " � 5   f   y { | � � � �  � "� #� '� )� 0� 2� 7� <� ?� F� O� U� Z� \� f� m� {�6   R   T 4   U|  # U}    ~78    q~*  ) UT 4  7 G�  ? ?�� 9       ~7:    q~� I   # 	�  �G �F ��  l�  � �Y    Z   	 � � 4   	   λY�M�Y�N�Y�:+� :�66��2�	� ��2�� �2�:		�� 	���� �S�Y*	�	�	�	�!	�$	�'�*:

	�-�0
	�1�4
	�7�:	�=:�A �  �F � �:
	�I�J���
:� }2:	�KY*	�		�M	�N�O:

	�R�S
	�T�U
	�V�W
	�X�[	�^:�A �  �F � �:
	�_�`���
:2��_:		� ͙ �	�a2�d� �g W� )2�m� -�g W�p� ,�g W���j� �Y,-�s�   5   � /  � � � � !� &� 0� ;� >� I� S� i� l� s� �� �� �� �� �� �� �� �� �� �� �� �� �����%�/�@�L�Z�]�amu~�
�������6   �  � �/  � 'U�  S ��� 	 � P�� 
 � �� L �/ 6 'U�  � s�� 	 Z�� 
a [�� m O� 4 	 )��`   � 3 4    �k   � ��  � ��  ���  !���  &��` 9      � ��  � ��  ��� I   � � )  l �hhh�  � - � LB� &� � N  l �hhh� 
KB  � &�  	 l �hhh�b  �  l� � <   	 3  k    7 8 4  Z    �*v�x*�{*� 1�~M,����� *,��� ,��M,���lM���*,��� *��**� ��*� � � N-��:-����� 	*��*� �� :�6:6� 42��:� ������ ����� � 	����� s*� 1� `� f:	*��Y*��� &	� lY*� &	��S� nW*2��� #� 2:		��Y��ö���̶�,�ζŶϸ�W	��**� 1*� ��*� � � ��:		�A � &	�F � �:
*
*� � � 
� ��ާ��� *� 1��:		� *��	��  � � r 5   � -  " $ * , &- +/ /0 54 =7 A8 I: S; Y= e> kB vD {E ~G �H �J �K �L �N �G �R �T �U �V �W �bX]`']+a0e<gTh`itjwl{m�o�p�s6   �  � 0T 4 	 -UV 	` �/ 
J -U� 	� �� 	  �78    �� 
  ~*  S@�r  Y:�/  v��  ��`  {�`  ~�  9      �7:   ~� I   A �  � � 5 � ��  	  � � �� a  1� G r.� B� ,;     9<   �   �� 4  F     Y+��M,.��>,`��M��:6�� 6��Y��2��.��,����Ŷ�:��W�:�����  G N O 5   .   z { | ~ � $� G� M� O� Q� W�6   H  G 
]/   ;�`    Y78     Y~*   T�/   M�`   @�� 9       Y7:     Y~� I   5 �    � ��  � 2   � �� � � <   ~  1   � � } 4      D*� 1�~L+����� +��L+���lL���*+� ݶ� *� �ͥ �
Y��� 1M*+� ݶ� *� �ͥ �
Y��� 
N*� �� M,� t*� �*� *� 1� l� n� �M� FM,��Y����+�ζ���*� ���Ŷϸ�W�θ�,� *� �*+$� �Y�S��  *�  ��%� �
Y��� 6M*++� �Y�S��  *�  ��%� �
Y��� 	N*�  � M,� t�  ! D G
 H k n
 ! t x � � � r �
	25
 �;> 5   � /  � � � � � !� 0� <� D� G� H� W� c� k� n� o� t� u� x� y� }� �� �� �� �� �� �� �� �� �� �� �� �� �� ����	��*�2�5�6�;�>�?�C�6   \ 	 o ��  H -U�  y 
��  � BUV 6 �� 	 2U� ? ��   D78   <~* 9      D7:   <~� I   > �  �"B
� #
B
� B
U r� B(B
� )
B
� B    4   �     :*� � '*� *� 1� l� n� �L+� +� ,�L+��*� � � L+���   % & r 5      � � � &� '� +� 5�6   *   �/  ' �V    :78   5 �r 9       :7:  I    � " �B ��      r  � 0 4   P     *+� ~�   5   
   � �6       78     �/ 9       7:  <   �   �� 4   w     � �Y�S� �L+�� 	+2� �   5   
    6       78    �� 9       7:  I    � �@�Y    Z  �� 4   /     *� �   5       I6       �8  �� 4   /     *� �   5       I6       �8  �� 4   /     *� �   5       I6       �8   1   ��   ��   : � �  � �  � �� b��	 �      K�� 	���	