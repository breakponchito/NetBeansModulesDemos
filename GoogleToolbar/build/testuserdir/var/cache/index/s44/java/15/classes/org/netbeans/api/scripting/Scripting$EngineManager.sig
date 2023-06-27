����   4f
      2org/netbeans/api/scripting/Scripting$EngineManager postConfigure 8(Ljavax/script/ScriptEngine;)Ljavax/script/ScriptEngine;
  	 
    javax/script/ScriptEngineManager <init> (Ljava/lang/ClassLoader;)V	     allowAllAccess Z
     getBindings ()Ljavax/script/Bindings; 
      java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;      ! javax/script/Bindings put 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
  # $ % populateExtras F(Lorg/netbeans/api/scripting/Scripting$EngineManager;)Ljava/util/List;	  ' ( ) extra Ljava/util/List; + , - . / java/util/List iterator ()Ljava/util/Iterator; 1 2 3 4 5 java/util/Iterator hasNext ()Z 1 7 8 9 next ()Ljava/lang/Object; ;  javax/script/ScriptEngineFactory : = > ? getEngineName ()Ljava/lang/String;
  A B C registerEngineName 7(Ljava/lang/String;Ljavax/script/ScriptEngineFactory;)V : E F G getExtensions ()Ljava/util/List; I java/lang/String
  K L C registerEngineExtension : N O G getMimeTypes
  Q R C registerEngineMimeType T java/util/ArrayList
 S V  W ()V
 Y Z [ \ ] org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; _ )org/netbeans/spi/scripting/EngineProvider
 Y a b c 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection; e , f java/util/Collection ^ h i j 	factories 4(Ljavax/script/ScriptEngineManager;)Ljava/util/List; + l m n addAll (Ljava/util/Collection;)Z
 p q r s t java/util/Collections unmodifiableList "(Ljava/util/List;)Ljava/util/List;
  v w G getEngineFactories + y z { listIterator ()Ljava/util/ListIterator; } 2 ~ java/util/ListIterator } 7 : � � G getNames � Graal.js + � � � contains (Ljava/lang/Object;)Z
  � � � isNashornFactory %(Ljavax/script/ScriptEngineFactory;)Z � Horg/netbeans/api/scripting/Scripting$EngineManager$GraalJSWrapperFactory
 � �  � Y(Lorg/netbeans/api/scripting/Scripting$EngineManager;Ljavax/script/ScriptEngineFactory;)V } � � � set (Ljava/lang/Object;)V
 p � � � reverse (Ljava/util/List;)V
  � � � getEngineByExtension /(Ljava/lang/String;)Ljavax/script/ScriptEngine;
  � � � getEngineByMimeType
  � � � getEngineByName � � � � � javax/script/ScriptEngine 
getFactory $()Ljavax/script/ScriptEngineFactory; � javax/script/ScriptContext � �  � (I)Ljavax/script/Bindings; � polyglot.js.nashorn-compat � polyglot.js.allowHostAccess �  polyglot.js.allowHostClassLookup   � � � test o(Lorg/netbeans/api/scripting/Scripting$EngineManager;Ljavax/script/ScriptEngine;)Ljava/util/function/Predicate;
  � �  secureEngineEngine	  � � � nashornScriptEngineFactory Ljava/lang/Class;
 � � � � � java/lang/Class 
