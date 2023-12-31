Êþº¾   4 ¬
      java/lang/Object <init> ()V  java/util/ArrayList
  	      *org/netbeans/swing/outline/ProxyTableModel 	listeners Ljava/util/List;	     rowmodel %Lorg/netbeans/swing/outline/RowModel;	     outlineModel )Lorg/netbeans/swing/outline/OutlineModel;      #org/netbeans/swing/outline/RowModel getColumnClass (I)Ljava/lang/Class;     ! getColumnCount ()I  # $ % getColumnName (I)Ljava/lang/String;
  ' ( ) getNodeForRow (I)Ljava/lang/Object;	  + , - $assertionsDisabled Z / java/lang/AssertionError 1 java/lang/StringBuilder
 0  4 Some node should exist on row 
 0 6 7 8 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 0 : 7 ; (I)Ljava/lang/StringBuilder; =  and on column  ? , but was null.
 0 A B C toString ()Ljava/lang/String;
 . E  F (Ljava/lang/Object;)V  H I J getValueFor '(Ljava/lang/Object;I)Ljava/lang/Object;  L M N isCellEditable (Ljava/lang/Object;I)Z P Q R S T java/util/List remove (Ljava/lang/Object;)Z P V W T add P Y Z ! size \ $javax/swing/event/TableModelListener P ^ _ ` toArray (([Ljava/lang/Object;)[Ljava/lang/Object; b '[Ljavax/swing/event/TableModelListener; [ d e f tableChanged &(Ljavax/swing/event/TableModelEvent;)V  h i j setValueFor ((Ljava/lang/Object;ILjava/lang/Object;)V l !javax/swing/event/TableModelEvent
 k n  o $(Ljavax/swing/table/TableModel;III)V
  q r f fire
  t u v getOutlineModel +()Lorg/netbeans/swing/outline/OutlineModel; x y z { | 'org/netbeans/swing/outline/OutlineModel 
getValueAt (II)Ljava/lang/Object;
 ~     java/lang/Class desiredAssertionStatus ()Z  javax/swing/table/TableModel 	Signature 8Ljava/util/List<Ljavax/swing/event/TableModelListener;>; ((Lorg/netbeans/swing/outline/RowModel;)V Code LineNumberTable LocalVariableTable this ,Lorg/netbeans/swing/outline/ProxyTableModel; MethodParameters setOutlineModel ,(Lorg/netbeans/swing/outline/OutlineModel;)V mdl columnIndex I #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getRowCount rowIndex node Ljava/lang/Object; StackMapTable (II)Z removeTableModelListener )(Ljavax/swing/event/TableModelListener;)V l &Ljavax/swing/event/TableModelListener; addTableModelListener i e #Ljavax/swing/event/TableModelEvent; ¤ java/lang/Throwable 
setValueAt (Ljava/lang/Object;II)V aValue row <clinit> 
SourceFile ProxyTableModel.java 0                         , -           U     *· *» Y· 	µ 
*+µ ±           (  #  )  *                                  >     *+µ ±       
    /  0                            u v     /     *´ °           5                    ?     *´ ¹  °           :                                     !     4     
*´ ¹  ¬           ?        
              $ %     ?     *´ ¹ " °           D                                    !     ,     ¬           K                      { |     ®     G*· &N-Ç 4² * ,» .Y» 0Y· 23¶ 5¶ 9<¶ 5¶ 9>¶ 5¶ @· D¿°*´ -¹ G °           P  Q 
 R 9 S ; U    *    G       G      G     A       	 ü 9     	                M      ^     *· &N*´ -¹ K ¬       
    Z  [    *                             	               !       D     *´ 
+¹ O W±       
    `  a                                  !       D     *´ 
+¹ U W±       
    e  f                                   r f     ô     C*YNÂ*´ 
¹ X ½ [M*´ 
,¹ ] À aM-Ã§ 
:-Ã¿>,¾¢ ,2+¹ c §ÿî±   ! $   $ ( $       "    j  k  l  m + n 3 o < n B q    4     b  -        C       C ¡ ¢  +   b     - ÿ $   k    £ÿ    k a  ü ú      ¡    ¥ ¦          (*· &:*´ +¹ g » kY*· m:*· p±           u  v  w ! y ' z    >    (       ( §     (      (     !    !  ¡ ¢      §                  ( )     @     *¶ s¹ w °                           ¨       ¨    ©      4      ¶ } § ³ *±           "     @  ª    «