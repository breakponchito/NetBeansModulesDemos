����   4 C	      "org/openide/windows/TopComponent$1 this$0 "Lorg/openide/windows/TopComponent;	   	 
 	val$brief Z
      java/lang/Object <init> ()V
       org/openide/windows/TopComponent 
access$000 V(Lorg/openide/windows/TopComponent;)Lorg/openide/windows/TopComponent$AttentionGetter;
      0org/openide/windows/TopComponent$AttentionGetter kill
      ! !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
  # $ % topComponentRequestAttention %(Lorg/openide/windows/TopComponent;)V
  ' (  reset
  *  %
  , - . 
access$002 �(Lorg/openide/windows/TopComponent;Lorg/openide/windows/TopComponent$AttentionGetter;)Lorg/openide/windows/TopComponent$AttentionGetter; 0 java/lang/Runnable &(Lorg/openide/windows/TopComponent;Z)V Code LineNumberTable LocalVariableTable this $Lorg/openide/windows/TopComponent$1; MethodParameters 	Signature run StackMapTable 
SourceFile TopComponent.java EnclosingMethod ? @ requestAttention (Z)V InnerClasses AttentionGetter      /  	 
           1  2   C     *+� *� *� �    3      f 4        5 6         7   	 � 	 8      9   2   �     ]*� � � *� � *� � � � A*� � � *� � "� -*� � � *� � � &� *� � Y*� � )� +W�    3   "   h i j %k 2l <m Io \q 4       ] 5 6   :      ;    < =     > A              B 