����   4 M	      Torg/netbeans/swing/tabcontrol/plaf/AbstractTabDisplayerUI$DisplayerHierarchyListener this$0 ;Lorg/netbeans/swing/tabcontrol/plaf/AbstractTabDisplayerUI;
  	 
   java/lang/Object <init> ()V
      java/awt/event/HierarchyEvent 
getChanged ()Ljava/awt/Component;
      9org/netbeans/swing/tabcontrol/plaf/AbstractTabDisplayerUI 
access$300 i(Lorg/netbeans/swing/tabcontrol/plaf/AbstractTabDisplayerUI;)Lorg/netbeans/swing/tabcontrol/TabDisplayer;
     getChangeFlags ()J       
    !  
access$400
 # $ % & ' *org/netbeans/swing/tabcontrol/TabDisplayer 	isShowing ()Z
 ) * + , - javax/swing/ToolTipManager sharedInstance ()Ljavax/swing/ToolTipManager;
  / 0  
access$500
 ) 2 3 4 registerComponent (Ljavax/swing/JComponent;)V
  6 7  
access$600
 ) 9 : 4 unregisterComponent <  java/awt/event/HierarchyListener >(Lorg/netbeans/swing/tabcontrol/plaf/AbstractTabDisplayerUI;)V Code LineNumberTable LocalVariableTable this VLorg/netbeans/swing/tabcontrol/plaf/AbstractTabDisplayerUI$DisplayerHierarchyListener; MethodParameters hierarchyChanged "(Ljava/awt/event/HierarchyEvent;)V e Ljava/awt/event/HierarchyEvent; StackMapTable 
SourceFile AbstractTabDisplayerUI.java InnerClasses DisplayerHierarchyListener !    ;         =  >   B     
*+� *� �    ?   
   w 	y @       
 A B     
    C    �  D E  >   �     F+� *� � � :+�  	�� -*� � � "� � (*� � .� 1� � (*� � 5� 8�    ?      | } (~ 8� E� @       F A B     F F G  H    8 C    F    I    J K   
    L 