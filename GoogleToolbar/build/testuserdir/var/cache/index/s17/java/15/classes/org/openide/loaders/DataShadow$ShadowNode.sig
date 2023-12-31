����   4�	      )org/openide/loaders/DataShadow$ShadowNode sheet Lorg/openide/nodes/Sheet;	   	 
 obj  Lorg/openide/loaders/DataShadow;
     originalChanged ()V
      org/openide/loaders/DataShadow 
access$300 B(Lorg/openide/loaders/DataShadow;)Lorg/openide/loaders/DataObject;
      org/openide/loaders/DataObject getNodeDelegate ()Lorg/openide/nodes/Node;
     <init> ;(Lorg/openide/loaders/DataShadow;Lorg/openide/nodes/Node;)V
   ! "  # org/openide/nodes/FilterNode (Lorg/openide/nodes/Node;)V
  % & ' 
access$500 8(Lorg/openide/loaders/DataShadow;)Ljava/util/LinkedList;
 ) * + , - java/util/LinkedList add (Ljava/lang/Object;)Z
  /  0 #(Lorg/openide/loaders/DataShadow;)V
  2 3 4 getName ()Ljava/lang/String;
 6 7 8 9 - java/lang/String equals
  ; < = rename (Ljava/lang/String;)V
  ? @ A getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 C D E F G "org/openide/filesystems/FileObject isRoot ()Z
  ? J 
UseOwnName	 L M N O P java/lang/Boolean TRUE Ljava/lang/Boolean;
 C R S T setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V
  V W X fireDisplayNameChange '(Ljava/lang/String;Ljava/lang/String;)V
  Z [ X fireNameChange ] java/io/IOException _ "java/lang/IllegalArgumentException
 \ a b 4 
getMessage
 ^ d  =	  f g h format Ljava/text/MessageFormat; j java/text/MessageFormat
 l m n o p org/openide/util/NbBundle 	getBundle -(Ljava/lang/Class;)Ljava/util/ResourceBundle; r FMT_shadowName
 t u v w x java/util/ResourceBundle 	getString &(Ljava/lang/String;)Ljava/lang/String;
 i d
  { | } createArguments ()[Ljava/lang/Object;
 i  g � &(Ljava/lang/Object;)Ljava/lang/String;
 C � � � getFileSystem &()Lorg/openide/filesystems/FileSystem;
 � � � � � "org/openide/filesystems/FileSystem getDecorator +()Lorg/openide/filesystems/StatusDecorator;
  � � � files ()Ljava/util/Set; � � � � � 'org/openide/filesystems/StatusDecorator annotateName 5(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String; � 1org/openide/filesystems/FileStateInvalidException
 � � � � x org/openide/xml/XMLUtil toElementContent � � � � annotateNameHtml
  � � G isValid
 � � � � 4 org/openide/nodes/Node getDisplayName �  
 C � � � getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
 L � � G booleanValue
 � � � java/lang/Object
   �
  � � � systemNameOrFileName 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String;
 � � � � �  org/openide/filesystems/FileUtil getFileDisplayName	  � � h descriptionFormat � FMT_shadowHint
  � � � rootIcon (I)Ljava/awt/Image;
   � � � getIcon
   � � � getOpenedIcon
 � � � � getClass ()Ljava/lang/Class;
 � � � � � java/beans/Introspector getBeanInfo ((Ljava/lang/Class;)Ljava/beans/BeanInfo; � � � java/beans/BeanInfo
 � � � � � #org/openide/filesystems/FileUIUtils getImageDecorator N(Lorg/openide/filesystems/FileSystem;)Lorg/openide/filesystems/ImageDecorator;
  � � � � � � &org/openide/filesystems/ImageDecorator annotateIcon 2(Ljava/awt/Image;ILjava/util/Set;)Ljava/awt/Image; � !java/beans/IntrospectionException
 � 2 � java/lang/Class
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level;
 � � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  � � G isDeleteAllowed
 ) �  - remove
   delete
  G isRenameAllowed
 	 G isCopyAllowed
  G isMoveAllowed
  	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
  
  
cloneSheet ()Lorg/openide/nodes/Sheet;
 org/openide/nodes/Sheet toArray '()[Lorg/openide/nodes/Node$PropertySet;
   clipboardCopy &()Ljava/awt/datatransfer/Transferable;
!"#$% ,org/openide/util/datatransfer/ExTransferable create T(Ljava/awt/datatransfer/Transferable;)Lorg/openide/util/datatransfer/ExTransferable;' "org/openide/loaders/LoaderTransfer
&)*+ transferable X(Lorg/openide/loaders/DataObject;I)Lorg/openide/util/datatransfer/ExTransferable$Single;
!-./ put 8(Lorg/openide/util/datatransfer/ExTransferable$Single;)V
  12 clipboardCut
 5 /org/openide/loaders/DataShadow$ShadowNode$PropL
