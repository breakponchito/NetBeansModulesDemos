����   4 G
      =org/openide/awt/QuickSearch$SearchFieldListener$ReplaceFilter <init> 4(Lorg/openide/awt/QuickSearch$SearchFieldListener;)V	   	 
 this$1 1Lorg/openide/awt/QuickSearch$SearchFieldListener;
      javax/swing/text/DocumentFilter ()V
      java/lang/String isEmpty ()Z
      /org/openide/awt/QuickSearch$SearchFieldListener access$1502 5(Lorg/openide/awt/QuickSearch$SearchFieldListener;Z)Z
     replace d(Ljavax/swing/text/DocumentFilter$FilterBypass;IILjava/lang/String;Ljavax/swing/text/AttributeSet;)V Code LineNumberTable LocalVariableTable this ?Lorg/openide/awt/QuickSearch$SearchFieldListener$ReplaceFilter; MethodParameters fb .Ljavax/swing/text/DocumentFilter$FilterBypass; offset I length text Ljava/lang/String; attrs Ljavax/swing/text/AttributeSet; StackMapTable 1 java/lang/Throwable 
Exceptions 4 %javax/swing/text/BadLocationException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; S(Lorg/openide/awt/QuickSearch$SearchFieldListener;Lorg/openide/awt/QuickSearch$1;)V x0 x1 Lorg/openide/awt/QuickSearch$1; 
SourceFile QuickSearch.java InnerClasses ? org/openide/awt/QuickSearch SearchFieldListener ReplaceFilter C ,javax/swing/text/DocumentFilter$FilterBypass FilterBypass F org/openide/awt/QuickSearch$1        	 
            4     
*+� *� �    !      Q "       
 # $   %    	         �     <� � � *� � W*+� *� � W� :*� � W��   ! -   - / -    !   "   V X [ !] *^ -] 8^ ;_ "   >    < # $     < & '    < ( )    < * )    < + ,    < - .  /    V 0 2     3 %    &   (   *   +   -   5     6     7      D     *+� �    !      Q "         # $      8 
     9 :   ;    < =   "   > @    A  B  D	 E      