����   4 /
      java/lang/Object <init> ()V  $org/openide/loaders/OperationAdapter 
 %org/openide/loaders/OperationListener Code LineNumberTable LocalVariableTable this &Lorg/openide/loaders/OperationAdapter; operationPostCreate '(Lorg/openide/loaders/OperationEvent;)V ev $Lorg/openide/loaders/OperationEvent; MethodParameters operationCopy ,(Lorg/openide/loaders/OperationEvent$Copy;)V )Lorg/openide/loaders/OperationEvent$Copy; operationMove ,(Lorg/openide/loaders/OperationEvent$Move;)V )Lorg/openide/loaders/OperationEvent$Move; operationDelete operationRename .(Lorg/openide/loaders/OperationEvent$Rename;)V +Lorg/openide/loaders/OperationEvent$Rename; operationCreateShadow operationCreateFromTemplate 
SourceFile OperationAdapter.java InnerClasses % 'org/openide/loaders/OperationEvent$Copy ' "org/openide/loaders/OperationEvent Copy * 'org/openide/loaders/OperationEvent$Move Move - )org/openide/loaders/OperationEvent$Rename Rename !    	           /     *� �                               5      �                                            5      �           !                                 5      �           %                                 5      �           )                                 5      �           -                                 5      �           1                                  5      �           5                           !    " #     $ & (  ) & +  , & . 