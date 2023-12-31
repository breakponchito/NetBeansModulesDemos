����   4 I
      java/lang/Object <init> ()V
  	 
   "org/openide/loaders/DataLoaderPool 
getDefault &()Lorg/openide/loaders/DataLoaderPool;
     addOperationListener *(Lorg/openide/loaders/OperationListener;)V
      $org/openide/loaders/BrokenDataShadow checkValidity (Ljava/util/EventObject;)V
    org/openide/loaders/DataShadow
      'org/openide/loaders/ShadowChangeAdapter checkBrokenDataShadows
    !  checkDataShadows # %org/openide/loaders/OperationListener Code LineNumberTable LocalVariableTable this )Lorg/openide/loaders/ShadowChangeAdapter; ev Ljava/util/EventObject; MethodParameters operationPostCreate '(Lorg/openide/loaders/OperationEvent;)V $Lorg/openide/loaders/OperationEvent; operationCopy ,(Lorg/openide/loaders/OperationEvent$Copy;)V )Lorg/openide/loaders/OperationEvent$Copy; operationMove ,(Lorg/openide/loaders/OperationEvent$Move;)V )Lorg/openide/loaders/OperationEvent$Move; operationDelete operationRename .(Lorg/openide/loaders/OperationEvent$Rename;)V +Lorg/openide/loaders/OperationEvent$Rename; operationCreateShadow operationCreateFromTemplate 
SourceFile ShadowChangeAdapter.java InnerClasses ? 'org/openide/loaders/OperationEvent$Copy A "org/openide/loaders/OperationEvent Copy D 'org/openide/loaders/OperationEvent$Move Move G )org/openide/loaders/OperationEvent$Rename Rename      "   
      $   >     *� � *� �    %       #  (  ) &        ' (       $   3     *� �    %   
    -  . &        ) *   +    )    !   $   3     *� �    %   
    2  3 &        ) *   +    )    , -  $   =     +� �    %   
    =  > &        ' (      ) .  +    )    / 0  $   5      �    %       D &        ' (      ) 1  +    )    2 3  $   E     	+� +� �    %       J  K  L &       	 ' (     	 ) 4  +    )    5 -  $   =     +� �    %   
    R  S &        ' (      ) .  +    )    6 7  $   E     	+� +� �    %       Y  Z  [ &       	 ' (     	 ) 8  +    )    9 0  $   5      �    %       a &        ' (      ) 1  +    )    : 0  $   =     +� �    %   
    g  h &        ' (      ) 1  +    )    ;    < =     > @ B  C @ E  F @ H 