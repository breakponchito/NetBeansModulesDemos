����   4 4
      !org/openide/nodes/PropertySupport <init> L(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZZ)V   java/lang/IllegalAccessException 
 !Cannot write to ReadOnly property
     (Ljava/lang/String;)V  *org/openide/nodes/PropertySupport$ReadOnly J(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/nodes/PropertySupport$ReadOnly; name Ljava/lang/String; type Ljava/lang/Class; displayName shortDescription LocalVariableTypeTable 1Lorg/openide/nodes/PropertySupport$ReadOnly<TT;>; Ljava/lang/Class<TT;>; MethodParameters 	Signature O(Ljava/lang/String;Ljava/lang/Class<TT;>;Ljava/lang/String;Ljava/lang/String;)V setValue (Ljava/lang/Object;)V val Ljava/lang/Object; TT; 
Exceptions ) "java/lang/IllegalArgumentException + +java/lang/reflect/InvocationTargetException (TT;)V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ><T:Ljava/lang/Object;>Lorg/openide/nodes/PropertySupport<TT;>; 
SourceFile PropertySupport.java InnerClasses ReadOnly!               ~     *+,-� �       
   � �    4                                                                        !  " #     Z     
� Y	� �          �        
       
 $ %         
       
 $ &  '      ( *     $        , -     .         / 0    1 2   
    3	