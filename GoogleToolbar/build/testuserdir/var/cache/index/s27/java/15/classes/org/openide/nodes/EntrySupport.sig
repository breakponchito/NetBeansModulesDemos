����   4 >
      java/lang/Object <init> ()V	  	 
   org/openide/nodes/EntrySupport children Lorg/openide/nodes/Children;
     
setEntries (Ljava/util/Collection;Z)V (Lorg/openide/nodes/Children;)V Code LineNumberTable LocalVariableTable this  Lorg/openide/nodes/EntrySupport; MethodParameters getNodesCount (Z)I optimalResult getNodes (Z)[Lorg/openide/nodes/Node; 	getNodeAt (I)Lorg/openide/nodes/Node; index 	testNodes ()[Lorg/openide/nodes/Node; isInitialized ()Z notifySetEntries (Ljava/util/Collection;)V entries Ljava/util/Collection; LocalVariableTypeTable ;Ljava/util/Collection<+Lorg/openide/nodes/Children$Entry;>; 	Signature >(Ljava/util/Collection<+Lorg/openide/nodes/Children$Entry;>;)V noCheck ?(Ljava/util/Collection<+Lorg/openide/nodes/Children$Entry;>;Z)V 
getEntries ()Ljava/util/List; 6()Ljava/util/List<Lorg/openide/nodes/Children$Entry;>; snapshot ,()Ljava/util/List<Lorg/openide/nodes/Node;>; refreshEntry %(Lorg/openide/nodes/Children$Entry;)V entry 
SourceFile EntrySupport.java InnerClasses :  org/openide/nodes/Children$Entry < org/openide/nodes/Children Entry                    F     
*� *+� �           #  $ 	 %        
       
                                           !   " #    $      %     Q     *+� �       
    <  =                & '  (        & )      &   *    +        	 &   ,   *    - . /  *    0  1 /  *    2  3 4      5    6    7 8   
  9 ; =