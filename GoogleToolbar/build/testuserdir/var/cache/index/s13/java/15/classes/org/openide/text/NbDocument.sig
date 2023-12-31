����   4  ,org/openide/text/NbDocument$DocumentRenderer
      java/lang/Object <init> ()V
 
     org/openide/text/NbDocument checkDocParameter (Ljavax/swing/text/Document;)V      javax/swing/text/StyledDocument getParagraphElement (I)Ljavax/swing/text/Element;      javax/swing/text/Element getParentElement ()Ljavax/swing/text/Element;     getDefaultRootElement
      &(ILjavax/swing/text/StyledDocument;I)V
  " # $ renderToInt ()I & ,org/openide/text/NbDocument$PositionBiasable % ( ) * createPosition >(ILjavax/swing/text/Position$Bias;)Ljavax/swing/text/Position;	 , - . / 0 javax/swing/text/Position$Bias Forward  Ljavax/swing/text/Position$Bias; 2 3 4 ) 5 javax/swing/text/Document (I)Ljavax/swing/text/Position;
 7 8 9 : ; !org/openide/text/BackwardPosition create 9(Ljavax/swing/text/Document;I)Ljavax/swing/text/Position;	 
 = > ? ATTR_ADD %Ljavax/swing/text/SimpleAttributeSet;  A B C setCharacterAttributes %(IILjavax/swing/text/AttributeSet;Z)V	 
 E F ? ATTR_REMOVE  H I J insertString 5(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V L NbBreakpointStyle  N O P getStyle ,(Ljava/lang/String;)Ljavax/swing/text/Style;  R S T addStyle D(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;	 V W X Y Z .javax/swing/text/StyleConstants$ColorConstants 
Background Ljava/lang/Object;	 \ ] ^ _ ` java/awt/Color red Ljava/awt/Color; b c d e f javax/swing/text/Style addAttribute '(Ljava/lang/Object;Ljava/lang/Object;)V	 V h i Z 
Foreground	 \ k l ` white  n o p setLogicalStyle (ILjavax/swing/text/Style;)V r NbErrorStyle	 \ t u ` green	 \ w x ` black z NbCurrentStyle	 \ | } ` blue  NbNormalStyle	 
 � � � $assertionsDisabled Z
 � � � � � javax/swing/SwingUtilities isEventDispatchThread ()Z � java/lang/AssertionError � MNbDocument.findInitializedPaneForActiveTC must be called from AWT thread only
 � �  � (Ljava/lang/Object;)V � 'org/openide/text/CloneableEditorSupport
 � � � � getRecentPane ()Ljavax/swing/JEditorPane; � � � � �  org/openide/cookies/EditorCookie getOpenedPanes ()[Ljavax/swing/JEditorPane; � )org/openide/text/NbDocument$WriteLockable � � � � 	runAtomic (Ljava/lang/Runnable;)V � � � �  java/lang/Runnable run � � � � runAtomicAsUser � java/lang/NullPointerException � 0Invalid doc parameter. Document may not be null!
 � �  � (Ljava/lang/String;)V � java/awt/print/Pageable � java/awt/print/Printable � !org/openide/text/DefaultPrintable
 � �   � 'org/openide/text/NbDocument$Annotatable � � � � addAnnotation <(Ljavax/swing/text/Position;ILorg/openide/text/Annotation;)V � � � � removeAnnotation  (Lorg/openide/text/Annotation;)V
 
 � � � getEditToBeUndoneRedoneOfType U(Lorg/openide/cookies/EditorCookie;Ljava/lang/Class;Z)Ljavax/swing/undo/UndoableEdit;
 � � � � getUndoRedo $()Lorg/openide/awt/UndoRedo$Manager; �  org/openide/text/UndoRedoManager
 � � � � editToBeUndoneRedone "(Z)Ljavax/swing/undo/UndoableEdit;
 � � � � � java/lang/Class 
isInstance (Ljava/lang/Object;)Z
 � � � � cast &(Ljava/lang/Object;)Ljava/lang/Object; � javax/swing/undo/UndoableEdit � java/util/List � � � $ size � � � � get (I)Ljava/lang/Object; � � � � �  org/openide/util/Lookup$Provider 	getLookup ()Lorg/openide/util/Lookup;
 � � � � � org/openide/util/Lookup lookup %(Ljava/lang/Class;)Ljava/lang/Object; � � � � openDocument #()Ljavax/swing/text/StyledDocument; � &org/openide/util/UserQuestionException
 � � � � � org/openide/DialogDisplayer 
getDefault ()Lorg/openide/DialogDisplayer;  )org/openide/NotifyDescriptor$Confirmation
 � getLocalizedMessage ()Ljava/lang/String;
	 org/openide/text/Bundle TXT_Question org/openide/NotifyDescriptor
 �  ((Ljava/lang/Object;Ljava/lang/String;I)V
 � notify 2(Lorg/openide/NotifyDescriptor;)Ljava/lang/Object;	
 Z 
YES_OPTION
 �  	confirmed java/io/IOException
 � getName
 !"# java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	%&'() java/util/logging/Level WARNING Ljava/util/logging/Level;
+,- log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 � 0 org/openide/cookies/LineCookie
 
234 getDocument E(Lorg/openide/util/Lookup$Provider;)Ljavax/swing/text/StyledDocument;
 
678 findLineNumber %(Ljavax/swing/text/StyledDocument;I)I
 
:;8 findLineColumn/=>? 
getLineSet ()Lorg/openide/text/Line$Set;
ABCDE org/openide/text/Line$Set 
getCurrent (I)Lorg/openide/text/Line;G #java/lang/IndexOutOfBoundsException
 
IJK doShow i(Lorg/openide/text/Line;ILorg/openide/text/Line$ShowOpenType;Lorg/openide/text/Line$ShowVisibilityType;)VM !org/netbeans/api/actions/Openable
 
OPQ doOpen &(Lorg/netbeans/api/actions/Openable;)V	STUVW org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;Y org/openide/text/NbDocument$2
X[ \ i(Lorg/openide/text/Line;Lorg/openide/text/Line$ShowOpenType;Lorg/openide/text/Line$ShowVisibilityType;I)V
S^_ � writeAccessa org/openide/text/NbDocument$3
`c Q
 �ef � desiredAssertionStatush org/openide/text/NbDocument$1
