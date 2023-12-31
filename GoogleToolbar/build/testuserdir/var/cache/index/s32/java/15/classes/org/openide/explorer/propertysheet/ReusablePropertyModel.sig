Êþº¾   4 
      java/lang/Object <init> ()V	  	 
   8org/openide/explorer/propertysheet/ReusablePropertyModel PROPERTY !Lorg/openide/nodes/Node$Property;	     env 8Lorg/openide/explorer/propertysheet/ReusablePropertyEnv;
      6org/openide/explorer/propertysheet/ReusablePropertyEnv setReusablePropertyModel =(Lorg/openide/explorer/propertysheet/ReusablePropertyModel;)V
     getProperty #()Lorg/openide/nodes/Node$Property;
       ,org/openide/explorer/propertysheet/PropUtils isExternallyEdited $(Lorg/openide/nodes/Node$Property;)Z
  " # $ getPropertyEditor ?(Lorg/openide/nodes/Node$Property;Z)Ljava/beans/PropertyEditor;	  & ' ( DEBUG Z
  * +  checkThread
  - # . ()Ljava/beans/PropertyEditor; 0 1 2 3 4 java/beans/PropertyEditor getClass ()Ljava/lang/Class;
 6 7 8 9 4 org/openide/nodes/Node$Property getValueType
 6 ; < = getValue ()Ljava/lang/Object; ?  java/lang/IllegalAccessException
 A B C D E org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
 6 G H I setValue (Ljava/lang/Object;)V
  K L = getNode N ,org/openide/explorer/propertysheet/ProxyNode
 M P Q R getOriginalNodes ()[Lorg/openide/nodes/Node;
 T U V W X javax/swing/SwingUtilities isEventDispatchThread ()Z Z java/lang/IllegalStateException \ 9Reusable property model accessed from off the AWT thread.
 Y ^  _ (Ljava/lang/String;)V a netbeans.reusable.strictthreads
 c d e f g java/lang/Boolean 
getBoolean (Ljava/lang/String;)Z i 2org/openide/explorer/propertysheet/ExPropertyModel ;(Lorg/openide/explorer/propertysheet/ReusablePropertyEnv;)V Code LineNumberTable LocalVariableTable this :Lorg/openide/explorer/propertysheet/ReusablePropertyModel; MethodParameters clear addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V l #Ljava/beans/PropertyChangeListener; removePropertyChangeListener p StackMapTable getPropertyEditorClass getPropertyType | java/lang/Class iae "Ljava/lang/IllegalAccessException; 
Exceptions  +java/lang/reflect/InvocationTargetException v Ljava/lang/Object; getBeans ()[Ljava/lang/Object; getFeatureDescriptor  ()Ljava/beans/FeatureDescriptor; setProperty $(Lorg/openide/nodes/Node$Property;)V <clinit> 
SourceFile ReusablePropertyModel.java InnerClasses  org/openide/nodes/Node Property      h   ' (                j  k   X     *· *µ *+µ +*¶ ±    l       6  2 	 7  8  9 m        n o         p         q   k   4     *µ ±    l   
    <  = m        n o    r s  k   5      ±    l       B m        n o      t u  p    t    v s  k   5      ±    l       G m        n o      t u  p    t    # .  k   w     *¶ L++¸  § ¸ !°    l   
    J  O m        n o     w   x   # ÿ    6  6ÿ     6  6  y 4  k   N     ² % ¸ )*¶ ,¹ / °    l       S  T 	 W m        n o   x    	  z 4  k   ^     ² % ¸ )*¶ ¦ § 
*¶ ¶ 5°    l       [  \ 	 _ m        n o   x    	F {  < =  k   u     ² % ¸ )*¶ ¶ :°L+¸ @°  	   >  l       c  d 	 h  i  j  m m       } ~     n o   x    	G >        H I  k        ² % ¸ )*¶ +¶ F§ M,¸ @±  	   >  l       q  r 	 v  y  w  x  z m        } ~     n o         x    	J >       p           k   w     3² % ¸ )*´ ¶ JÁ M *´ ¶ JÀ M¶ O°½ Y*´ ¶ JS°    l       }  ~ 	    $  m       3 n o   x    	     k   I     ² % ¸ )*¶ °    l          	  m        n o   x    	  +   k   :      ¸ S » YY[· ]¿±    l            x         k   /     *´ °    l        m        n o       k   >     *+µ ±    l   
       m        n o         p           k   !      	`¸ b³ %±    l       1          
  6  	