����   4 C
      java/lang/Object <init> ()V	  	 
   ;org/openide/actions/SaveAsTemplateAction$FolderNodeAcceptor 
rootFolder  Lorg/openide/loaders/DataFolder;  org/openide/loaders/DataFolder
      org/openide/nodes/Node 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
     equals (Ljava/lang/Object;)Z
      %org/openide/actions/NewTemplateAction getTemplateRoot ()Lorg/openide/nodes/Node;	    ! " instance =Lorg/openide/actions/SaveAsTemplateAction$FolderNodeAcceptor;
  $  % #(Lorg/openide/loaders/DataFolder;)V ' org/openide/nodes/NodeAcceptor Code LineNumberTable LocalVariableTable this root MethodParameters acceptNodes ([Lorg/openide/nodes/Node;)Z n Lorg/openide/nodes/Node; df nodes [Lorg/openide/nodes/Node; res Z StackMapTable getInstance ?()Lorg/openide/actions/SaveAsTemplateAction$FolderNodeAcceptor; 
SourceFile SaveAsTemplateAction.java InnerClasses > (org/openide/actions/SaveAsTemplateAction FolderNodeAcceptor A org/openide/nodes/Node$Cookie Cookie 0    &  
 ! "           %  (   F     
*� *+� �    )       �  � 	 � *       
 + "     
 ,   -    ,    . /  (   �     9=+� 	+�� =� )+2N-� � :� *� � � � =�    )   "    �  �  �  �  �   � % � 7 � *   4   " 0 1     2     9 + "     9 3 4   7 5 6  7    � � #  @�   -    3    8 9  (   a     !� � � K� � � Y*� #� � �    )       �  �  � *           7    �    :    ; <      = ?  @  B	