����   4�
      +org/openide/explorer/view/DragDropUtilities invokePostDropRun ()V
  	 
   java/lang/Object <init>
      org/openide/nodes/Node canCut ()Z  java/awt/dnd/DnDConstants
     canCopy@     "java/awt/datatransfer/Transferable
     clipboardCut &()Ljava/awt/datatransfer/Transferable;
      drag " 2org/openide/util/datatransfer/ExTransferable$Multi
 ! $  % (([Ljava/awt/datatransfer/Transferable;)V
 ' ( ) * + 9org/netbeans/modules/openide/explorer/ExternalDragAndDrop maybeAddExternalFileDnd Z(Lorg/openide/util/datatransfer/ExTransferable$Multi;)Ljava/awt/datatransfer/Transferable;
  - . / getClipboard #()Ljava/awt/datatransfer/Clipboard; 1 )org/openide/util/datatransfer/ExClipboard
 0 3 4 5 convert J(Ljava/awt/datatransfer/Transferable;)Ljava/awt/datatransfer/Transferable;
  7 8 9 getNodeTransferable @([Lorg/openide/nodes/Node;I)Ljava/awt/datatransfer/Transferable;	  ; < = postDropRun Ljava/lang/Runnable;
 ? @ A B C javax/swing/SwingUtilities invokeLater (Ljava/lang/Runnable;)V
 E F G H  'org/openide/util/datatransfer/PasteType paste
  J K L getChildren ()Lorg/openide/nodes/Children;
 N O P Q R org/openide/nodes/Children getNodes (Z)[Lorg/openide/nodes/Node;
 T U V W X java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; Z [ \ ] ^ java/util/List iterator ()Ljava/util/Iterator; ` java/util/ArrayList
 _ 	 c d e f  java/util/Iterator hasNext c h i j next ()Ljava/lang/Object; Z l m n contains (Ljava/lang/Object;)Z Z p q n add Z s t u size ()I Z w x y toArray (([Ljava/lang/Object;)[Ljava/lang/Object; { [Lorg/openide/nodes/Node; } $org/openide/util/UserCancelException  java/io/IOException
 � � � � � org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V	 � � � � � ,org/openide/util/datatransfer/ExTransferable multiFlavor "Ljava/awt/datatransfer/DataFlavor;  � � � isDataFlavorSupported %(Ljava/awt/datatransfer/DataFlavor;)Z
  � � � getPasteTypes P(Ljava/awt/datatransfer/Transferable;)[Lorg/openide/util/datatransfer/PasteType; � java/lang/NullPointerException  � � � getTransferData 6(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object; � 1org/openide/util/datatransfer/MultiTransferObject � � � u getCount � � � � getTransferableAt '(I)Ljava/awt/datatransfer/Transferable; � :org/openide/explorer/view/DragDropUtilities$MultiPasteType
 � �  � R([Ljava/awt/datatransfer/Transferable;[Lorg/openide/util/datatransfer/PasteType;)V � 0java/awt/datatransfer/UnsupportedFlavorException
  � � � getDropType Q(Ljava/awt/datatransfer/Transferable;II)Lorg/openide/util/datatransfer/PasteType;
 � � � � � org/openide/DialogDisplayer 
getDefault ()Lorg/openide/DialogDisplayer; � $org/openide/NotifyDescriptor$Message � -org/openide/explorer/view/TreeViewDropSupport � MSG_NoPasteTypes
 � � � � � org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String; � org/openide/NotifyDescriptor
 � �  � (Ljava/lang/Object;I)V
 � � � � notify 2(Lorg/openide/NotifyDescriptor;)Ljava/lang/Object;
 � � � � � org/openide/util/Lookup ()Lorg/openide/util/Lookup; � java/awt/datatransfer/Clipboard
 � � � � lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 � � � � � java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit;
 � � � / getSystemClipboard	  � � � $assertionsDisabled Z � javax/swing/tree/TreeNode � java/lang/AssertionError � java/lang/StringBuilder
 � 	 � Object 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; �  is instanceof TreeNode
 � � � � toString ()Ljava/lang/String;
 � �  � (Ljava/lang/Object;)V
 � � � � � $org/openide/explorer/view/Visualizer findNode ,(Ljava/lang/Object;)Lorg/openide/nodes/Node; java/lang/ClassCastException
  �  javax/swing/JPopupMenu
 	
 s	 java/util/TreeSet javax/swing/JMenuItem -org/openide/explorer/view/DragDropUtilities$1
  .(Ljava/util/TreeSet;[Ljavax/swing/JMenuItem;)V
 [

 	
 E � getName
 org/openide/awt/Mnemonics setLocalizedText 1(Ljavax/swing/AbstractButton;Ljava/lang/String;)V

 addActionListener "(Ljava/awt/event/ActionListener;)V
! q" 0(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;
$%  addSeparator' 	MSG_ABORT

) * (Ljava/lang/String;)V
,-./  java/lang/Class desiredAssertionStatus
1234  java/awt/GraphicsEnvironment 
isHeadless6 netbeans.dnd.enabled8 true
:;<=> java/lang/System getProperty 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
@ABCD java/lang/Boolean parseBoolean (Ljava/lang/String;)Z	 FG � dragAndDropEnabled NODE_UP I ConstantValue���� NODE_CENTRAL     	NODE_DOWN    NoDrag NoDrop Code LineNumberTable LocalVariableTable this -Lorg/openide/explorer/view/DragDropUtilities; checkNodeForAction (Lorg/openide/nodes/Node;I)Z node Lorg/openide/nodes/Node; 
dragAction StackMapTable MethodParameters i result $Ljava/awt/datatransfer/Transferable; nodes tArray %[Ljava/awt/datatransfer/Transferable; c !Ljava/awt/datatransfer/Clipboard;c 
Exceptions ?(Lorg/openide/nodes/Node;I)Ljava/awt/datatransfer/Transferable; setPostDropRun run performPaste \(Lorg/openide/util/datatransfer/PasteType;Lorg/openide/nodes/Node;)[Lorg/openide/nodes/Node; n preNodes 	postNodes pre Ljava/util/List; post it Ljava/util/Iterator; diff exc &Lorg/openide/util/UserCancelException; e Ljava/io/IOException; type )Lorg/openide/util/datatransfer/PasteType; targetFolder LocalVariableTypeTable *Ljava/util/List<Lorg/openide/nodes/Node;>; .Ljava/util/Iterator<Lorg/openide/nodes/Node;>; h(Lorg/openide/nodes/Node;Ljava/awt/datatransfer/Transferable;)[Lorg/openide/util/datatransfer/PasteType; npe  Ljava/lang/NullPointerException; pt *[Lorg/openide/util/datatransfer/PasteType; obj 3Lorg/openide/util/datatransfer/MultiTransferObject; count t p curTypes trans� i(Lorg/openide/nodes/Node;Ljava/awt/datatransfer/Transferable;II)Lorg/openide/util/datatransfer/PasteType; action 	dropIndex dropNotSuccesfull secureFindNode Ljava/lang/ClassCastException; o Ljava/lang/Object; createDropFinishPopup -(Ljava/util/TreeSet;)Ljavax/swing/JPopupMenu; 
pasteTypes Ljava/util/TreeSet; menu Ljavax/swing/JPopupMenu; items_ [Ljavax/swing/JMenuItem; 	aListener Ljava/awt/event/ActionListener; 	abortItem Ljavax/swing/JMenuItem;�� java/awt/event/ActionListener 
access$000 <clinit> 
SourceFile DragDropUtilities.java InnerClasses Multi MultiPasteType Message 0      G �   HI J   K LI J   M NI J   O  < =   PI J   M QI J   O � �       R   3     *� �   S   
    J  KT       UV   WX R   �     4*� � � � �*� � � � � 	� ��   S       R  S  V  Y  Z 0 ^ 2 bT       4YZ     4[I \    ]   	Y  [    8 9 R       a*�� M>*�� $~� ,*2� S� ,*2� S����,�� 
,2N� � !Y,� #� &N� ,:� 0� � 0-� 2�-�   S   6    l  n  o  p   r ) n / v 5 x < { H ~ M  U � _ �T   H   '^I  9 _`    aa {     a[I   [bc  H _`  M de \    � f� �  �  �g     ~]   	a  [    8h R   A     � Y*S� 6�   S       �T       YZ     [I g     ~]   	Y  [   i C R   3     *� :�   S   
    �  �T       j =  ]   j   
   R   >      � :� � :� >� :�   S       �  �  �  �\     kl R    	   �+� *� DW� �+� I� MM*� DW+� I� MN,� S:-� S:� Y :� _Y� a:� b � (� g � :� k � � o W���� r � � v � z�M� �M,� �� �     � |  � � |    � ~  � � ~ S   V    �  � 	 �  �  �  � % � + � 1 � : � C � M � Y � e � o � r � � � � � � � � � � �T   p  Y mZ   pn {  % bo {  + \pq  1 Vrq  : Mst  C Duq  � vw  � 	xy    �z{     �|Z }   *  + \p~  1 Vr~  : Ms  C Du~ \   8 � 4  E  z z Z Z c Z  +�   E   |E ~]   	z  |    �� R  �     �+� �� � � M*+� �M� N-� �,�+� �� � � �M,� � >� :� E::6� 3,� � S*2� �:�� �2S����� EY� �Y� �S�M� M� E�     �  j � � k � � �  j � ~ k � � ~ S   b    �  �  �  �  �  �  �  � + � 2 � 8 � > � A � J � W � b � h � k t � z � � �	 �T   f 
  ��   ��  D 6^I  + b��  2 [�I  8 U�c  > O��  A L��    �YZ     ��` \   M 	�    �  �� � %    �f��  &� �      �C ~ ]   	Y  �    �� R       �:*+� �:� �� 
:� �+� �� � � x+� �� � � �:� � 6� :� E::	6

� 3

� � S*
2� �:		� 	�
	S�
��̻ �Y� ��:� :�     � * ~ � �  � � � * ~ � ~  � � ~ S   f    ! " # & $ % ( *+ 8, A- H. O/ R2 \3 j4 w7 |8 ; �2 �? �@ �D �B �GT   z   ��  U 7^I 
 8 `��  A W�I  H P�c  O I��  R F�{ 	   �YZ     ��`    ��I    ��I   � H{ \   K 	�  EB �� 6    E �f� E  )� �     E  �D ~]   Y  �  �  �   �  R   ;      � �� �Y��� �� ¶ �W�   S      L N L R 
 . / R   ]     � �ζ �� �K*� 
� Զ �K*�   S      V X Y \T      de  \    �  � � � R   �     9� ݚ **� � #� �Y� �Y� �� �*� �� � � ��*� ��L+��  - 1 2  S      c -e 2f 3g 7iT     3 x�    9��  \    -D ]   �   �� R  =     ��Y�L*��
M�Y*,�N*�:6� b � 9,�
Y�S,2� g � E��,2-�+,2� W����+�#�
Y&� ��(:+� W+�   S   :   s v x �  � -� 8� L� T� ]� c� g� x� �T   H  # @^I    ���    y��   q��   g��    ast  x 	�� \    � # �� c  � ?]   � �  R          � �   S       = �  R   d      2�+� � � ݸ0� 57�9�?� � �E� :�   S       =  >  ? - C\    @@ �   ��   "  ! �� 	 � �  � �� 	      