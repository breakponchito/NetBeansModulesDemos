����   4 7
      java/lang/Object <init> ()V  java/lang/ref/WeakReference
  
   (Ljava/lang/Object;)V	      ?org/openide/explorer/propertysheet/PropertyPanel$BridgeAccessor panelRef Ljava/lang/ref/Reference;
      java/lang/ref/Reference get ()Ljava/lang/Object;  0org/openide/explorer/propertysheet/PropertyPanel
     
access$500 5(Lorg/openide/explorer/propertysheet/PropertyPanel;)Z  Borg/netbeans/modules/openide/explorer/PropertyPanelBridge$Accessor 	Signature MLjava/lang/ref/Reference<Lorg/openide/explorer/propertysheet/PropertyPanel;>; 5(Lorg/openide/explorer/propertysheet/PropertyPanel;)V Code LineNumberTable LocalVariableTable this ALorg/openide/explorer/propertysheet/PropertyPanel$BridgeAccessor; panel 2Lorg/openide/explorer/propertysheet/PropertyPanel; MethodParameters commit ()Z StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile PropertyPanel.java InnerClasses BridgeAccessor 5 9org/netbeans/modules/openide/explorer/PropertyPanelBridge Accessor 0               !    "  #   M     *� *� Y+� 	� �    $      ) * + %        & '      ( )  *    (    + ,  #   d     *� � � L+� +� ��    $      / 0 1 3 %        & '     ( )  -    �   .     /    0    1 2       3   4 6	