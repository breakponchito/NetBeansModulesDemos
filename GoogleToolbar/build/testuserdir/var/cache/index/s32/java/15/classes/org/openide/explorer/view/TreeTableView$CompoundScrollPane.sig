����   4 -
      javax/swing/JPanel <init> ()V
  	 
   :org/openide/explorer/view/TreeTableView$CompoundScrollPane getPreferredSize ()Ljava/awt/Dimension;  javax/swing/Scrollable Code LineNumberTable LocalVariableTable this <Lorg/openide/explorer/view/TreeTableView$CompoundScrollPane; 	setBorder (Ljavax/swing/border/Border;)V b Ljavax/swing/border/Border; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override;  getScrollableTracksViewportWidth ()Z getScrollableBlockIncrement (Ljava/awt/Rectangle;II)I visibleRect Ljava/awt/Rectangle; orientation I 	direction !getScrollableTracksViewportHeight "getPreferredScrollableViewportSize getScrollableUnitIncrement 
SourceFile TreeTableView.java InnerClasses + 'org/openide/explorer/view/TreeTableView CompoundScrollPane 0                3     *� �       
   � �                    5      �          �                                         ,     �          �                            K     
�          �    *                   ! "     # "         !   #            $      ,     �          �                      %      /     *� �                                &      K     
�              *                   ! "     # "         !   #            '    ( )   
   * , 