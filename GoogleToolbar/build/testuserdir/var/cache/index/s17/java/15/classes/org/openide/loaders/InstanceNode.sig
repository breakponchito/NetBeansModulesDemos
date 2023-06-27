����   4�
       org/openide/loaders/InstanceNode firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
   	 
 convertProps j(Lorg/openide/nodes/Sheet$Set;[Lorg/openide/nodes/Node$Property;Lorg/openide/loaders/InstanceDataObject;)V
     setSheet (Lorg/openide/nodes/Sheet;)V	     isSheetCreated Z
     fireShortDescriptionChange '(Ljava/lang/String;Ljava/lang/String;)V
     fireDisplayNameChange
     fireNameChange
      fireIconChange ()V
  " #   initIconBase
  % & ' ic )()Lorg/openide/cookies/InstanceCookie$Of;	  ) *  
noBeanInfo	  , - . propertyChangeListener (Lorg/openide/loaders/InstanceNode$PropL;	 0 1 2 3 4 java/lang/Boolean FALSE Ljava/lang/Boolean;
 6 7 8 9 : &org/openide/loaders/InstanceDataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject; < beaninfo
 > ? @ A B "org/openide/filesystems/FileObject getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
 0 D E F equals (Ljava/lang/Object;)Z
  H I J <init> ,(Lorg/openide/loaders/InstanceDataObject;Z)V
  L M N getChildren ?(Lorg/openide/loaders/DataObject;Z)Lorg/openide/nodes/Children;
 P Q R I S org/openide/loaders/DataNode ?(Lorg/openide/loaders/DataObject;Lorg/openide/nodes/Children;)V
  U V W getDataObject "()Lorg/openide/loaders/DataObject;
 Y 7 Z org/openide/loaders/DataObject \ settings
 > ^ _ ` hasExt (Ljava/lang/String;)Z
 b c d e f javax/swing/SwingUtilities invokeLater (Ljava/lang/Runnable;)V h "org/openide/loaders/InstanceNode$1
 g j I k %(Lorg/openide/loaders/InstanceNode;)V	  m n o dobjListener #Ljava/beans/PropertyChangeListener;
 q r s t u org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;
 6 w x y addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V { &org/openide/loaders/instanceObject.gif } &org/openide/loaders/instanceBroken.gif
   � � setIconBaseWithExtension (Ljava/lang/String;)V	 � � � � � org/openide/nodes/Children LEAF Lorg/openide/nodes/Children; � "org/openide/cookies/InstanceCookie
 Y � � � 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; � � � � instanceClass ()Ljava/lang/Class; � "java/beans/beancontext/BeanContext
 � � � � � java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z � 'java/beans/beancontext/BeanContextProxy � 1org/openide/loaders/InstanceNode$InstanceChildren
 � � I � +(Lorg/openide/loaders/InstanceDataObject;)V � java/lang/Exception � %org/openide/cookies/InstanceCookie$Of
 P � � � getIcon (I)Ljava/awt/Image;
 > � � � getFileSystem &()Lorg/openide/filesystems/FileSystem;
 � � � � � #org/openide/filesystems/FileUIUtils getImageDecorator N(Lorg/openide/filesystems/FileSystem;)Lorg/openide/filesystems/ImageDecorator;
 Y � � � files ()Ljava/util/Set; � � � � � &org/openide/filesystems/ImageDecorator annotateIcon 2(Ljava/awt/Image;ILjava/util/Set;)Ljava/awt/Image; � 1org/openide/filesystems/FileStateInvalidException
  � � � initIcon
  �
 � � � � � org/openide/util/Utilities getBeanInfo ((Ljava/lang/Class;)Ljava/beans/BeanInfo; � � � � � java/beans/BeanInfo getEventSetDescriptors "()[Ljava/beans/EventSetDescriptor;
 � � � � � java/beans/EventSetDescriptor getAddListenerMethod ()Ljava/lang/reflect/Method;
 � � � � � java/lang/reflect/Method getName ()Ljava/lang/String; x
 � D � java/lang/String � � � � instanceCreate ()Ljava/lang/Object; � &org/openide/loaders/InstanceNode$PropL
 � j � java/lang/Object
 � � � � invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � java/lang/LinkageError	  � �  
brokenIcon
 � � � javax.swing.JSeparator � javax.swing.JToolBar$Separator
 � � � � forName %(Ljava/lang/String;)Ljava/lang/Class; � �
  � � � toBufferedImage #(Ljava/awt/Image;Z)Ljava/awt/Image;  javax/swing/Action 	SmallIcon � B getValue javax/swing/Icon
	
 org/openide/util/ImageUtilities 
icon2Image $(Ljavax/swing/Icon;)Ljava/awt/Image; iconBase
	 	loadImage %(Ljava/lang/String;Z)Ljava/awt/Image; org/openide/loaders/empty.gif
 java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 ! java/util/logging/Level WARNING Ljava/util/logging/Level;
#$% log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V	'(! INFO* ic = {0}
,$- @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V/ LBL_separator_instance
12345 org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 78 � setDisplayName: Name	 Y<=> LOG Ljava/util/logging/Logger;@ java/lang/StringBuilder
?B I  D pPlease attach following information to the issue <http://www.netbeans.org/issues/show_bug.cgi?id=31227>: action 
?FGH append -(Ljava/lang/String;)Ljava/lang/StringBuilder;J ^ does not implement SystemAction.getName() or Action.getValue(NAME) properly. It returns null!
?LM � toString
OP � warning
 �RST indexOf (I)I
 �VWX 	substring (II)Ljava/lang/String;
 �ZW[ (I)Ljava/lang/String;] ...
 �_` ` endsWith
 �bcd length ()I
 �fg � trim
 Y �j LBL_BrokenSettings �m [Ljava/lang/Class;
 �opq 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
 �st � getReturnTypev java/lang/NoSuchMethodException
uBy getDisplayName{ setName8
 P~{ �
 �� � getNameImpl
 �� � getDeclaredSetter
 ��� i *()Lorg/openide/loaders/InstanceDataObject;
 6��   scheduleSave
 ���   printStackTrace� name� 
����� "org/openide/filesystems/FileSystem getDecorator +()Lorg/openide/filesystems/StatusDecorator;����� 'org/openide/filesystems/StatusDecorator annotateName 5(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
 ��S� (Ljava/lang/String;)I
 �� � getNameForBean
 P�y �
  �� ser� org/openide/nodes/Sheet
�B
 ��  changeSheet
 P��� createSheet ()Lorg/openide/nodes/Sheet;� 
properties
���� get 1(Ljava/lang/String;)Lorg/openide/nodes/Sheet$Set;� "org/openide/loaders/InstanceNode$2� 	className� PROP_instance_class� HINT_instance_class
�� I� �(Lorg/openide/loaders/InstanceNode;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/openide/cookies/InstanceCookie;)V
����� org/openide/nodes/Sheet$Set put D(Lorg/openide/nodes/Node$Property;)Lorg/openide/nodes/Node$Property;
����� org/openide/nodes/BeanNode computeProperties P(Ljava/lang/Object;Ljava/beans/BeanInfo;)Lorg/openide/nodes/BeanNode$Descriptor;
 ��   	initPList
���� createPropertiesSet ()Lorg/openide/nodes/Sheet$Set;	����� %org/openide/nodes/BeanNode$Descriptor property "[Lorg/openide/nodes/Node$Property;
���� <(Lorg/openide/nodes/Sheet$Set;)Lorg/openide/nodes/Sheet$Set;	���� expert
���� createExpertSet�  java/lang/ClassNotFoundException� java/io/IOException� !java/beans/IntrospectionException� &org/openide/nodes/Node$IndexedProperty� "org/openide/loaders/InstanceNode$I
�� I� S(Lorg/openide/nodes/Node$IndexedProperty;Lorg/openide/loaders/InstanceDataObject;)V� "org/openide/loaders/InstanceNode$P
�� I� L(Lorg/openide/nodes/Node$Property;Lorg/openide/loaders/InstanceDataObject;)V� javax/swing/ImageIcon
�� I� (Ljava/awt/Image;)V
 �  createBufferedImage  ()Ljava/awt/image/BufferedImage;
 java/awt/image/BufferedImage createGraphics ()Ljava/awt/Graphics2D;
	
 java/awt/Graphics 	drawImage 3(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
	   dispose
   java/awt/Image flush
 java/awt/GraphicsEnvironment getLocalGraphicsEnvironment  ()Ljava/awt/GraphicsEnvironment;
 getDefaultScreenDevice ()Ljava/awt/GraphicsDevice;
!"#$% java/awt/GraphicsDevice getDefaultConfiguration "()Ljava/awt/GraphicsConfiguration;' java/awt/Transparency
)*+,- java/awt/GraphicsConfiguration getColorModel (I)Ljava/awt/image/ColorModel;
/0123 java/awt/image/ColorModel createCompatibleWritableRaster #(II)Ljava/awt/image/WritableRaster;
/567 isAlphaPremultiplied ()Z
9 I: S(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V
 P<=7 	canRename
 P?@7 
canDestroyB "org/openide/util/SharedClassObject
 PDE7 canCut
 PGH7 canCopy
 PJK � getShortDescription
 >L �NOP getBeanDescriptor ()Ljava/beans/BeanDescriptor;
RJS java/beans/BeanDescriptor
R �
 �W java/lang/Runnable INSTANCE_ICON_BASE Ljava/lang/String; ConstantValue XML_EXT Code LineNumberTable LocalVariableTable this "Lorg/openide/loaders/InstanceNode; obj (Lorg/openide/loaders/InstanceDataObject; MethodParameters StackMapTable 'Lorg/openide/cookies/InstanceCookie$Of; clazz Ljava/lang/Class; ex Ljava/lang/Exception; dobj  Lorg/openide/loaders/DataObject; inst $Lorg/openide/cookies/InstanceCookie; LocalVariableTypeTable Ljava/lang/Class<*>; type I img Ljava/awt/Image; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getOpenedIcon bean Ljava/lang/Object; info Ljava/beans/BeanInfo; descs  [Ljava/beans/EventSetDescriptor; setter Ljava/lang/reflect/Method;| clazzTmp bi base action Ljavax/swing/Action; icon Ljavax/swing/Icon; e Ljava/lang/LinkageError; beanInfoIcon run amper 
nameGetter ee !Ljava/lang/NoSuchMethodException; 
nameSetter old def fsStatus )Lorg/openide/filesystems/StatusDecorator; orig Lorg/openide/nodes/Sheet; props Lorg/openide/nodes/Sheet$Set; p beanInfo descr 'Lorg/openide/nodes/BeanNode$Descriptor; "Ljava/lang/ClassNotFoundException; Ljava/io/IOException; #Ljava/beans/IntrospectionException; set arr ido load rep Ljava/awt/image/BufferedImage; g Ljava/awt/Graphics; model Ljava/awt/image/ColorModel; 	buffImage bd Ljava/beans/BeanDescriptor; desc getPreferredAction ()Ljavax/swing/Action; 
access$000 L(Lorg/openide/loaders/InstanceNode;)Lorg/openide/loaders/InstanceNode$PropL; x0 
access$002 t(Lorg/openide/loaders/InstanceNode;Lorg/openide/loaders/InstanceNode$PropL;)Lorg/openide/loaders/InstanceNode$PropL; x1 
access$100 %(Lorg/openide/loaders/InstanceNode;)Z 
access$200 K(Lorg/openide/loaders/InstanceNode;)Lorg/openide/cookies/InstanceCookie$Of; 
access$300 
access$400 
access$500 I(Lorg/openide/loaders/InstanceNode;Ljava/lang/String;Ljava/lang/String;)V x2 
access$600 
access$700 
access$800 
access$900 >(Lorg/openide/loaders/InstanceNode;Lorg/openide/nodes/Sheet;)V access$1100 access$1200 [(Lorg/openide/loaders/InstanceNode;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V x3 
SourceFile InstanceNode.java InnerClasses Set� org/openide/nodes/Node$Property� org/openide/nodes/Node Property Of PropL� org/openide/nodes/Node$Cookie Cookie InstanceChildren 
Descriptor IndexedProperty P� 0org/openide/loaders/InstanceNode$BeanContextNode BeanContextNode� 0org/openide/loaders/InstanceNode$BeanFactoryImpl BeanFactoryImpl 0  P V  XY Z    z [Y Z    [  - .    n o         *     �    (  I � \   M     *+� /+� 5;� =� C� G�   ]   
    =  >^       _`     ab c   a    I J \   �     R*++� K� O*� +*� *� (*� !*� (� *� T� X[� ]� *� a*� gY*� i� l+*� l+� p� v�   ]   .    D 
 3  5  9  F  H " J 5 K 9 O E d Q e^        R_`     Rab    R *  d    � 9   6  c   	a   *    #   \   x     *� $LzM+� |M*,� ~�   ]       i  j  k  l  n  o^        _`     &e   Y d    �  � � 
 M N \       H� � ��*�� �� �M,� � ��,� � N�-� �� �-� �� � �Y*� 6� ��� ��N� ��   > C � ? B C � ]   2    r  s  u  v  w  z ! { - | 3 } ?  C � D �^   4  ! "fg  D hi    Hjk     H *    6lm n     ! "fo d   ! �  ��  ��   Y �  �c   	j   *   �� \   2     *� T� 6�   ]       �^       _`    & ' \   7     *� T�� �� ��   ]       �^       _`    � � \   �     D*� (� 	*� ��M*� TN-� X� �� �,-� �� � M� N,� 	*� �M,� 	*� �M,�   * - � ]   6    �  �  �  �  � ! � * � - � . � 2 � 8 � < � B �^   *   jk    D_`     Dpq   5rs d    �     � 		c   p  t    u   v � \   :     *� °   ]       �^       _`     pq c   p  t    u   �   \  �     �*� $L+� �+� � � �M,� � N:6-� W-�� P-2� �:� <� �۶ ܙ /+� � :*� �Y*� � +� �Y*� +� pS� �W����� L� L�    	 | � 
 y | �   	 � � 
 y � � ]   J    �  � 	 � 
 �  �  �  � , � 5 � G � O � [ � s � y � | � } � � � � �^   H  O $wx  ! X�q   t &m   eyz   ^{|   [}~    �_`  d   5 � 
 ��    � � �  � Q�     B �C �   � � \  �  
  &*� � �MN*� $N-� �-� � :� �:� ܚ �� ܙ � �:� �:� 
� �:� � � M,� 	,� �M,� ^�� �� T-� � � �:� �:� �M� ,� :		� ݙ 	� ��M� �M� Z:� ���"� ��&)-�+*� � -:� ���"� ��&)-�+*� �,�    � �  � � �   � �  � � � ]   � (   �  � 	 �  �  �  �  �  �   � ' � + � 5 � ; � B � I � L � S � X � a � e � k � y � � � � � � � � � � � � � � � � � � � � � � �$^   �  B �g  I �z  � �x 	 � F��  � 7��    �fg  ' ��Y  S w�z  � (�i  � (��   &_`    &pq  �s   &m n     B �o    �fo d   F 	�  �� " � ��  �� 5 ��   ��    �  B �l �)c   p   �   \  Y    *� $L+� �+� � M,� �N-� ܚ -�� ܙ *6.�0�6��,� �� �+� � � �:� 9� � ݧ :� )�;�?Y�AC�E-�EI�E�K�N*-�6�&�Q6� &�?Y�A�U�E`�Y�E�K:\�^� �ad�U:�e:*�6��  L� ��+�"**� T�h�6��    	 � � 
 4 � � 5 � � � � � � � ]   z     	 
   " (! 4# 5& >' I) a- f. �2 �3 �6 �7 �8 �: �; �= �> �? �E �A �B �CDF^   R  I ���  a ��Y  � Q�q   � &m   �fg   ��Y  � �i   _`  n      �fo d   6 � 
 ��  � �� ( �@ �� , �� 1�     B � � � \  �     x*� $L+� i�0�+� � M,k�l�nN-�rݥ �uY�w�� ):,x�l�nN-�rݥ �uY�w�� :�+� � :-� � �� ݰL�   6 9u ; X [u    u �  ^ u � _ t u � ]   N   L M 	O R U %V .W 6b 9Y ;[ G\ P] Xa [_ ]` _c gd ue vf^   f 
 % �~  G �~  ] ��  ; $��   p &m   \fg  _ �~  g wx  v hi    x_`  n      \fo d   d �  �� # � ��    � � u�  �u�    � � u u�    � � �  �     � � � \       AL*� $M,� �,� � N-z� �Y�S�nL� :-|� �Y�S�nL� M+�   % (u   > �  ; > � ]   2   l n o p r u %x (v *w ;z >y ?{^   4  * ��   4 &m   'fg    A_`    ?�~ n      'fo d   ) �  � ��    � � � u� B �  { � \  Y     p*� T� X[� ]� 	*+�}�*�M,� ,+� ܙ �*� $N-� 	*+�}�*��:� ,-� � :� �Y+S� �W*����� 
