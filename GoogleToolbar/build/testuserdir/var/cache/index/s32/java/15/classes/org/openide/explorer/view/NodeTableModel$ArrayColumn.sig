����   4 A  (org/openide/explorer/view/NodeTableModel
      java/lang/Object <init> ()V	 
     4org/openide/explorer/view/NodeTableModel$ArrayColumn property !Lorg/openide/nodes/Node$Property;	 
    width I  OrderNumberTTV
      org/openide/nodes/Node$Property getValue &(Ljava/lang/String;)Ljava/lang/Object;  java/lang/Integer
      intValue ()I
  "  # (I)V
  % & ' setValue '(Ljava/lang/String;Ljava/lang/Object;)V Code LineNumberTable LocalVariableTable this 6Lorg/openide/explorer/view/NodeTableModel$ArrayColumn; getProperty #()Lorg/openide/nodes/Node$Property; setProperty $(Lorg/openide/nodes/Node$Property;)V MethodParameters getWidth setWidth getVisibleIndex order Ljava/lang/Integer; StackMapTable setVisibleIndex visibleIndex 
SourceFile NodeTableModel.java InnerClasses ArrayColumn ? org/openide/nodes/Node Property   
                     (   3     *� �    )   
     *        + ,    - .  (   /     *� 	�    )       *        + ,    / 0  (   >     *+� 	�    )   
   % & *        + ,         1        2    (   /     *� �    )      , *        + ,    3 #  (   >     *� �    )   
   3 4 *        + ,         1        4    (   b     *� 	� � L+� �+� �    )      : ; < *        + ,     5 6  7    �    8 #  (   J     *� 	� Y� !� $�    )   
   C D *        + ,      9   1    9    :    ; <     
  =   > @	