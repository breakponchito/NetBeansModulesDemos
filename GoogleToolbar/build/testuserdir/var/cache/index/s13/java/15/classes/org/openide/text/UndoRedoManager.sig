����   4�
       org/openide/awt/UndoRedo$Manager 
undoOrRedo ()V
   	 
 getUndoPresentationName ()Ljava/lang/String;
    
 getRedoPresentationName
    
 getUndoOrRedoPresentationName
     canUndoOrRedo ()Z
     setLimit (I)V
     discardAllEdits
        org/openide/text/UndoRedoManager clearSaveActionsEdit	  " # $ edits Ljava/util/Vector;	  & ' ( LOG Ljava/util/logging/Logger;
  * + , getLimit ()I
  . /  canUndo
  1 2  canRedo
  4 5  undo
  7 8  commitUndoGroup
  : ;  redo	  = > ? 	undoGroup Ljavax/swing/undo/CompoundEdit;
  A B  <init>	  D E F support )Lorg/openide/text/CloneableEditorSupport;	  H I J awaitingOnSaveTasks Z	 L M N O P java/util/logging/Level FINE Ljava/util/logging/Level;
 R S T U V java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z X startSaveActions() called.

 R Z [ \ fine (Ljava/lang/String;)V	  ^ _ ? onSaveTasksEdit
 a b c d  javax/swing/undo/CompoundEdit end f %    endSaveActions(): saveActionsEdit
  h i j 
checkLogOp 4(Ljava/lang/String;Ljavax/swing/undo/UndoableEdit;)V	  l m n 	SAVEPOINT Ljavax/swing/undo/UndoableEdit;	  p q n savepointEdit
  s t  markSavepoint	  v w J callNotifyUnmodified
 y z { w  'org/openide/text/CloneableEditorSupport } +    mergeSaveActionsToLastEdit-lastWrapEdit  #org/openide/text/StableCompoundEdit
 ~ A
 � � � � � org/openide/text/WrapUndoEdit delegate !()Ljavax/swing/undo/UndoableEdit;
 ~ � � � addEdit "(Ljavax/swing/undo/UndoableEdit;)Z
 ~ b
 � � � � setDelegate "(Ljavax/swing/undo/UndoableEdit;)V �     compoundEdit � (beforeUndoAtSavepoint: undoSaveActions()
  � �  undoSaveActions
 a . �     saveActionsEdit.undo()
 a 4 � delegateUndoFailedAtSavepoint
  � �  redoSaveActions
 a 1 �     saveActionsEdit.redo()
 a :
  � �  isAtSavepoint � afterUndoCheck-atSavepoint	  � � J beforeSavepoint � .afterUndoCheck-becomesSavepoint-markUnmodified	  � � J $assertionsDisabled � java/lang/AssertionError � Expected to be behind savepoint
 � � B � (Ljava/lang/Object;)V
  � �  markSavepointAndUnmodified � beforeRedoAtSavepoint � delegateRedoFailedAtSavepoint � afterRedoCheck-atSavepoint � afterRedoCheck-becomesSavepoint � Expected to be before savepoint � /checkReplaceSavepointEdit-replacedSavepointEdit � notifyWrapEditDie-savepoint-die
  � �  isInProgress	  � � n BEGIN_COMMIT_GROUP
  � �  beginUndoGroup	  � � n END_COMMIT_GROUP
  � �  endUndoGroup	  � � n MARK_COMMIT_GROUP	  � � � needsNestingCommit I	  � � � buildUndoGroup
 a A
 a �
  � � � addEditImpl � Cannot add null edit � addEdit-inSaveActions � Cannot add to saveActionsEdit
 � � B � D(Lorg/openide/text/UndoRedoManager;Ljavax/swing/undo/UndoableEdit;)V
  � � addEdit-atSavepoint
 � � � � , java/util/Vector size �
 y � � � getDocument #()Ljavax/swing/text/StyledDocument; � $javax/swing/undo/CannotRedoException
 � A -org/openide/text/UndoRedoManager$DocLockedRun
  B G(Lorg/openide/text/UndoRedoManager;ILjavax/swing/text/StyledDocument;)V
   checkCallNotifyUnmodified	 $javax/swing/undo/CannotUndoException
 A
  B I(Lorg/openide/text/UndoRedoManager;ILjavax/swing/text/StyledDocument;IZ)V	  J booleanResult	  � 	intResult     saveActionsEdit-die
 a  die
  B H(Lorg/openide/text/UndoRedoManager;ILjavax/swing/text/StyledDocument;I)V
 y  isDocumentReady	  !" stringResult Ljava/lang/String;$  & beginUndoGroup: nesting {0}
()*+, java/lang/Integer valueOf (I)Ljava/lang/Integer;
 R./0 log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V2 endUndoGroup: nesting {0}	 L45 P INFO7 java/lang/Exception9 #endUndoGroup without beginUndoGroup
6; B \
 R=/> C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 @A � editToBeRedone
 CD � editToBeUndoneF java/lang/StringBuilder
E A
 IJK toStringTerse &(Ljava/lang/Object;)Ljava/lang/String;
EMNO append -(Ljava/lang/String;)Ljava/lang/StringBuilder;Q ->
EST 
 toString
VWXYZ java/lang/Object getClass ()Ljava/lang/Class;
\]^_ 
 java/lang/Class getName
abcde java/lang/String lastIndexOf (I)I
aghi 	substring (I)Ljava/lang/String;k @
mnopq java/lang/System identityHashCode (Ljava/lang/Object;)I
EsNt (I)Ljava/lang/StringBuilder;v null
 xy 
 thisToString{ : 
 }~ editToString 3(Ljavax/swing/undo/UndoableEdit;)Ljava/lang/String;
E�N� (C)Ljava/lang/StringBuilder;	 L�� P FINEST
a�� , length
a�h� (II)Ljava/lang/String;
6 A
 y�� 
 messageName
a�+K� :URM@
\��  desiredAssertionStatus
 R��� 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;� ,org/openide/text/UndoRedoManager$SpecialEdit
� A ,(Lorg/openide/text/CloneableEditorSupport;)V Code LineNumberTable LocalVariableTable this "Lorg/openide/text/UndoRedoManager; MethodParameters startOnSaveTasks StackMapTable endOnSaveTasks mergeSaveActionsToLastEdit "(Lorg/openide/text/WrapUndoEdit;)V compoundEdit %Lorg/openide/text/StableCompoundEdit; lastWrapEdit Lorg/openide/text/WrapUndoEdit; beforeUndoAtSavepoint edit afterUndoCheck afterRedoCheck checkReplaceSavepointEdit A(Lorg/openide/text/WrapUndoEdit;Lorg/openide/text/WrapUndoEdit;)V origEdit newEdit notifyWrapEditDie #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; added wrapEdit doc !Ljavax/swing/text/StyledDocument;� javax/swing/text/StyledDocument 
Exceptions l editToBeUndoneRedone "(Z)Ljavax/swing/undo/UndoableEdit; redone� javax/swing/undo/UndoableEdit clsName o Ljava/lang/Object; msg op name 
access$000 C(Lorg/openide/text/UndoRedoManager;)Ljavax/swing/undo/CompoundEdit; x0 
access$101 %(Lorg/openide/text/UndoRedoManager;)V 
access$200 
access$301 
access$401 %(Lorg/openide/text/UndoRedoManager;)Z 
access$501 
access$601 %(Lorg/openide/text/UndoRedoManager;)I 
access$700 ()Ljava/util/logging/Logger; 
access$800 6(Lorg/openide/text/UndoRedoManager;)Ljava/util/Vector; 
access$900 access$1000 access$1101 access$1201 &(Lorg/openide/text/UndoRedoManager;I)V x1 access$1301 access$1401 6(Lorg/openide/text/UndoRedoManager;)Ljava/lang/String; access$1501 access$1601 access$1701 <clinit> 
SourceFile UndoRedoManager.java InnerClasses� org/openide/awt/UndoRedo Manager DocLockedRun SpecialEdit 0       ' (    m n    � n    � n    � n     E F     q n     � J    _ ?    I J    w J    � �    > ?    � �   � J   <  B� �   Q     *� @*+� C*� �   �       �  � 	 �  ��       ��      E F �    E    �  �   i     "*� 6*� *� G� %� K� Q� � %W� Y�   �       �  �  �  �  � ! ��       "��  �    !  �  �   a     *� ]� 
*� ]� `*� G*e*� ]� g�   �       �  �  �  �  ��       ��  �       t  �   >     *� 6*� k� o�   �       �  �  ��       ��     �  �   E     *� o� k� � �   �       ��       ��  �    @  �  �   <     
*� r*� u�   �       �  � 	 ��       
��     �   S     *� u� *� u*� C� x�   �       �  �  �  ��       ��  �      �� �   �     >*� ]� 9*|+� g� ~Y� �M,+� �� �W,*� ]� �W,� �+,� �*� ]*�,� g�   �   * 
   �  �  �  �  � ( � , � 1 � 6 � = ��       '��    >��     >�� �    =�   �    �� �   H     *�+� g*� ��   �       �  �  ��       ��     �� �   �    �  �   b     #*� ]� *� ]� �� *�*� ]� g*� ]� ��   �       �  �  � " ��       #��  �    "   �� �   H     *�+� g*� ��   �        �       ��     �� �   �    �  �   b     #*� ]� *� ]� �� *�*� ]� g*� ]� ��   �        	 "�       #��  �    "  �� �   �     ^*� �� *�+� g*� �*+� o� E*� o+� =*� ]� *�*� ]� g*� ]� �*�+� g� �� *� �� � �Y�� ��*� ��   �   2        # * 4 ; B Y ]�       ^��     ^�� �    �   �     �� �   H     *�+� g*� ��   �        ! "�       ��     �� �   �     �� �   H     *�+� g*� ��   �      % & '�       ��     �� �   �    �� �   �     ^*� �� *�+� g*� �*+� o� E*� o+� =*� ]� *�*� ]� g*� ]� �*�+� g� �� *� �� � �Y÷ ��*� ��   �   2   * + - . 0 #1 *2 43 ;5 B6 Y7 ]9�       ^��     ^�� �    �   �    �� �   h     *� o+� *�+� g*,� o�   �      < = > @�        ��     ��    �� �    �   	�  �    � � �   f     +*� o� *�+� g*� o*� �   �      C D E F H�       ��     � n �    �   �   ! � � �   �     j*� ɚ �+� ̦ 	*� ��+� Ҧ 	*� ��+� ئ 	*� 6�*� ۞ *� 6*� G� %*� ߞ *� <� *� aY� � <*� <+� �*+� �   �   J   L M 	O P Q R S !T #U *V .W 0Z 7[ ;^ I_ P` [b de�       j��     j� n �   	 	
�   �  �    �    � � �  I     �� �� +� � �Y� ��*� G� ;*�+� g*� ]� *� aY� � ]*� ]+� �=� �� � � �Y� ���� �Y*+� �M*,� �>*� �� **�,� g*� �*,� o� *� !� �� *� � 
*�,� g�   �   J   j k l "m )n 4p =q Qr St ]u cv jw qx vy {~ � �� ���   4  = � J    ���     �� n  ] =��  c 7� J �    � � � = ��   �    ;  �   z     $*� C� �L+� � �Y� ��� Y*+�W*��   �      � � � � � #��       $��    �� �    � ��     ��    �    5  �   z     $*� C� �L+� �Y�
�� Y*+�W*��   �      � � � � � #��       $��    �� �    � ��    �    �    2  �   @     � Y**� C� ����   �      ��       ��  �    �    /  �   @     � Y**� C� ����   �      ��       ��  �    �    + , �   >     � Y**� C� ����   �      ��       ��  �    �      �   B     � Y**� C� ��W�   �   
   � ��       ��  �    �       �   b     *� ]� **� ]� g*� ]�*� ]�   �      � � � � ��       ��  �        �   L     � Y**� C� ��W�   �   
   � ��       ��     � � �   �  �    �      �   A     � Y**� C� ����   �      ��       ��  �    �     
 �   `     %*� C�� � Y**� C� ����#�   �      � 
� !��       %��  �    !�    �     
 �   `     %*� C�� � Y*	*� C� ����#�   �      � 
