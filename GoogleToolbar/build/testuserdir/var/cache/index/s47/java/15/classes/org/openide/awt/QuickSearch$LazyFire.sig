����   4 s
      $org/openide/awt/QuickSearch$LazyFire <init> u(Lorg/openide/awt/QuickSearch;Lorg/openide/awt/QuickSearch$QS_FIRE;Ljava/lang/String;ZLjava/util/function/Consumer;)V
    	 X(Lorg/openide/awt/QuickSearch;Lorg/openide/awt/QuickSearch$QS_FIRE;Ljava/lang/String;Z)V	     this$0 Lorg/openide/awt/QuickSearch;
      java/lang/Object ()V	     fire %Lorg/openide/awt/QuickSearch$QS_FIRE;	     
searchText Ljava/lang/String;	     forward Z	    ! " newPrefixSetter Ljava/util/function/Consumer;
 $ % & ' ( org/openide/awt/QuickSearch 
access$300 K(Lorg/openide/awt/QuickSearch;)Lorg/openide/awt/QuickSearch$AnimationTimer;
 * + , -  *org/openide/awt/QuickSearch$AnimationTimer startProgressAnimation	 / 0 1 2 3 org/openide/awt/QuickSearch$5 .$SwitchMap$org$openide$awt$QuickSearch$QS_FIRE [I
 5 6 7 8 9 #org/openide/awt/QuickSearch$QS_FIRE ordinal ()I
 $ ; < = 
access$400 E(Lorg/openide/awt/QuickSearch;)Lorg/openide/awt/QuickSearch$Callback; ? @ A B C $org/openide/awt/QuickSearch$Callback quickSearchUpdate (Ljava/lang/String;)V ? E F G showNextSelection (Z)V ? I J K findMaxPrefix &(Ljava/lang/String;)Ljava/lang/String; M N O P Q java/util/function/Consumer accept (Ljava/lang/Object;)V
 * S T  stopProgressAnimation V java/lang/Runnable 	Signature 1Ljava/util/function/Consumer<Ljava/lang/String;>; W(Lorg/openide/awt/QuickSearch;Lorg/openide/awt/QuickSearch$QS_FIRE;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/awt/QuickSearch$LazyFire; MethodParameters F(Lorg/openide/awt/QuickSearch;Lorg/openide/awt/QuickSearch$QS_FIRE;Z)V t(Lorg/openide/awt/QuickSearch;Lorg/openide/awt/QuickSearch$QS_FIRE;Ljava/lang/String;Ljava/util/function/Consumer;)V LocalVariableTypeTable k(Lorg/openide/awt/QuickSearch$QS_FIRE;Ljava/lang/String;Ljava/util/function/Consumer<Ljava/lang/String;>;)V l(Lorg/openide/awt/QuickSearch$QS_FIRE;Ljava/lang/String;ZLjava/util/function/Consumer<Ljava/lang/String;>;)V run mp StackMapTable i java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile QuickSearch.java InnerClasses LazyFire QS_FIRE AnimationTimer Callback      U                  ! "  W    X         Y  Z   L     
*+,-� �    [   
   / 	0 \        
 ] ^     
      
    _              `  Z   K     	*+,� �    [   
   3 4 \        	 ] ^     	      	    _              	  Z   W     *+,-� �    [   
   7 
8 \   *     ] ^                     _                 a  Z   i     *+,-� �    [   
   < 
= \   *     ] ^                  ! "  b        ! X  _           !   W    c      Z   �     '*+� 
*� *,� *-� *� *� +� #� )�    [      @ 	A C D E F &G \   4    ' ] ^     '      '      '      ' ! "  b       ' ! X  _              !   W    d  e   Z   �     �� .*� � 4.�   Z            ,   ?*� 
� :*� � > � 1*� 
� :*� � D � *� 
� :*� � H L*� +� L *� 
� #� R� M*� 
� #� R,��    e r    [   2   L $M 4N 7O GP JQ [R eV oW rV }W X \     [ 
 f     � ] ^   g    $L h j     k    l    m n   *   $ o  5 $ p@ * $ q  /     ? $ r	