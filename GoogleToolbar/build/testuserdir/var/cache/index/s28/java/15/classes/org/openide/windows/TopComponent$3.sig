����   4 4	      "org/openide/windows/TopComponent$3 this$0 "Lorg/openide/windows/TopComponent;
  	 
   java/lang/Object <init> ()V
       org/openide/windows/TopComponent 
access$000 V(Lorg/openide/windows/TopComponent;)Lorg/openide/windows/TopComponent$AttentionGetter;
      0org/openide/windows/TopComponent$AttentionGetter 
access$100 5(Lorg/openide/windows/TopComponent$AttentionGetter;)V
      !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
    ! " "topComponentCancelRequestAttention %(Lorg/openide/windows/TopComponent;)V $ java/lang/Runnable Code LineNumberTable LocalVariableTable this $Lorg/openide/windows/TopComponent$3; MethodParameters run StackMapTable 
SourceFile TopComponent.java EnclosingMethod 1  cancelRequestAttention InnerClasses AttentionGetter      #          "  %   >     
*+� *� �    &      � '       
 ( )     
    *    �  +   %   b     "*� � � *� � � � � *� � �    &      � 
� � !� '       " ( )   ,    	  -    . /     0 2              3 