g 	 
kl Z GUARDEDn #javax/swing/text/SimpleAttributeSet
m 	qrstu java/lang/Boolean TRUE Ljava/lang/Boolean;
m c	qxyu FALSE BREAKPOINT_STYLE_NAME Ljava/lang/String; ConstantValue 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; ERROR_STYLE_NAME CURRENT_STYLE_NAME NORMAL_STYLE_NAME Code LineNumberTable LocalVariableTable this Lorg/openide/text/NbDocument; findLineRootElement =(Ljavax/swing/text/StyledDocument;)Ljavax/swing/text/Element; doc !Ljavax/swing/text/StyledDocument; e Ljavax/swing/text/Element; StackMapTable MethodParameters offset I findLineOffset 
lineNumber Y(Ljavax/swing/text/Document;ILjavax/swing/text/Position$Bias;)Ljavax/swing/text/Position; Ljavax/swing/text/Document; bias 
Exceptions� %javax/swing/text/BadLocationException markGuarded &(Ljavax/swing/text/StyledDocument;II)V len unmarkGuarded insertGuarded 7(Ljavax/swing/text/StyledDocument;ILjava/lang/String;)V txt markBreakpoint %(Ljavax/swing/text/StyledDocument;I)V bp Ljavax/swing/text/Style; 	markError markCurrent 
markNormal st findRecentEditorPane =(Lorg/openide/cookies/EditorCookie;)Ljavax/swing/JEditorPane; pane Ljavax/swing/JEditorPane; panes [Ljavax/swing/JEditorPane; ec "Lorg/openide/cookies/EditorCookie;� 8(Ljavax/swing/text/StyledDocument;Ljava/lang/Runnable;)V Ljava/lang/Runnable;� java/lang/Throwable findPageable 5(Ljavax/swing/text/StyledDocument;)Ljava/lang/Object; ](Ljavax/swing/text/StyledDocument;Ljavax/swing/text/Position;ILorg/openide/text/Annotation;)V startPos Ljavax/swing/text/Position; length 
annotation Lorg/openide/text/Annotation; A(Ljavax/swing/text/StyledDocument;Lorg/openide/text/Annotation;)V getEditToBeUndoneOfType T(Lorg/openide/cookies/EditorCookie;Ljava/lang/Class;)Ljavax/swing/undo/UndoableEdit; type Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<TT;>; 	Signature a<T::Ljavax/swing/undo/UndoableEdit;>(Lorg/openide/cookies/EditorCookie;Ljava/lang/Class<TT;>;)TT; getEditToBeRedoneOfType inst Ljavax/swing/undo/UndoableEdit; i listEdit Ljava/util/List; 	urManager "Lorg/openide/text/UndoRedoManager; edit ur Lorg/openide/awt/UndoRedo; redone TT; 1Ljava/util/List<Ljavax/swing/undo/UndoableEdit;>;� org/openide/awt/UndoRedo b<T::Ljavax/swing/undo/UndoableEdit;>(Lorg/openide/cookies/EditorCookie;Ljava/lang/Class<TT;>;Z)TT; value uqe (Lorg/openide/util/UserQuestionException; ioe Ljava/io/IOException; provider "Lorg/openide/util/Lookup$Provider; #org.netbeans.SourceLevelAnnotations $Lorg/openide/util/NbBundle$Messages; TXT_Question=Question t(Lorg/openide/util/Lookup$Provider;ILorg/openide/text/Line$ShowOpenType;Lorg/openide/text/Line$ShowVisibilityType;)Z %Ljava/lang/IndexOutOfBoundsException; line column l Lorg/openide/text/Line; openType $Lorg/openide/text/Line$ShowOpenType; visibilityType *Lorg/openide/text/Line$ShowVisibilityType; lc  Lorg/openide/cookies/LineCookie; oc #Lorg/netbeans/api/actions/Openable;� "org/openide/text/Line$ShowOpenType� (org/openide/text/Line$ShowVisibilityType� org/openide/text/Line u(Lorg/openide/util/Lookup$Provider;IILorg/openide/text/Line$ShowOpenType;Lorg/openide/text/Line$ShowVisibilityType;)Z <clinit> 
SourceFile NbDocument.java InnerClasses DocumentRenderer PositionBiasable� javax/swing/text/Position Bias javax/swing/text/StyleConstants ColorConstants WriteLockable Annotatable  org/openide/awt/UndoRedo$Manager Manager Provider Confirmation Set ShowOpenType ShowVisibilityType )org/openide/text/NbDocument$CustomToolbar CustomToolbar (org/openide/text/NbDocument$CustomEditor CustomEditor %org/openide/text/NbDocument$Printable 	Printable "org/openide/util/NbBundle$Messages org/openide/util/NbBundle Messages 1 
     l Z    > ?    F ?   z{ |    K}    ~       �{ |    q}    ~       �{ |    y}    ~       �{ |    ~}    ~       � �       �   3     *� �   �   
    c  d�       ��   	�� �   p     *� 	*�  �  L+� 
*�  L+�   �       p  r  t  v  y�       ��    �� �    �  �   �   	78 �   B     � Y*� � !�   �       ��       ��     �� �   	�  �   	;8 �   B     � Y*� � !�   �       ��       ��     �� �   	�  �   	�8 �   B     � Y*� � !�   �       ��       ��     �� �   	�  �   	 )� �   �     ,*� 	*� %� *� %,� ' �,� +� *� 1 �*� 6�   �       �  �  �  �  � & ��        ,��     ,��    ,� 0 �    �    ��   �  �  �   	�� �   W     *� 	*� <� @ �   �       �  �  ��        ��     ��    �� �   �  �  �   	�� �   W     *� 	*� D� @ �   �       �  �  ��        ��     ��    �� �   �  �  �   	�� �   V     *� 	*,� <� G �   �       �  �  ��        ��     ��    �{ �    ��   �  �  �   	�� �   �     A*� 	*K� M M,� **K� Q M,� �,� U� [� a ,� g� j� a *,� m �   �   * 
    
      , 8 @�        A��     A��   4�� �   	 �   b�   	�  �  }    ~       	�� �   �     A*� 	*q� M M,� **q� Q M,� �,� U� s� a ,� g� v� a *,� m �   �   * 
  & ( * , . /  2 ,3 86 @7�        A��     A��   4�� �   	 �   b�   	�  �  }    ~       	�� �   �     A*� 	*y� M M,� **y� Q M,� �,� U� {� a ,� g� j� a *,� m �   �   * 
  F H J L N O  R ,S 8V @W�        A��     A��   4�� �   	 �   b�   	�  �  }    ~       	�� �   �     (*� 	*~� M M,� *~� Q M,� *,� m �   �      f h j k n o 'q�        (��     (��   �� �   	 �  b�   	�  �  }    ~       	�� �   �     8� �� � �� � �Y�� ��*� �� *� �� �L+�*� � L+� +2��   �   "    � � %� '� .� 2� 6��      % ��  . 
��    8��  �   
 � ��   �   	 �� �   �     -*� 	*� �� *� �+� � � *YM�+� � ,ç N,�-��   $ '   ' * '   �      � � � � � "� ,��       -��     - �� �    �    �  �� �   	�   �   	 �� �   �     -*� 	*� �� *� �+� � � *YM�+� � ,ç N,�-��   $ '   ' * '   �      � � � � � "� ,��       -��     - �� �    �    �  �� �    ��   	�   �   
   �   J     *� � �Y�� ���   �      � � ��       ��  �    �   �   	�� �   _     *� �� *�*� �� *�� �Y*� ��   �      � � 	� � ��       ��  �    	�   �   	 �� �   r     *� �� �*� �+-� � �   �      � � � ��   *    ��     ��    ��    �� �    �   � � � �  	 �� �   \     *� �� �*� �+� � �   �      � � � ��       ��     �� �    �   	� �  	�� �   M     *+� İ   �      �       ��     �� �       �� �   	�  �  �   � 	�� �   M     *+� İ   �       �       ��     �� �       �� �   	�  �  �   � 
 � � �  ~  	   |*� �� v*� �� �YN� ̙ g-� �:� �:+� ҙ +� �� ܰ� ޙ >� �:� � d6� '� � � �:+� ҙ 
:�������   �   >   % & ( ) $* -+ 7, ?. F/ V0 d1 m2 q3 t/ z8�   \ 	 q ��  Q )��  F 4��   ^��  $ V��   j��    |��     |��    |� � �      q ��  F 4��    |�� �   $ � 7� � ��  �"�   � �  �   �  �  �  �   � 	34 �  O     d*� � �� �� �L+� >M+� � M� 0N� �� �Y-����:�� �-�+� � M,�� L
���$+�*�     �   @ Q A M Q �   N   K L M O Z P  Q (R +S 2Q 7U ?V AX EY L[ N_ Q] R^ b`�   >  7 � Z    ,��   9��   ?��  R ��    d��  �   ) �   � �   �� ! � � 
� B�   �  �    � �[ s� 	 �� �  �  
   �� �� *� � �Y�.�*� � /� ��/:� V� Q*�1:� F�56�96:�< �@:� :	�< �@:� ,-�H�*� � L� ��L:� 
�N��  K Y \F �   R   t u #v -w 3y 8z @{ H} K Y� \� ^� k� p� y� {� �� �� �� ���   p  ^ �� 	 @ ;��  H 3��  K 0��  3 H��    ���     ���    ���    ���  # w��  � �� �   = � I 	 ���/ � F�   ���/  � L�   �  �  �  �   	 �� �  �  	   �� �� *� � �Y�.�*� � /� ��/:� I� E� @*�1:� 5:�< �@:� :�< �@:� -�H�*� � L� ��L:� 
�N��  ? L OF �   J   � � #� 1� 7� <� ?� L� O� Q� ^� c� l� n� � �� �� ���   f 
 Q ��  ? /��  7 7��    ���     ���    ���    ���    ���  # j��   �� �   + � <  ���/ � F� � L�   �  �  �  �  �   
JK �   ^     �R�XY*,-�Z�]�   �   
   � ��   *    ��     ��    ��    �� �   � � � �  
PQ �   =     �R�`Y*�b�]�   �   
   � ��       ��  �   �  �  �   �      G
�d� � � ��gY�i�j�mY�o� <�mY�o� D� <�j�p�v� D�j�w�v�   �       2  7  < $ @ . C : D F E�    @ �   ��   �   
�  % 
�	 ,��  V  	 � 
	 � 
	� 	 � �	 �
	 	A�
	��@��@X      `      g       
	 
	 
	&	