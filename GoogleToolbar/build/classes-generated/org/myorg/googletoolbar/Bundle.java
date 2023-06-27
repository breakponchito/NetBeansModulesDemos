package org.myorg.googletoolbar;
/** Localizable strings for {@link org.myorg.googletoolbar}. */
class Bundle {
    /**
     * @return <i>Google</i>
     * @see GoogleActionListener
     */
    static String CTL_GoogleActionListener() {
        return org.openide.util.NbBundle.getMessage(Bundle.class, "CTL_GoogleActionListener");
    }
    /**
     * @return <i>OpenFileSelection</i>
     * @see MyListenerActionOpenFileSelection
     */
    static String CTL_MyListenerActionOpenFileSelection() {
        return org.openide.util.NbBundle.getMessage(Bundle.class, "CTL_MyListenerActionOpenFileSelection");
    }
    private Bundle() {}
}
