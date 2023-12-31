����   4 Z
      java/lang/Object <init> ()V   	 
     Dorg/openide/explorer/propertysheet/SelectionAndScrollPositionManager lastSelectedGroup Ljava/lang/String;	 
    nodeName	 
    namesToPositions Ljava/util/Map;
      java/lang/Integer valueOf (I)Ljava/lang/Integer;      ! java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	 
 # $  groupsToNodes  & ' ( get &(Ljava/lang/Object;)Ljava/lang/Object; * java/lang/String	 
 , - . zero Ljava/lang/Integer;
  0 1 2 intValue ()I 4 java/util/HashMap
 3 
  7  8 (I)V 	Signature 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>; 6Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>; Code LineNumberTable LocalVariableTable this FLorg/openide/explorer/propertysheet/SelectionAndScrollPositionManager; setCurrentNodeName (Ljava/lang/String;)V name MethodParameters getCurrentNodeName ()Ljava/lang/String; getLastSelectedGroupName storeScrollPosition (ILjava/lang/String;)V pos I StackMapTable N java/lang/Throwable storeLastSelectedGroup group getGroupNameForNodeName &(Ljava/lang/String;)Ljava/lang/String; result getScrollPositionForNodeName (Ljava/lang/String;)I found <clinit> 
SourceFile &SelectionAndScrollPositionManager.java   
     
 $   9    : 
    9    ;  - .             	      <   B     *� *� 	*� �    =         ! 
 " >        ? @    A B  <   >     *+� �    =   
    *  + >        ? @      C   D    C    E F  <   /     *� �    =       . >        ? @    G F  <   /     *� 	�    =       2 >        ? @    H I  <   �     %� #� YN² ,� �  W-ç 
:-���  
      !     =       <  = 
 >  ? $ A >        % ? @     % J K    % C   L    �   
 )   M�  D   	 J   C    O B  <   �     +*� � &� "YM�*+� 	� "*� +�  W,ç N,�-��   " %   % ( %    =       H  I  J  K   L * N >       + ? @     + P   L    � %  
 )   M�  D    P    Q R  <   �     ,M� "YN² "+� % � )M-ç 
:-��,� *� 	M,�             =       c  e  f  g ! i % j * m >        , ? @     , C    * S   L    �   
 ) )   M�  D    C    T U  <   �     � +M� +� % � N-� -M,� /�    =       q  r  t  u  x >   *     ? @      C     S .    V .  L    �    D    C    W   <   @       � 3Y� 5� "� 3Y� 5� � Y� 6� +�    =        
      X    Y