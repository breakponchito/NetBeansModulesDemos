����   4 g	      <org/openide/loaders/TemplateWizard1$DataShadowFilterChildren this$0 %Lorg/openide/loaders/TemplateWizard1;
  	 
   %org/openide/nodes/FilterNode$Children <init> (Lorg/openide/nodes/Node;)V  org/openide/loaders/DataShadow
      org/openide/nodes/Node 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;  org/openide/loaders/DataNode	      org/openide/nodes/Children LEAF Lorg/openide/nodes/Children;
     ?(Lorg/openide/loaders/DataObject;Lorg/openide/nodes/Children;)V
  ! " # getDisplayName ()Ljava/lang/String;
  % & ' getOriginal "()Lorg/openide/loaders/DataObject;
 ) * + , - org/openide/loaders/DataObject getNodeDelegate ()Lorg/openide/nodes/Node;
 ) / 0 1 
isTemplate ()Z 3 8org/openide/loaders/TemplateWizard1$DataShadowFilterNode
 2 5  6 I(Lorg/openide/nodes/Node;Lorg/openide/nodes/Children;Ljava/lang/String;)V
 8 9 : ; < #org/openide/loaders/TemplateWizard1 acceptDataObject #(Lorg/openide/loaders/DataObject;)Z
  >  ? @(Lorg/openide/loaders/TemplateWizard1;Lorg/openide/nodes/Node;)V
  A B C createNodes 3(Lorg/openide/nodes/Node;)[Lorg/openide/nodes/Node; Code LineNumberTable LocalVariableTable this >Lorg/openide/loaders/TemplateWizard1$DataShadowFilterChildren; or Lorg/openide/nodes/Node; MethodParameters dn Lorg/openide/loaders/DataNode; key n nodeName Ljava/lang/String; obj  Lorg/openide/loaders/DataObject; shadow  Lorg/openide/loaders/DataShadow; StackMapTable X java/lang/String #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; -(Ljava/lang/Object;)[Lorg/openide/nodes/Node; 
SourceFile TemplateWizard1.java InnerClasses DataShadowFilterChildren a org/openide/nodes/FilterNode Children d org/openide/nodes/Node$Cookie Cookie DataShadowFilterNode               ?  D   G     *+� *,� �    E       �  � 
 � F        G H      I J  K   	  I    B C  D  a 
    �+MN:,� � :� $� Y� � :�  N� $:� (M� ,)� � ):� H� .� � Y� 2Y,� -� 4S�*� � 7�  � Y� 2Y,� Y*� ,� =-� 4S�� �    E   F    �  �  �  �  �  � % � + � 2 � 8 � = � H � M � U � i � u � � � F   H  %  L M    � G H     � N J   � O J   � P Q   � R S   � T U  V    � 8     W )    ( K    N   Y     Z  D B [  D   3     	*+� � @�    E       � F       	 G H   K    N  Y     Z    \    ] ^   "   8 _   ` b 	 c  e	 2 8 f 
