����   4"
      #org/openide/util/lookup/ProxyLookup <init> ()V	  	 
   5org/netbeans/modules/editor/mimelookup/MimePathLookup initialized Z  java/lang/NullPointerException  Mime path can't be null.
     (Ljava/lang/String;)V	     mimePath -Lorg/netbeans/api/editor/mimelookup/MimePath;
      +org/netbeans/api/editor/mimelookup/MimePath size ()I
     ! getMimeType (I)Ljava/lang/String; # 	text/base
 % & ' ( ) java/lang/String contains (Ljava/lang/CharSequence;)Z	  + ,  mimePathBanned . 8org/netbeans/modules/editor/mimelookup/MimePathLookup$1R
 - 0  1 :(Lorg/netbeans/modules/editor/mimelookup/MimePathLookup;)V
 3 4 5 6 7 org/openide/util/lookup/Lookups executeWith 0(Lorg/openide/util/Lookup;Ljava/lang/Runnable;)V	 - 9 : ; dataProviders  Lorg/openide/util/Lookup$Result;	  9	 - > ? ; mimeInitializers	  >
  B C  rebuild E java/util/ArrayList
 D 	  H I J LOG Ljava/util/logging/Logger;	 L M N O P java/util/logging/Level FINE Ljava/util/logging/Level;
 R S T U V java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z X java/lang/StringBuilder
 W  [ Rebuilding MimeLookup for '
 W ] ^ _ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  a b c getPath ()Ljava/lang/String; e '...
 W g h c toString
 R j k  fine
 m n o p q org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection; s t u v w java/util/Collection iterator ()Ljava/util/Iterator; y z { | } java/util/Iterator hasNext ()Z y  � � next ()Ljava/lang/Object; � 3org/netbeans/spi/editor/mimelookup/MimeDataProvider
  � � � isDefaultProvider 8(Lorg/netbeans/spi/editor/mimelookup/MimeDataProvider;)Z � - Querying MimeDataProvider( � ): 
 W � ^ � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � � � � 	getLookup H(Lorg/netbeans/api/editor/mimelookup/MimePath;)Lorg/openide/util/Lookup;
 D � � � add (Ljava/lang/Object;)Z
  � � � getIncludedPaths ()Ljava/util/List; � t � java/util/List s 
 D �  � (I)V � 8org/netbeans/spi/editor/mimelookup/MimeLookupInitializer � � � � child 4(Ljava/lang/String;)Lorg/openide/util/Lookup$Result; s � � � addAll (Ljava/util/Collection;)Z � !- Querying MimeLookupInitializer( � � � � lookup ()Lorg/openide/util/Lookup; � MimeLookup for ' � 
' rebuilt.	  � � � WORKER #Lorg/openide/util/RequestProcessor;
 D  � org/openide/util/Lookup
 D � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � [Lorg/openide/util/Lookup;
  � � � 
setLookups <(Ljava/util/concurrent/Executor;[Lorg/openide/util/Lookup;)V � � � � getClass ()Ljava/lang/Class;
 � � � � c java/lang/Class getName � Corg.netbeans.modules.editor.mimelookup.impl.DefaultMimeDataProvider
 % � � � equals
 R � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; � !org/openide/util/RequestProcessor � MimePathLookupFiring
 � �  � (Ljava/lang/String;I)V � org/openide/util/LookupListener 	Signature WLorg/openide/util/Lookup$Result<Lorg/netbeans/spi/editor/mimelookup/MimeDataProvider;>; \Lorg/openide/util/Lookup$Result<Lorg/netbeans/spi/editor/mimelookup/MimeLookupInitializer;>; 0(Lorg/netbeans/api/editor/mimelookup/MimePath;)V Code LineNumberTable LocalVariableTable this 7Lorg/netbeans/modules/editor/mimelookup/MimePathLookup; r :Lorg/netbeans/modules/editor/mimelookup/MimePathLookup$1R; StackMapTable MethodParameters beforeLookup %(Lorg/openide/util/Lookup$Template;)V template "Lorg/openide/util/Lookup$Template; LocalVariableTypeTable %Lorg/openide/util/Lookup$Template<*>; � java/lang/Object � java/lang/Throwable ((Lorg/openide/util/Lookup$Template<*>;)V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getMimePath /()Lorg/netbeans/api/editor/mimelookup/MimePath; mimePathLookup Lorg/openide/util/Lookup; provider 5Lorg/netbeans/spi/editor/mimelookup/MimeDataProvider; mli :Lorg/netbeans/spi/editor/mimelookup/MimeLookupInitializer; children Ljava/util/Collection; i I initializers mp lookups Ljava/util/ArrayList; paths Ljava/util/List; RLjava/util/Collection<Lorg/netbeans/spi/editor/mimelookup/MimeLookupInitializer;>; SLjava/util/Collection<+Lorg/netbeans/spi/editor/mimelookup/MimeLookupInitializer;>; 0Ljava/util/ArrayList<Lorg/openide/util/Lookup;>; ?Ljava/util/List<Lorg/netbeans/api/editor/mimelookup/MimePath;>; resultChanged !(Lorg/openide/util/LookupEvent;)V ev Lorg/openide/util/LookupEvent; <clinit> 
SourceFile MimePathLookup.java Ljava/lang/SuppressWarnings; value deprecation InnerClasses R Result   org/openide/util/Lookup$Template Template 1    �   I J    � �         ,     : ;  �    �  ? ;  �    �         �  �   �     X*� *� +� � Y� �*+� *+� � +� "� $� � � *� -Y*� /M,� 2*,� 8� <*,� =� @�    �   .    8  4 	 :  ;  >  ? 9 M B N G O O P W Q �        X � �     X    B  � �  �   $ �      ] �        �        � �  �   �     *YM�*� � *� *� A,ç N,�-��             �       U  V  W  X  Z  [ �        � �      � �  �        � �  �    �  �D ��  �    �   �    � �     �    � �  �   /     *� �    �       _ �        � �    C   �  �  
  �� DY� FL� G� K� Q� '� G� WY� YZ� \*� � `� \d� \� f� i*� <� l� r M,� x � n,� ~ � �N*� *� *-� �� ��޲ G� K� Q� +� G� WY� Y�� \*� � `� \�� \-� �� f� i-*� � � :� 
+� �W���*� � �M,� � N-� x � �-� ~ � :*� @� l:6� � X� DY� � � �:� r :� x � +� ~ � �:		� � � � l� � W���:����� r :� x � Z� ~ � �:� G� K� Q� *� G� WY� Y�� \� `� \�� \� �� f� i� � :� 
+� �W������ G� K� Q� '� G� WY� Y�� \*� � `� \�� \� f� i*� �++� �� �� �� �� ñ    �   � "   c  e  f 8 j X k g l j n v o � q � r � s � u � � � � � � � � � � �! �: �= �A �G �f �r �� �� �� �� �� �� �� �� �� � �   z  �  � �  X ^  !  	 ?  � _ �  � � f H  � �  � �	    � � �   �
  �9  �   *  ?  � �  �
  �9  �   S � 8 D�  y� $ �3� � �  � y�   s� " s y� 1� 	�  y� H �� � � /  � �  �   C     +� � � �ж Ҭ    �       � �        � �        �       !  �   =     *� A�    �   
    �  � �        � �       �         �   5      � ˸ ճ G� �Y�� ݳ ��    �   
    -  .     �     [ s     -     m �	 �! 