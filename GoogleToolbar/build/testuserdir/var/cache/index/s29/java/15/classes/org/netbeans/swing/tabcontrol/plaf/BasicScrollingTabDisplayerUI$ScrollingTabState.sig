����   4 Z	      Qorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$ScrollingTabState this$0 ALorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI;
  	 
   Dorg/netbeans/swing/tabcontrol/plaf/BasicTabDisplayerUI$BasicTabState <init> ;(Lorg/netbeans/swing/tabcontrol/plaf/BasicTabDisplayerUI;)V
     getState (I)I
      ?org/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI getFirstVisibleTab ()I
     getLastVisibleTab  +org/netbeans/swing/tabcontrol/plaf/TabState
     
access$200 o(Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI;)Lorg/netbeans/swing/tabcontrol/TabDisplayer;
 ! " # $ % *org/netbeans/swing/tabcontrol/TabDisplayer getModel .()Lorg/netbeans/swing/tabcontrol/TabDataModel; ' ( ) *  *org/netbeans/swing/tabcontrol/TabDataModel size
  , -  getTabsAreaWidth
  / 0 1 scroll >()Lorg/netbeans/swing/tabcontrol/plaf/ScrollingTabLayoutModel;
 3 4 5 6  :org/netbeans/swing/tabcontrol/plaf/ScrollingTabLayoutModel getMinimumLeftClippedWidth
 3 8 9  getMinimumRightClippedWidth
  ; <  
access$300
 3 > ? @ isLastTabClipped ()Z
 3 B C  	getOffset D(Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI;)V Code LineNumberTable LocalVariableTable this SLorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$ScrollingTabState; MethodParameters tabIndex I result first last StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile !BasicScrollingTabDisplayerUI.java InnerClasses ScrollingTabState X 6org/netbeans/swing/tabcontrol/plaf/BasicTabDisplayerUI BasicTabState !             D  E   ?     *+� *+� �    F      A G        H I         J    �     E  �     �*� =*� � >*� � 6� 	� @�� "� *� � �  � & � 
�=� �*� � +*� � .� 2*� � .� 7`� 7� 2d� **� � :�  � & � *� � .� =� 
�=� 1� *� � .� A� �=� *� � .� =� �=�    F   R   D E F H "I %K 4L CP JR XS _T zU �V �W �Z �\ �] �_ �` �c G   4    � H I     � K L   � M L   � N L   � O L  P    � "$� R J    K   Q     R    S    T U       V   W Y 