:��*+�}�  A ` c � ]   R   � � � � � &� '� ,� 0� 5� 6� <� A� I� Y� `� c� e� j� o�^   H  I wx  e hi    p_`     p�Y   V�Y  , D &m  < 4�~ d   ) �  ��  �� ,   � � � �  �c   �  t    u   y � \       f*� T� X�� =� �L+� R�M*� T� X� ���N-,*� T� ��� L+,��� +�*��L+� -+*� T� ��� L� *��L� M+�   ? c � @ ` c � ]   B   � 
� � � �  � '� 6� >� @� E� I� [� `� c� d�^   *   G�Y  ' 9��    f_`    U�Y d    � @ � ��� B � t    u   � � \   ^     *��L+� *��L+�   ]      � � 	� �^       _`    �Y d    �  � �� \   	    o*� T� X�� ]� *� T� X[� ]� ��Y��L*+��� <*��L+���M*� $N-� &,��Y*��6��06��0-�¶�W*� +�   ]   :   � � � '� /� 4� <� A� E� U� ]� d� h� m�^   4  ' ��  < ,��  A ' &m    o_`   4 ;�� d   
 � 8�t    u   �  \  1     �+���M*� $N-� �-� � � �:-� � ��:*�Ѹ�M��� ,��*��� +,��W��� &�ᾙ ��:��*��� +��W� PN� ��-�"� <N� ��-�"� (N� ��-�"� N� ��-�"�    {�  x {�   ��  x ��   ��  x ��   � �  x � � ]   r   � � � � � � *� .� 2� :� G� M� ^� c� q� x {� |� � �� �� � �  � � � � �^   p  c ��   k &m   [�z  * N��  | h�  � h�  � h�  � h�    �_`     ���   ��� d   ( � � �� 4 ��� 0B�S�S�S �c   �    	 
 \   �     >>+�� 8+2�� *��Y+2��,���W� *��Y+2,����W���ȱ   ]         ' 7 =^   *   ;�q    >��     >��    >�b d    � $� c   �  �  �    � � \   �     )� ��Y*��W��M,�N-*�W-�*�,�   ]   "      # $ % & #' '(^   *    )rs     )�    ��   �� d    c   	r  �     \   j     &��� �(K�Y**�.*�4�8L+�   ]      - . / 0 $1^      ��   $ ��  =7 \   _     !*� T� X[� ]� *�;�*��� � �   ]      9 : <^       !_`  d    
@t    u   @7 \   �     9*� T� X[� ]� *�>�*� $L+� �+� � MA,� �� � �L�    6 �  5 6 � ]   & 	  D E H I J L &M 6N 7O^   *    &m  & fg  7 hi    9_`  n     & fo d    � 
 ��  �@�      �t    u   E7 \   �     9*� T� X[� ]� *�C�*� $L+� �+� � MA,� �� � �L�    6 �  5 6 � ]   & 	  U V Y Z [ ] &^ 6_ 7`^   *    &m  & fg  7 hi    9_`  n     & fo d    � 
 ��  �@�      �t    u   H7 \   �     9*� T� X[� ]� *�F�*� $L+� �+� � MA,� �� � �L�    6 �  5 6 � ]   & 	  f g j k l n &q 6r 7s^   *    &m  & fg  7 hi    9_`  n     & fo d    � 
 ��  �@�      �t    u   K � \  Q     Y*� (� *�I�*� $L+� *� T� X�L�+� � M,� ùM N-�Q:-�T� ܙ 
*�U� �L*�I�L*�I�    M �   L M �   S �   L S � ]   6   z {  � �  � '� 1� 7� M� N� S� T�^   H   < &m  ' &fg  1 ��  7 �Y  N hi  T h�    Y_`  n     ' &fo d   * �  �� ) �R �A ��      �E �t    u   �� \   ,     �   ]      �^       _`  t    u  �� \   /     *� +�   ]       )^       �`  �� \   ;     *+Z� +�   ]       )^       �`     � . �� \   /     *� (�   ]       )^       �`  �� \   /     *� $�   ]       )^       �`  � k \   /     *� !�   ]       )^       �`  � k \   /     *� �   ]       )^       �`  �� \   E     *+,� �   ]       )^        �`     �Y    �Y �� \   E     *+,� �   ]       )^        �`     �Y    �Y �� \   E     *+,� �   ]       )^        �`     �Y    �Y �� \   /     *� �   ]       )^       �`  �� \   :     *+� �   ]       )^       �`     �� � 
 \   E     *+,� �   ]       )^        ��     ��    �b �� \   P     *+,-� �   ]       )^   *    �`     �Y    �x    �x  �   ��   r ��� ���	 � ��	 � �  g      ���	 � � �      ��� ���	� q � � � � 
� � 