� !��       %��  �    !�    �    	 
 �   `     %*� C�� � Y*
*� C� ����#�   �      � 
� !��       %��  �    !�    �      �   3     *� �   �   
   � ��       ��  �     ��    �    �  �   r     /*� <� *Y� �`� ۲ %� K%*� ߸'�-*Y� �`� ߱   �      � � � $� .��       /��  �      �  �   �     \*Y� �d� ߲ %� K1*� ߸'�-*� ߜ � %�3�6Y8�:�<*� �*� ۝ *� 6*Y� �dZ� ۜ *� ۱   �   * 
  � 
� � $� 8� = D H V [�       \��  �    =
  8  �   n     #*� <� �*� �*� <� `**� <� �W*� <�   �            "�       #��  �      �� �   y      � 
*�?� *�B� �M,� 
,� �� �   �   
     �         ��      � J   �� �    C��  �@��   �   ~ �   l     1*� �� (�EY�G*�H�LP�L*� �� ��H�L�R�*�H�   �      $ % ,'�       1� n  �    ,�   �   JK �   �     7*� 2*�U�[L�EY�G++.�``�f�Lj�L*�l�r�R�u�   �      , - . 30�      '�"    7��  �    3�   �     i j �   �     l� %� K� Q� b�EY�G*�w�LP�L+�Lz�L,�|�L
���RN� %��� Q� !� %��--��d���6Y���<� 
� %-� Y�   �      5 6 :7 F8 d: k=�   *  : 1�"    l��     l�"    l� n �    � da� �   	�  �    y 
 �   _     '*� C��L�EY�G+���L��L*�l�r�R�   �   
   @ A�       '��    �" �� �   /     *� <�   �       F�       ��  �� �   /     *� 9�   �       F�       ��  �     ��� �   /     *� 6�   �       F�       ��  �� �   /     *� 3�   �       F�       ��  �    �� �   /     *� 0�   �       F�       ��  �� �   /     *� -�   �       F�       ��  �� �   /     *� )�   �       F�       ��  �� �         � %�   �       F�� �   /     *� !�   �       F�       ��  �� �   /     *� !�   �       F�       ��  �� �   /     *� �   �       F�       ��  �� �   /     *� �   �       F�       ��  �� �   :     *� �   �       F�       ��     � � �� �   /     *� �   �       F�       ��  �� �   /     *� �   �       F�       ��  �� �   /     *� �   �       F�       ��  �� �   /     *� �   �       F�       ��  �� �   /     *� �   �       F�       ��  �     � �  �   {      D��� � � ��[��� %��Y��� k��Y��� ̻�Y��� һ�Y��� ر   �       F  I  P % [ / ^ 9 d�    @ �   ��     �� 	  � � � 
