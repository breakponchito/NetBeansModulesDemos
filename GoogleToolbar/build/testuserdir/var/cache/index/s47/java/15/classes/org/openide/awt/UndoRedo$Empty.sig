����   4 0
      java/lang/Object <init> ()V  $javax/swing/undo/CannotUndoException
    $javax/swing/undo/CannotRedoException
 
      org/openide/awt/UndoRedo$Empty  org/openide/awt/UndoRedo Code LineNumberTable LocalVariableTable this  Lorg/openide/awt/UndoRedo$Empty; canUndo ()Z #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; canRedo undo 
Exceptions redo addChangeListener %(Ljavax/swing/event/ChangeListener;)V l "Ljavax/swing/event/ChangeListener; MethodParameters removeChangeListener getUndoPresentationName ()Ljava/lang/String; getRedoPresentationName 
SourceFile UndoRedo.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; InnerClasses Empty 1       	        /     *� �          X                    ,     �          [                            ,     �          `                            2     � Y� 	�          e                                  2     � 
Y� �          j                  
            !     5      �          o                " #  $    "            % !     5      �          s                " #  $    "            & '     -     �          w                      ( '     -     �          |                      )    * +     ,     -   .   
    / 