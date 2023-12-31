����   4 ~	      /org/openide/explorer/view/TreeView$PopupAdapter this$0 $Lorg/openide/explorer/view/TreeView;
  	 
   ,org/openide/awt/MouseUtils$PopupMouseAdapter <init> ()V	      "org/openide/explorer/view/TreeView tree Ljavax/swing/JTree;
      javax/swing/JTree cancelEditing
      java/awt/event/MouseEvent getX ()I
      getY
  " # $ getRowForLocation (II)I
  & ' ( isRootVisible ()Z	  * + , manager &Lorg/openide/explorer/ExplorerManager; . org/openide/nodes/Node
 0 1 2 3 4 $org/openide/explorer/ExplorerManager setSelectedNodes ([Lorg/openide/nodes/Node;)V 6  java/beans/PropertyVetoException	  8 9 : $assertionsDisabled Z < java/lang/AssertionError
 ; >  ? (Ljava/lang/Object;)V
  A B C isRowSelected (I)Z
  E F G setSelectionRow (I)V
  I J K getComponent ()Ljava/awt/Component;
 M N O P Q javax/swing/SwingUtilities convertPoint <(Ljava/awt/Component;IILjava/awt/Component;)Ljava/awt/Point;
 S T U  V java/awt/Point ()D
 S X   V
  Z [ \ createPopup (II)V
 ^ _ ` a ( java/lang/Class desiredAssertionStatus '(Lorg/openide/explorer/view/TreeView;)V Code LineNumberTable LocalVariableTable this 1Lorg/openide/explorer/view/TreeView$PopupAdapter; MethodParameters 	showPopup (Ljava/awt/event/MouseEvent;)V exc "Ljava/beans/PropertyVetoException; p Ljava/awt/Point; e Ljava/awt/event/MouseEvent; selRow I StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile TreeView.java InnerClasses PopupAdapter | org/openide/awt/MouseUtils PopupMouseAdapter        9 :           b  c   B     
*+� *� �    d   
   � 	� e       
 f g     
    h    �  i j  c  J     �*� � � *� � +� +� � !=� 1*� � %� '*� � )� -� /� /N� 7� � ;Y-� =�� *� � � @� *� � � D� *� � %� (+� H+� +� *� � LN*� -� R�-� W�� Y�  , : = 5  d   :   � 
� � ,� :� =� >� M� P� ^� i� x  � � e   4  >  k l  �  m n    � f g     � o p   � q r  s    � =     5$ h    o   t     u    v   c   4      � ]� � � 7�    d      � s    @  w    x y       z    { }	