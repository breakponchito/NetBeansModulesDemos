����   4 A
      java/lang/Object <init> ()V	  	 
   0org/netbeans/modules/openide/awt/SavableRegistry LOOKUP Lorg/openide/util/Lookup;	     IC )Lorg/openide/util/lookup/InstanceContent;
      'org/openide/util/lookup/InstanceContent add (Ljava/lang/Object;)V
     remove  !org/openide/util/RequestProcessor  Savable Registry
      (Ljava/lang/String;)V	  " # $ RP #Lorg/openide/util/RequestProcessor;
  &  ' "(Ljava/util/concurrent/Executor;)V ) &org/openide/util/lookup/AbstractLookup
 ( +  , 3(Lorg/openide/util/lookup/AbstractLookup$Content;)V Code LineNumberTable LocalVariableTable this 2Lorg/netbeans/modules/openide/awt/SavableRegistry; getRegistry ()Lorg/openide/util/Lookup; register -(Lorg/netbeans/spi/actions/AbstractSavable;)V as *Lorg/netbeans/spi/actions/AbstractSavable; MethodParameters 
unregister <clinit> 
SourceFile SavableRegistry.java InnerClasses ? .org/openide/util/lookup/AbstractLookup$Content Content 1       # $                  -   /     *� �    .        /        0 1   	 2 3  -         � �    .       % 	 4 5  -   6     � *� �    .   
    )  * /        6 7   8    6   	 9 5  -   6     � *� �    .   
    -  . /        6 7   8    6    :   -   G      '� Y� � !� Y� !� %� � (Y� � *� �    .          !  "  ;    < =   
  > ( @ 	