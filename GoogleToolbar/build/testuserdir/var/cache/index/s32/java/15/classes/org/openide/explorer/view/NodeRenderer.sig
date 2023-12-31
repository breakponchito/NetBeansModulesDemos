����   4i
      java/lang/Object <init> ()V	  	 
   &org/openide/explorer/view/NodeRenderer bigIcons Z	     	showIcons
      org/openide/awt/HtmlRenderer createRenderer )()Lorg/openide/awt/HtmlRenderer$Renderer;	     renderer 'Lorg/openide/awt/HtmlRenderer$Renderer;	     instance (Lorg/openide/explorer/view/NodeRenderer;
     java/lang/IllegalStateException " WNodeRenderer.sharedInstance() is deprecated.  Create an instance of NodeRendererinstead
  $  % (Ljava/lang/String;)V
 ' ( ) * + java/lang/Class getName ()Ljava/lang/String;
 - . / 0 1 java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 3 4 5 6 7 java/util/logging/Level WARNING Ljava/util/logging/Level;
 - 9 : ; log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V = javax/swing/JLabel
 < 
 < @ A B getIconTextGap ()I	  D E F labelGap I
  H I  assertEDTAccess
  K L M findVisualizerNode >(Ljava/lang/Object;)Lorg/openide/explorer/view/VisualizerNode;	  O P Q draggedOver *Lorg/openide/explorer/view/VisualizerNode;
 S T U V + (org/openide/explorer/view/VisualizerNode getHtmlDisplayName
 S X Y + getDisplayName [ \ ] ^ _ %org/openide/awt/HtmlRenderer$Renderer getTreeCellRendererComponent @(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
 a b c d e javax/swing/JTree 	isEnabled ()Z
 g h i j k java/awt/Component 
setEnabled (Z)V [ m n k setHtml
  p q r configureFrom j(Lorg/openide/awt/HtmlRenderer$Renderer;Ljava/awt/Container;ZZLorg/openide/explorer/view/VisualizerNode;)I
 t u v w x javax/swing/JList getModel ()Ljavax/swing/ListModel; z 'org/openide/explorer/view/NodeListModel
 y | } ~ findVisualizerDepth D(Ljavax/swing/ListModel;Lorg/openide/explorer/view/VisualizerNode;)I � LBL_UP
 � � � � � org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String; [ � � � getListCellRendererComponent >(Ljavax/swing/JList;Ljava/lang/Object;IZZ)Ljava/awt/Component;
 t b � org/openide/awt/ListPane [ � � k setCentered
 y � � B getDepth [ � � � 	setIndent (I)V
  � � e isShowIcons [ � � � setIcon (Ljavax/swing/Icon;)V
 S � � � getIcon (ZZ)Ljavax/swing/Icon; � � � � B javax/swing/Icon getIconWidth [ � � � setIconTextGap � java/lang/NullPointerException � java/lang/StringBuilder
 �  � icon: 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � � + toString
 � � � � � org/openide/util/Exceptions attachMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable; � vis:  � ren:  � 9org/openide/explorer/view/TreeTable$TreeTableCellRenderer
 � � � � getTreeTable '()Lorg/openide/explorer/view/TreeTable;
 � � � e treeTableHasFocus
 � � � � e #org/openide/explorer/view/TreeTable 	isEditing [ � � k setParentFocused � org/openide/nodes/Node
 S � � � getVisualizer r(Lorg/openide/explorer/view/VisualizerChildren;Lorg/openide/nodes/Node;)Lorg/openide/explorer/view/VisualizerNode; �  
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z �  	 S � � Q EMPTY � java/lang/ClassCastException � Unexpected value: 
 � $	  � �  $assertionsDisabled � java/lang/AssertionError
 � 
 � � � � e java/awt/EventQueue isDispatchThread � nbjunit.workdir
 � � �  java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;
 java/lang/Thread currentThread ()Ljava/lang/Thread;
	
 getStackTrace  ()[Ljava/lang/StackTraceElement; "org.openide.explorer.view.TreeView
 + java/lang/StackTraceElement getClassName 
 + getMethodName Should be called in EDT only!
 �  (Ljava/lang/Object;)V
 ' e desiredAssertionStatus  !javax/swing/tree/TreeCellRenderer" javax/swing/ListCellRenderer Code LineNumberTable LocalVariableTable this MethodParameters 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; sharedInstance *()Lorg/openide/explorer/view/NodeRenderer; ise !Ljava/lang/IllegalStateException; StackMapTable setShowIcons tree Ljavax/swing/JTree; value Ljava/lang/Object; sel expanded leaf row hasFocus vis text Ljava/lang/String; isHtml result Ljava/awt/Component; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; depth indent list Ljavax/swing/JList; index cellHasFocus 	iconWidth bi ex  Ljava/lang/NullPointerException; ttRen ;Lorg/openide/explorer/view/TreeTable$TreeTableCellRenderer; tt %Lorg/openide/explorer/view/TreeTable; ren target Ljava/awt/Container; useOpenedIcon icon Ljavax/swing/Icon;W java/awt/Container 	dragEnter dragged dragExit elem Ljava/lang/StackTraceElement; i 
stackTrace [Ljava/lang/StackTraceElement; whitespaced check_ <clinit> 
SourceFile NodeRenderer.java InnerClasses Renderer TreeTableCellRenderer !   !  
     
 P Q              E F        �        #   P     *� *� *� *� � �   $       =  6 	 8  :  >%       &      k #   c     *� *� *� *� � *� �   $       F  6 	 8  :  G  H%       &         '      (    )    *   	+, #   q     .� � � Y� � � Y!� #K� &� ,� 2*� 8� �   $       S  T  W  Z * \%      -.  /    (    )    *   0 k #   a     *� � *� <Y� >� ?� C�   $       `  a 	 b  d%       &         /    '        � e #   /     *� �   $       g%       &     ^ _ #  R     p*� G,� J:� N� >� R:		� � 6

� 
� W:	*� +	� Z :+� `� f*� 
� l **� +� oW�   $   6    s  t 
 v  w  z  { ' } , ~ 3 � J � S � ^ � m �%   z    p&      p12    p34    p5     p6     p7     p8 F    p9   
 f: Q   U;< 	 ' I=  
 J &>? /    �  S�  �@� '   1  3  5  6  7  8  9  @    A    � � #  �     �*� G,� J:� N� 6� R:+� s� y� +� s� {6� � �:� � 6� 
� W:*� +� 
,� N� � � � :	*� � l 	+� �� f**� +� o6
*� � 
+� �� � 6� *� � � � 4+� s� y� *+� s� y� �� 
+� s� {h6*� � � 	�   $   ^    �  � 
 �  �  �  � & � 1 � 7 � @ � L � Q � X � z � � � � � � � � � � � � � � � � � � �%   �  1 B F  � C F    �&      �DE    �34    �F F    �5     �G   
 �: Q   �;<  L �=   z >? 	 � [H F 
 � FI  /   � �  S� * �@� �  	  t  S �  [ t ��  	  t  S �  [ t ��   	  t  S �  [ t �� 8 g@� 0'   D  3  F  5  G  @    A    q r #  +  	   �*� �� +� � +*� C� � �*� � �:� � � +� � d� � � +� � +� � � U:� �Y� ��� �� �� �� �W� �Y� �¶ �� �� �� �W� �Y� �Ķ �+� �� �� �W�,� ƙ +,� �:� �:+� ̚ � ϙ � � � � � � � 
� � �  L T W � $   R    �  �  �  �  � ' � 1 � D � L � T � W � Y � s � � � � � � � � � � � � � � �%   f 
 Y PJK  � "LM  � NO    �&      �P     �QR    �S     �5     �: Q  ' �TU /   ^ � ( �J �� Q� $ 	  [V S � � �  [C [�   	  [V S � � �  [� F'   P  Q  S  5  :   
 L M #   �     Q*� י *� ׸ ٰ*� S� *� S�*� �*� ߚ �*� ߙ � 簻 �Y� �Y� �� �*� �� �� �   $       �  �  �  �  � 2 � 6 %       Q34  /    '   3   X #   6     *� S� N�   $   
    	%       Y4  '   Y   Z  #   !      � N�   $   
      I  #  +     �<� � Y<� � �Y� ��� l� �� f�� �� ^��M>6,�� 0,2:�� ߙ �� ߙ >� 	���ϲ � � � �� � �Y���   $   6      ( / 1 ; A ] _ b h �%   >  A ![\  4 4] F  / T^_  1 R`     �&     �a  /    � � b-� �  c  #   <      �� � � �� �   $   
    +  ,/    @ d   ef     [ g	 � �h  