47 8 .(Lorg/openide/loaders/DataShadow$ShadowNode;)V
 �:;< hashCode ()I
 >?  getOriginal
 �AB getPropertySets
D  F org/openide/nodes/Sheet$Set
ED
IJKLM "org/openide/nodes/Node$PropertySet getProperties $()[Lorg/openide/nodes/Node$Property;
EO.P %([Lorg/openide/nodes/Node$Property;)V
I 2
EST = setName
I �
EWX = setDisplayName
IZ[ 4 getShortDescription
E]^ = setShortDescription
 `ab modifySheetSet  (Lorg/openide/nodes/Sheet$Set;)V
d.e <(Lorg/openide/nodes/Sheet$Set;)Lorg/openide/nodes/Sheet$Set;g name
Ei j 5(Ljava/lang/String;)Lorg/openide/nodes/Node$Property;l &org/openide/nodes/PropertySupport$Name
k !
Eo.p D(Lorg/openide/nodes/Node$Property;)Lorg/openide/nodes/Node$Property;r .org/openide/loaders/DataShadow$ShadowNode$Name
q7
 uvw changeOriginal (Lorg/openide/nodes/Node;Z)V
 yz 0 
access$400 ATTR_USEOWNNAME Ljava/lang/String; ConstantValue Code LineNumberTable LocalVariableTable this +Lorg/openide/loaders/DataShadow$ShadowNode; shadow MethodParameters node Lorg/openide/nodes/Node; StackMapTable� java/lang/Throwable 	cloneNode sn ex Ljava/io/IOException; fsie 3Lorg/openide/filesystems/FileStateInvalidException; n getHtmlDisplayName d )Lorg/openide/filesystems/StatusDecorator; r origDisp 
shadowName 
useOwnName fo $Lorg/openide/filesystems/FileObject; type I i Ljava/awt/Image;� java/awt/Image ie #Ljava/beans/IntrospectionException; fs $Lorg/openide/filesystems/FileSystem; orig 
canDestroy destroy 
Exceptions 	canRename canCopy canCut cl Ljava/lang/Class; c Lorg/openide/nodes/Node$Cookie; LocalVariableTypeTable Ljava/lang/Class<TT;>; TT;� org/openide/nodes/Node$Cookie 	Signature ?<T::Lorg/openide/nodes/Node$Cookie;>(Ljava/lang/Class<TT;>;)TT; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; s t .Lorg/openide/util/datatransfer/ExTransferable; drag createNodeListener "()Lorg/openide/nodes/NodeListener; o Ljava/lang/Object; ss Lorg/openide/nodes/Sheet$Set; sets %[Lorg/openide/nodes/Node$PropertySet;� p !Lorg/openide/nodes/Node$Property;� org/openide/nodes/Node$Property ori  Lorg/openide/loaders/DataObject; 
access$100 x0 
access$600 M(Lorg/openide/loaders/DataShadow$ShadowNode;)Lorg/openide/loaders/DataShadow; 
access$802 _(Lorg/openide/loaders/DataShadow$ShadowNode;Lorg/openide/nodes/Sheet;)Lorg/openide/nodes/Sheet; x1 
SourceFile DataShadow.java InnerClasses 
ShadowNode Cookie PropertySet� 3org/openide/util/datatransfer/ExTransferable$Single Single PropL Set Property� !org/openide/nodes/PropertySupport Name !       
 g h   
 � h   {| }    I  	 
            0 ~   E     *++� � � �      
    �       ��     � 
 �   �      ~   �     -*,� *+� *� � $YN�*� � $*� (W-ç 
:-���   " %   % ) %           
    ,�        -��     -� 
    -�� �    � %    � � �� �   	�  �   �  ~   F     � Y*� � .L+�      
   $ %�       ��    ��  T = ~   �     R+*� � 1� 5� 6*� +� :*� � � >� B� *� � HI� K� Q*� U*� Y� M� ^Y,� `� c��    A D \    * 
  . / 0 &1 53 ;4 A8 D6 E7 Q9�      E ��    R��     Rg| �   	 5B \�   g    3 4 ~   2     *� � 1�         ?�       ��    � 4 ~   �     C� e� � iY� kq� s� y� e� e*� z� ~L*� � H� �� �+*� � �� � �M+�  % ? @ �       E F H %J @K AM�      A ��    C��   % �| �    � %   6  � � 4 ~   �     Q� e� � iY� kq� s� y� e� e*� z� ~� �L*� � H� �� �M,+*� � �� � N-� -�� L�   J N \    * 
  Q R U (V 6W EX IY K] N[ O^�   *  ( #�|  6 ��  E �|    Q��  �   	 0B \   | } ~  W     �*� � 1M*� � � �� *� � � � �L� �L*� � HI� �� LN*� � � >� B� $-� 
-� �� *� � � >� �� �M� :� �Y,SY*� �SY*� � H� �SY*� � � >� �SY+S�  T e h �    >   d e f &i )k 9l Nm To er hp jt uv w �x �t�   4  # �|    ���   ) r�|   ��|  9 b� P �   $ � &  6�    6 6  � * LS � 
 � � ~   /     *� ��         ��       ��  �   �   [ 4 ~   d     %� �� � iY� k�� s� y� �� �*� z� ~�         � � � ��       %��  �      � � ~   j     *� �M,� ,�*� ư         � � 
� ��        ��     ��   �� �    � ��   �    � � ~   j     *� �M,� ,�*� ɰ         � � 
� ��        ��     ��   �� �    � ��   �    � � ~       ^*� � � >M,� B� M,� �N-� ̸ �� � :� -� �*� � � ߹ � �� :� � � �� �� N�   A E �  A [ � B X [ �    2   � � � � &� +� B� E� G� X� [� \��   >  & ��  G ��   A��    ^��     ^��   S�� �    � B C �B �� B � �   �   � G ~   2     *� � ��         ��       ��   �  ~   �     (*� � $YL�*� � $*� �W+ç M+�,�*� ��  
                � 
� �  � '��       (��  �    �    � �� �     \ � G ~   2     *� ��         ��       ��   � G ~   2     *� ��         ��       ��   � G ~   2     *� �
�         ��       ��    ~   �     *� +�M,� ,�*+��         � 	� � ��        ��     ��  	 �� �       ��  	 �� �    � ��   �  �   ��    �   B ~   f     *� L+� **�Z� L+��         � � 	� ��       ��    �  �    �   ~   R     *�� L+*� �(�,+�         � �  �       ��    �� �     \ 2 ~   R     *�0� L+*� �(�,+�         
  �       ��    �� �     \ � ~   /     *�3�         �       ��  �     \ �� ~   3     	�4Y*�6�         $�       	��    9 - ~   |     +� � +� M,� *� � � ��         * + , .�       ��    ��     �� �    �  @�  �   �   ;< ~   2     *� �9�         4�       ��    ~   �     b*�=�@L�Y�CM>+�� K�EY�G:+2�H�N+2�Q�R+2�U�V+2�Y�\*�_,�cW����,�      2   ; = > ? !@ ,A 7B BC MF SH Z> `K�   4  ! 9��   N��    b��    Z��   R�  �    � �� M ab ~   �     ++f�hM,� !�kY*�mM+,�nW�qY*�sM+,�nW�         R S T U W $X *Z�        +��     +��   #�� �    � *��   �      ~   v     #*� � L+� �� *+� �t� 
*� �x�         ] ^ _ a "c�       #��    �� �   	 �  �8 ~   /     *� �         �       ��  �� ~   /     *� �         �       ��  �� ~   ;     *+Z� �         �       ��     �   �   ��   J 	  � � ��	I ��	�!�	4 � 
E� � ��	k�� q � 