����   4 6
      7org/openide/util/lookup/implspi/SharedClassObjectBridge <init> ()V  "org/openide/util/SharedClassObject
 
     java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z
 
    
asSubclass $(Ljava/lang/Class;)Ljava/lang/Class;
     
findObject 8(Ljava/lang/Class;Z)Lorg/openide/util/SharedClassObject;
 
    cast &(Ljava/lang/Object;)Ljava/lang/Object;  $org/openide/util/SharedClassObject$1 Code LineNumberTable LocalVariableTable this &Lorg/openide/util/SharedClassObject$1; %(Ljava/lang/Class;)Ljava/lang/Object; c Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<TT;>; StackMapTable 
Exceptions *  java/lang/InstantiationException ,  java/lang/IllegalAccessException MethodParameters 	Signature 1<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile SharedClassObject.java EnclosingMethod InnerClasses                  /     *� �           8           !     "     q     +� 	� ++� � � ��           : 	 ;  =           !      # $  %        # &  '     (     ) + -    #   .    / 0     1    2    3 4       5   
        