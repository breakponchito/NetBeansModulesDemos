����   4 ?	      *org/openide/windows/DummyWindowManager$R$1 this$0 *Lorg/openide/windows/DummyWindowManager$R;
  	 
   java/util/HashSet <init> ()V
     iterator ()Ljava/util/Iterator;      java/util/Iterator hasNext ()Z     next ()Ljava/lang/Object;   org/openide/windows/TopComponent
      add (Ljava/lang/Object;)Z -(Lorg/openide/windows/DummyWindowManager$R;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/windows/DummyWindowManager$R$1; MethodParameters topComponent "Lorg/openide/windows/TopComponent; copy Ljava/util/HashSet; it Ljava/util/Iterator; LocalVariableTypeTable 7Ljava/util/HashSet<Lorg/openide/windows/TopComponent;>; 8Ljava/util/Iterator<Lorg/openide/windows/TopComponent;>; StackMapTable 	Signature :()Ljava/util/Iterator<Lorg/openide/windows/TopComponent;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile DummyWindowManager.java EnclosingMethod : (org/openide/windows/DummyWindowManager$R InnerClasses = &org/openide/windows/DummyWindowManager R                !  "   >     
*+� *� �    #      g $       
 % &     
    '    �     "   �     .� Y� L*� M,�  � ,�  � N+-� W���+� �    #      j k l m  n &o )p $   *     ( )    . % &    & * +   ! , -  .      & * /   ! , 0  1    �    2    3 4     5    2    / 6    7 8    9 	 ;     9 < >        