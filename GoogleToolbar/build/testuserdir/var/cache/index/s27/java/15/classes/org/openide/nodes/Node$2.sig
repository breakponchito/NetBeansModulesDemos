����   4 /	      org/openide/nodes/Node$2 this$0 Lorg/openide/nodes/Node;
  	 
   java/lang/Object <init> ()V
      org/openide/nodes/Node 
access$000 6(Lorg/openide/nodes/Node;)Lorg/openide/nodes/Children;
      org/openide/nodes/Children remove ([Lorg/openide/nodes/Node;)Z
     fireNodeDestroyed  java/lang/Runnable (Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable this Lorg/openide/nodes/Node$2; MethodParameters run p Lorg/openide/nodes/Children; StackMapTable 
SourceFile 	Node.java EnclosingMethod -  destroy InnerClasses                     >     
*+� *� �           ; !       
 " #     
    $    �  %      v     $*� � L+� +� Y*� S� W*� � �           = ? A E #F !       $ " #     & '  (    �    )    * +     , .   
        