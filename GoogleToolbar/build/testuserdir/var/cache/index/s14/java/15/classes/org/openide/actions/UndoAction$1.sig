����   4 8
      java/lang/Object <init> ()V
  	 
   org/openide/actions/UndoAction getUndoRedo ()Lorg/openide/awt/UndoRedo;
     
access$000 "()Lorg/openide/actions/UndoAction;      org/openide/awt/UndoRedo canUndo ()Z
     
setEnabled (Z)V
     
access$100 "()Lorg/openide/actions/RedoAction;    !  canRedo
 #  $ org/openide/actions/RedoAction &  org/openide/actions/UndoAction$1 ( java/lang/Runnable Code LineNumberTable LocalVariableTable this "Lorg/openide/actions/UndoAction$1; run ur Lorg/openide/awt/UndoRedo; StackMapTable 
SourceFile UndoAction.java EnclosingMethod 6  updateStatus InnerClasses   %   '         )   /     *� �    *       b +        , -    .   )   �     )� L� � � +�  � � � � +�  � "�    *       d  f 
 g  j  k ( m +       ) , -    % / 0  1   	 �    2    3 4     5 7   
  %      