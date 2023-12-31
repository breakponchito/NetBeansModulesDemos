Êþº¾   4 ¦
      &org/openide/nodes/Node$IndexedProperty <init> %(Ljava/lang/Class;Ljava/lang/Class;)V	  	 
   (org/openide/nodes/IndexedPropertySupport instance Ljava/lang/Object;	     setter Ljava/lang/reflect/Method;	     getter	     indexedSetter	     indexedGetter
     setDisplayName (Ljava/lang/String;)V
      setName
  " #  setShortDescription
  % & ' canRead ()Z )  java/lang/IllegalAccessException
 ( +  , ()V
 . / 0 1 2 java/lang/reflect/Method getDeclaringClass ()Ljava/lang/Class;
 4 5 6 7 8 java/beans/Beans getInstanceOf 7(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
  : ; 2 getValueType = java/lang/Object
 . ? @ A invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
 C D E F G !org/openide/nodes/PropertySupport cast 7(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
  I J ' canWrite
 . L M N getParameterTypes ()[Ljava/lang/Class;
 P Q R S 2 java/lang/Class getComponentType
 P U V ' isPrimitive
 < X Y 2 getClass [ [Ljava/lang/Object;
 ] ^ _ ` a org/openide/util/Utilities toPrimitiveArray '([Ljava/lang/Object;)Ljava/lang/Object;
  c d ' canIndexedRead
  f g 2 getElementType
 i j k l m java/lang/Integer valueOf (I)Ljava/lang/Integer;
  o p ' canIndexedWrite
 i r  s (I)V (Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V Code LineNumberTable LocalVariableTable this *Lorg/openide/nodes/IndexedPropertySupport; 	valueType Ljava/lang/Class; elementType LocalVariableTypeTable 2Lorg/openide/nodes/IndexedPropertySupport<TT;TE;>; Ljava/lang/Class<TT;>; Ljava/lang/Class<TE;>; MethodParameters 	Signature ©(Ljava/lang/Object;Ljava/lang/Class<TT;>;Ljava/lang/Class<TE;>;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V s Ljava/lang/String; StackMapTable getValue ()Ljava/lang/Object; validInstance 
Exceptions  "java/lang/IllegalArgumentException  +java/lang/reflect/InvocationTargetException ()TT; setValue (Ljava/lang/Object;)V val value TT; (TT;)V getIndexedValue (I)Ljava/lang/Object; index I (I)TE; setIndexedValue (ILjava/lang/Object;)V TE; (ITE;)V Z<T:Ljava/lang/Object;E:Ljava/lang/Object;>Lorg/openide/nodes/Node$IndexedProperty<TT;TE;>; 
SourceFile IndexedPropertySupport.java InnerClasses ¤ org/openide/nodes/Node IndexedProperty !                                  t  u   Ò     $*,-· *+µ *µ *µ *µ *µ ±    v       @  A  B  C  D  E # F w   R    $ x y     $      $ z {    $ | {    $      $      $      $    }        $ x ~     $ z     $ |          z   |                        u   P     *+· ±    v   
    L  M w        x y         }        x ~               u   P     *+· ±    v   
    S  T w        x y         }        x ~           #   u   P     *+· !±    v   
    Z  [ w        x y         }        x ~           & '  u   T     *´ Æ § ¬    v       a w        x y   }        x ~       @     u        2*¶ $ » (Y· *¿*´ *´ ¶ -¸ 3L*¶ 9*´ +½ <¶ >¸ B°    v       k  l  o  q w       2 x y        }       2 x ~             (         J '  u   T     *´ Æ § ¬    v       x w        x y   }        x ~       @     u   ÷     ]*¶ H » (Y· *¿*´ *´ ¶ -¸ 3M+N+Æ **´ ¶ K2¶ O¶ T +¶ W¶ O¶ T +À Z¸ \N*´ ,½ <Y-S¶ >W±    v   * 
             (  7  C  K  \  w   *    ] x y     ]     ?      =    }       ] x ~     ]        ý ; < <      (                d '  u   T     *´ Æ § ¬    v        w        x y   }        x ~       @     u        9*¶ b » (Y· *¿*´ *´ ¶ -¸ 3M*¶ e*´ ,½ <Y¸ hS¶ >¸ B°    v       ¢  £  ¦  ¨ w        9 x y     9         }       9 x ~             (                p '  u   T     *´ Æ § ¬    v       ¯ w        x y   }        x ~       @     u   ¸     ;*¶ n » (Y· *¿*´ *´ ¶ -¸ 3N*´ -½ <Y» iY· qSY,S¶ >W±    v       º  »  ¾  ¿ : À w   *    ; x y     ;      ;         }       ; x ~     ;              (      	                       ¡ ¢   
   £ ¥	