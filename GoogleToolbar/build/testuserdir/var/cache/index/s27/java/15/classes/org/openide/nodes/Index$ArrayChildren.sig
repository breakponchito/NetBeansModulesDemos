Źžŗ¾   4 
      %org/openide/nodes/Index$ArrayChildren <init> (Ljava/util/List;)V
  	 
    org/openide/nodes/Children$Array (Ljava/util/Collection;)V  'org/openide/nodes/Index$ArrayChildren$1
     *(Lorg/openide/nodes/Index$ArrayChildren;)V	     support Lorg/openide/nodes/Index;  java/util/ArrayList
     ()V	     MUTEX Lorg/openide/util/Mutex;  'org/openide/nodes/Index$ArrayChildren$2
  !  " ,(Lorg/openide/nodes/Index$ArrayChildren;[I)V
 $ % & ' ( org/openide/util/Mutex postWriteRequest (Ljava/lang/Runnable;)V	  * + , PR #Lorg/openide/util/Mutex$Privileged;
 . / 0 1  !org/openide/util/Mutex$Privileged enterReadAccess
 3 4 5 6 7 org/openide/nodes/Index$Support showIndexedCustomizer (Lorg/openide/nodes/Index;)V
 . 9 :  exitReadAccess < = > ? @ org/openide/nodes/Index move (II)V < B C @ exchange	  E F G nodes Ljava/util/Collection; I java/util/List H K L M indexOf (Ljava/lang/Object;)I < O P Q addChangeListener %(Ljavax/swing/event/ChangeListener;)V < S T Q removeChangeListener
  V W X initCollection ()Ljava/util/List; Code LineNumberTable LocalVariableTable this 'Lorg/openide/nodes/Index$ArrayChildren; ar Ljava/util/List; LocalVariableTypeTable *Ljava/util/List<Lorg/openide/nodes/Node;>; MethodParameters 	Signature -(Ljava/util/List<Lorg/openide/nodes/Node;>;)V ,()Ljava/util/List<Lorg/openide/nodes/Node;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; reorder ([I)V perm [I StackMapTable n java/lang/Throwable x I y moveUp (I)V moveDown (Lorg/openide/nodes/Node;)I node Lorg/openide/nodes/Node; chl "Ljavax/swing/event/ChangeListener; ()Ljava/util/Collection; 
SourceFile 
Index.java InnerClasses ArrayChildren  org/openide/nodes/Children Array 
Privileged Support !    <            Y   4     *· ±    Z   
   * + [        \ ]       Y   `     *+· *» Y*· µ ±    Z      1 4 B [        \ ]      ^ _  `        ^ a  b    ^   c    d  W X  Y   2     » Y· °    Z      N [        \ ]   c    e f     g    h i  Y   H     ² » Y*+·  ¶ #±    Z   
   V b [        \ ]      j k  b    j   h   Y   t     ² )¶ -*ø 2² )¶ 8§ L² )¶ 8+æ±    
     Z      h i 
k l k l m [        \ ]   l    S m  ? @  Y   N     *“ ¹ ; ±    Z   
   x y [         \ ]      o p     q p  b   	 o  q   C @  Y   N     *“ ¹ A ±    Z   
     [         \ ]      o p     q p  b   	 o  q   r s  Y   F     *“ d¹ A ±    Z   
     [        \ ]      o p  b    o   t s  Y   F     *“ `¹ A ±    Z   
     [        \ ]      o p  b    o   L u  Y        %² )¶ -*“ DĄ H+¹ J =² )¶ 8¬N² )¶ 8-æ         Z        ”  ” #¢ [       % \ ]     % v w  l    \ m b    v   P Q  Y   C     *“ +¹ N ±    Z   
   « 
¬ [        \ ]      x y  b    x   T Q  Y   C     *“ +¹ R ±    Z   
   “ 
µ [        \ ]      x y  b    x D W z  Y   /     *¶ U°    Z      # [        \ ]   f     g    {    | }   2   < ~ 	    	               . $   3 < 	