isInstance : � � � getClass ()Ljava/lang/Class;
 � � � � getClassLoader ()Ljava/lang/ClassLoader; � %jdk.nashorn.api.scripting.ClassFilter
 � � � � forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class; � getScriptEngine
 � � � � 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;  � � � invoke w(Lorg/netbeans/api/scripting/Scripting$EngineManager;[Ljavax/script/ScriptEngine;)Ljava/lang/reflect/InvocationHandler;
 � � � � � java/lang/reflect/Proxy newProxyInstance b(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object; � java/lang/Object
 � � � � � java/lang/reflect/Method 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � java/lang/NoSuchMethodException �  java/lang/ClassNotFoundException �  java/lang/IllegalAccessException � "java/lang/IllegalArgumentException � +java/lang/reflect/InvocationTargetException
  � � � allowHostClassLookup 0(Ljavax/script/ScriptEngine;Ljava/lang/String;)Z � 4jdk.nashorn.api.scripting.NashornScriptEngineFactory
 � � � � %(Ljava/lang/String;)Ljava/lang/Class; 	Signature 4Ljava/util/List<Ljavax/script/ScriptEngineFactory;>; Ljava/lang/Class<*>; (ZLjava/lang/ClassLoader;)V Code LineNumberTable LocalVariableTable ext Ljava/lang/String; mime f "Ljavax/script/ScriptEngineFactory; this 4Lorg/netbeans/api/scripting/Scripting$EngineManager; loader Ljava/lang/ClassLoader; StackMapTable java/lang/ClassLoader MethodParameters p +Lorg/netbeans/spi/scripting/EngineProvider; m LocalVariableTypeTable j(Lorg/netbeans/api/scripting/Scripting$EngineManager;)Ljava/util/List<Ljavax/script/ScriptEngineFactory;>; all it Ljava/util/ListIterator; <Ljava/util/ListIterator<Ljavax/script/ScriptEngineFactory;>; 6()Ljava/util/List<Ljavax/script/ScriptEngineFactory;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	extension mimeType 	shortName b Ljavax/script/Bindings; eng Ljavax/script/ScriptEngine; factoryClass factoryClassLoader filterClass createMethod Ljava/lang/reflect/Method; filter Ljava/lang/Object; ex Ljava/lang/Exception; prototypeEngine engine [Ljavax/script/ScriptEngine; 6Ljava/lang/Class<+Ljavax/script/ScriptEngineFactory;>;/3 java/lang/Exception 	className lambda$secureEngineEngine$1 o([Ljavax/script/ScriptEngine;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object; proxy method args [Ljava/lang/Object; 
Exceptions= java/lang/Throwable lambda$postConfigure$0 s 
access$000 l(Lorg/netbeans/api/scripting/Scripting$EngineManager;Ljavax/script/ScriptEngine;)Ljavax/script/ScriptEngine; x0 x1 <clinit> klass "Ljava/lang/ClassNotFoundException; 
SourceFile Scripting.java BootstrapMethodsK
LMNOP "java/lang/invoke/LambdaMetafactory metafactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; �S
 T> �V (Ljava/lang/String;)ZX S(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;Z
 [56 InnerClasses^ $org/netbeans/api/scripting/Scripting EngineManager GraalJSWrapperFactoryb %java/lang/invoke/MethodHandles$Lookupd java/lang/invoke/MethodHandles Lookup 0       ( )  �    �       � �  �    �        {     �*,� *� � *� � �  W**� "� &*� &� * N-� 0 � |-� 6 � ::*� < � @� D � * :� 0 � � 6 � H:*� J���� M � * :� 0 � � 6 � H:*� P������      >    �  � 
 �  �  � & � D � Q � u � } � � � � � � � � � � �   >  u   �   D k    �	
     �      �    . �     �  1� . : 1�  �  1�  �    	      
 $ %    �     ?� SY� UL� X^� `� d M,� 0 � ,� 6 � ^N+-*� g � k W���+� o�          �  � ) � 7 � : �      )     ?
    7 ( )       7 ( �     �  + 1� #      �     w G        h� SY� UL+*� u� k W+*� &� k W+� x M,� | � 7,�  � :N-� � �� � � *-� �� ,� �Y*-� �� � ���+� �+�      .    �  �  �  � % � . � 8 � P � _ � b � f �   *  8 '    h	
    ` )  % C       ` �  % C     � % + }� * :�  �           � �    >     
**+� �� �          �       
	
     
              � �    >     
**+� �� �          �       
	
     
              � �    >     
**+� �� �          �       
	
     
                   �     j+� �+� � � � �� � � =+d� � M*� � ,�� �  W,�� �  W,�*+� �  �  W*+� � � �� 	*+� ��+�      .    �  �  �  � $ � + � 8 � E � U � b � h �      $ 1 !    j	
     j"#     � 1 �    "    � �    <     � �+� ��          �       	
             �    }  	   r� �Y+SM,2� � N-� � :� �:�� �:�� �YS� �:� �YS*,� �  � �:,-� �YS� �� �S,2�N,2�  	 l m � 	 l m � 	 l m � 	 l m � 	 l m �    .    � 	 �  �  � ! � + � = � T � i � m � n �   f 
  [   S$ �  ! L%  + B& �  = 0'(  T )*  n +,    r	
     r-#  	 i./       S$0  + B& �     � m   �1 2   -    � �    C     *� �          �        	
     .#    4    	. 4  56    d     *+22� H� �� �          �   4    	
     ./    7*    8(    9: ;    <> �    E     *+,� ��          �        	
     "#    ? @A    :     *+� �          {       B
     C#  D W    �     �� �K� LHK*� ��     	 �        �  � 	 � 
 �  �  �       E �   
 +F   E �        E �    E �      I ��  � G   HI    J QRUJ WYW\     ]_  � ` ace 