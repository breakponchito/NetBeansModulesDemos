����   4 b  $org/openide/explorer/ExplorerManager	      4org/openide/explorer/ExplorerManager$1SetRootContext this$0 &Lorg/openide/explorer/ExplorerManager;	  
   	val$value Lorg/openide/nodes/Node;
      java/lang/Object <init> ()V
     
access$600 :(Lorg/openide/explorer/ExplorerManager;)Ljava/lang/Object;
     
access$700 @(Lorg/openide/explorer/ExplorerManager;)Lorg/openide/nodes/Node;
       org/openide/nodes/Node equals (Ljava/lang/Object;)Z
  " # $ addRemoveListeners (Z)V
  & ' ( 
access$702 X(Lorg/openide/explorer/ExplorerManager;Lorg/openide/nodes/Node;)Lorg/openide/nodes/Node;
  * + , 
access$800 H(Lorg/openide/explorer/ExplorerManager;)Lorg/openide/nodes/NodeListener;
  . / 0 removeNodeListener #(Lorg/openide/nodes/NodeListener;)V
  2 3 0 addNodeListener 5 rootContext
  7 8 9 	fireInAWT 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
  ; < = getSelectedNodes ()[Lorg/openide/nodes/Node;
  ? @ A 
access$900 Z(Lorg/openide/explorer/ExplorerManager;[Lorg/openide/nodes/Node;Lorg/openide/nodes/Node;)Z
  C D E setExploredContext 4(Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;)V G java/lang/Runnable A(Lorg/openide/explorer/ExplorerManager;Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable this 6Lorg/openide/explorer/ExplorerManager$1SetRootContext; MethodParameters 	Signature run oldValue newselection [Lorg/openide/nodes/Node; StackMapTable S W java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile ExplorerManager.java EnclosingMethod ^ _ setRootContext (Lorg/openide/nodes/Node;)V InnerClasses SetRootContext      F              H  I   C     *+� *,� 	*� �    J      � K        L M         N   	 �  O      P   I  Z     �*� � YL�*� � *� 	� � +ñ*� � !*� � M*� *� 	� %W,*� � )� -*� � *� � )� 1*� 4,*� � � 6*� � :N*� -*� � � >� � N*� *� � -� B+ç 
:+���  
  �    � �   � � �    J   >   � 
� � � &� .� :� E� V� g� o� �� �� �� �� K      . g Q   o & R S    � L M   T   $ �  � g  U�      V�  X     Y    Z    [ \     ] `   
     a  