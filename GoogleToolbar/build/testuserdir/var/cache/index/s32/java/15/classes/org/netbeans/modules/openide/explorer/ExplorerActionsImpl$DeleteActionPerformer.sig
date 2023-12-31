����   4 �	      Oorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$DeleteActionPerformer this$0 ;Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;
  	 
   Dorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$BaseAction <init> @(Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$1;)V	     confirmDelete Z
     	isEnabled ()Z
      9org/netbeans/modules/openide/explorer/ExplorerActionsImpl 
access$400 c(Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;)Lorg/openide/explorer/ExplorerManager;
       $org/openide/explorer/ExplorerManager getSelectedNodes ()[Lorg/openide/nodes/Node;
 " # $ % & org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; ( #org/openide/explorer/ExtendedDelete
 " * + , 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection; . / 0 1 2 java/util/Collection iterator ()Ljava/util/Iterator; 4 5 6 7  java/util/Iterator hasNext 4 9 : ; next ()Ljava/lang/Object; ' = > ? delete ([Lorg/openide/nodes/Node;)Z A java/io/IOException
 C D E F G org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
  I J ? 	doConfirm L org/openide/nodes/Node
  N O P setSelectedNodes ([Lorg/openide/nodes/Node;)V R  java/beans/PropertyVetoException
  T U P 	doDestroy	 W X Y Z [ org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;
 W ] ^ _ 
readAccess (Ljava/lang/Runnable;)V	  a b  $assertionsDisabled
 d e f g  java/awt/EventQueue isDispatchThread i java/lang/AssertionError
 h k  l ()V
  n o p 
setEnabled (Z)V	 r s t u v java/lang/Boolean TRUE Ljava/lang/Boolean; x customDelete
 K z { | getValue &(Ljava/lang/String;)Ljava/lang/Object;
 r ~  � equals (Ljava/lang/Object;)Z
 K � � � getDisplayName ()Ljava/lang/String;
 � � � � � ,org/netbeans/modules/openide/explorer/Bundle MSG_ConfirmDeleteObject &(Ljava/lang/Object;)Ljava/lang/String;
 � � � � MSG_ConfirmDeleteObjectTitle
 � � � � � java/lang/Integer valueOf (I)Ljava/lang/Integer;
 � � � � MSG_ConfirmDeleteObjects
 � � � � MSG_ConfirmDeleteObjectsTitle � )org/openide/NotifyDescriptor$Confirmation � org/openide/NotifyDescriptor
 � �  � ((Ljava/lang/Object;Ljava/lang/String;I)V	 � � � � 
YES_OPTION Ljava/lang/Object;
 � � � % � org/openide/DialogDisplayer ()Lorg/openide/DialogDisplayer;
 � � � � notify 2(Lorg/openide/NotifyDescriptor;)Ljava/lang/Object;
 � ~ � java/lang/Object
 K � � l destroy
 � � � �  java/lang/Class desiredAssertionStatus � java/lang/Runnable ?(Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;Z)V Code LineNumberTable LocalVariableTable this QLorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$DeleteActionPerformer; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; actionPerformed (Ljava/awt/event/ActionEvent;)V e Ljava/io/IOException; del %Lorg/openide/explorer/ExtendedDelete; ev Ljava/awt/event/ActionEvent; em &Lorg/openide/explorer/ExplorerManager; sel [Lorg/openide/nodes/Node; StackMapTable � run i I message Ljava/lang/String; title desc Lorg/openide/NotifyDescriptor; � java/lang/String $Lorg/openide/util/NbBundle$Messages; value # {0} - name <MSG_ConfirmDeleteObject=Are you sure you want to delete {0}? 4MSG_ConfirmDeleteObjectTitle=Confirm Object Deletion # {0} - number of objects IMSG_ConfirmDeleteObjects=Are you sure you want to delete these {0} items? >MSG_ConfirmDeleteObjectsTitle=Confirm Multiple Object Deletion <clinit> 
SourceFile ExplorerActionsImpl.java InnerClasses DeleteActionPerformer 
BaseAction � ;org/netbeans/modules/openide/explorer/ExplorerActionsImpl$1 Confirmation � "org/openide/util/NbBundle$Messages � org/openide/util/NbBundle Messages      �       b            �  �   L     *+� *� *� �    �      � 
� � �        � �         �   	         �   /     *� �    �      � �        � �   �     �    � �  �  n     �*� � M,� �,� N-� -�� �� !'� )� - :� 3 � )� 8 � ':-� < � �� :� B����*� � *-� H� ,� K� M� :*-� S� V*� \�  A L P @ j r u Q  �   R   � � � � � � � A� M� P� R� W� X� [� j� r� u� w� |� �� �   >  R  � �  A  � �    � � �     � � �   | � �   r � �  �   , �  �  � �  4� ! 'B @� � J Q �    �   �     �    � l  �   U     � `� � c� � hY� j�*� m�    �      � � � �        � �   �     �     �    J ?  �  f     q66+�� !� q+2w� y� }� 	6� 	����� �+�� +2� �� �M� �N� +�� �� �M� �N� �Y,-� �:� �� �� �� ��    �   N   � � � � "� %� +� 0� 2� 8� ;� >� B� I� K� N� R� V� b� �   \ 	  % � �  B  � �  F  � �    q � �     q � �  R  � �  V  � �   n x   b  � �  �   - �    �    � �    � � �   �    �   �     �  �[ s �s �s �s �s �s �  U P  �   �     =+�� +2� �� N-� B����     @  �      � � � � � � � �   *    � �    � �     � �      � �  �    � N @�  �    �   � l  �   4      � �� � � `�    �      � �    @  �    � �   *    �    �
 �     � � � 	 � � �&	