����   4 =
      %javax/swing/DefaultListSelectionModel <init> ()V  java/lang/ThreadLocal
  	      .org/netbeans/swing/etable/ETableSelectionModel insertingLines Ljava/lang/ThreadLocal;	      java/lang/Boolean TRUE Ljava/lang/Boolean;
     set (Ljava/lang/Object;)V
     insertIndexInterval (IIZ)V
     ! get ()Ljava/lang/Object;
  # $  remove & javax/swing/ListSelectionModel
  ( ) * getSelectionMode ()I 	Signature ,Ljava/lang/ThreadLocal<Ljava/lang/Boolean;>; Code LineNumberTable LocalVariableTable this 0Lorg/netbeans/swing/etable/ETableSelectionModel; index I length before Z MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; StackMapTable 
SourceFile ETableSelectionModel.java            +    ,       -   >     *� *� Y� 	� 
�    .   
       /        0 1       -   b     *� 
� � *� �    .       # 
 $  % /   *     0 1      2 3     4 3     5 6  7    2   4   5   8     9    ) *  -   Z     *� 
� � � *� 
� "�*� '�    .       )  *  -  / /        0 1   :     8     9    ;    <