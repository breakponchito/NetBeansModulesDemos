����   4 4	      $org/openide/explorer/view/ListView$1 this$0 $Lorg/openide/explorer/view/ListView;
  	 
   java/lang/Object <init> ()V
      "org/openide/explorer/view/ListView isDisplayable ()Z	     model )Lorg/openide/explorer/view/NodeListModel;	      org/openide/nodes/Node EMPTY Lorg/openide/nodes/Node;
     ! " 'org/openide/explorer/view/NodeListModel setNode (Lorg/openide/nodes/Node;)V $ java/lang/Runnable '(Lorg/openide/explorer/view/ListView;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/explorer/view/ListView$1; MethodParameters run StackMapTable 
SourceFile ListView.java EnclosingMethod 2  removeNotify InnerClasses      #          %  &   >     
*+� *� �    '      n (       
 ) *     
    +    �  ,   &   S     *� � � *� � � � �    '      p 
s u (        ) *   -      .    / 0     1 3   
        