����   4 ?
      #org/openide/util/lookup/ProxyLookup <init> ()V
  	 
   "org/openide/filesystems/FileObject lookup )()Lorg/openide/filesystems/FileObjectLkp;  %org/openide/filesystems/FileObjectLkp
  
     assignLookup *(Lorg/openide/filesystems/FileObjectLkp;)V
     assign '(Lorg/openide/filesystems/FileObject;)V
      5org/openide/util/lookup/implspi/NamedServicesProvider createLookupFor -(Ljava/lang/Object;)Lorg/openide/util/Lookup;
    ! "  org/openide/util/lookup/Lookups 	singleton $ org/openide/util/Lookup
  & ' ( 
setLookups ([Lorg/openide/util/Lookup;)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/filesystems/FileObjectLkp; create N(Lorg/openide/filesystems/FileObject;Z)Lorg/openide/filesystems/FileObjectLkp; dest $Lorg/openide/filesystems/FileObject; Z lkp StackMapTable MethodParameters reassign K(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)V from to fo l Lorg/openide/util/Lookup; 
SourceFile FileObjectLkp.java 0            )   3     *� �    *   
        +        , -   ( . /  )   �     !*� M,� � � Y� M*,� ,*� ,�    *       #  $  %  &  '  ) +        ! 0 1     ! . 2    3 -  4    �   5   	 0   .   ( 6 7  )   p     *� M,� +,� ,+� �    *       ,  - 	 .  /  1 +         8 1      9 1    3 -  4    �   5   	 8   9       )   w     +� M,� +� M*� #Y,S� %�    *       3  4 	 5  7  8 +         , -      : 1    ; <  4    �  # 5    :    =    >