����   4 p
      Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$Autoscroller <init> D(Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI;)V	   	 
 this$0 ALorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI;
      java/lang/Object ()V	     	direction I	     timer Ljavax/swing/Timer;
      javax/swing/Timer 	isRunning ()Z
      #(ILjava/awt/event/ActionListener;)V
  " # $ 
setRepeats (Z)V
  & '  start
  ) *  stop
 , - . / 0 ?org/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI scroll >()Lorg/netbeans/swing/tabcontrol/plaf/ScrollingTabLayoutModel;
 2 3 4 5 6 :org/netbeans/swing/tabcontrol/plaf/ScrollingTabLayoutModel 	getOffset ()I
 2 8 9 : 	setOffset (I)I
 , < = > 
access$900 o(Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI;)Lorg/netbeans/swing/tabcontrol/TabDisplayer;
 @ A B C D *org/netbeans/swing/tabcontrol/TabDisplayer getModel .()Lorg/netbeans/swing/tabcontrol/TabDataModel; F G H I 6 *org/netbeans/swing/tabcontrol/TabDataModel size
 2 K L  isLastTabClipped
 , N O > access$1000
 @ Q R  repaint T java/awt/event/ActionListener Code LineNumberTable LocalVariableTable this NLorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$Autoscroller; MethodParameters 
scrollLeft Z newDirection StackMapTable actionPerformed (Ljava/awt/event/ActionEvent;)V offset e Ljava/awt/event/ActionEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; �(Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI;Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$1;)V x0 x1 CLorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$1; 
SourceFile !BasicScrollingTabDisplayerUI.java InnerClasses Autoscroller o Aorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$1      S            	 
        U   =     *+� *� *� �    V   
   � 	� W        X Y   Z    	  ' $  U   �     P� � =*� � *� � � *� � .*� � *� Y,*� � *� � !*� *� � %�    V   "    
 $ , ; C H O
 W        P X Y     P [ \  
 F ]   ^    @�  Z    [    *   U   T     *� � 
*� � (*� �    V          W        X Y   ^      _ `  U       �*� � -*� � +� 1=� *� � +d� 7W� 
*� � (� O*� � H*� � +� 1=*� � ;� ?� E d� !*� � +� J� *� � +`� 7W� 
*� � (*� � M� P�    V   2       ' . 8 C e v! }$ �% W   *    a   C : a     � X Y     � b c  ^    � '� � D�  Z    b   d     e     f  U   D     *+� �    V      � W         X Y      g 
     h i   j    k l      , m  n    