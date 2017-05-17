.class Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/util/ViewPager;


# direct methods
.method constructor <init>(Lcom/android/contacts/util/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/util/ViewPager;

    .prologue
    .line 2761
    iput-object p1, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2813
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    invoke-static {v2}, Lcom/android/contacts/util/ViewPager;->-get1(Lcom/android/contacts/util/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    invoke-static {v2}, Lcom/android/contacts/util/ViewPager;->-get1(Lcom/android/contacts/util/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2765
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2766
    const-class v1, Lcom/android/contacts/util/ViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2767
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 2768
    .local v0, "recordCompat":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-direct {p0}, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 2769
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    .line 2770
    iget-object v1, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    invoke-static {v1}, Lcom/android/contacts/util/ViewPager;->-get1(Lcom/android/contacts/util/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2771
    iget-object v1, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    invoke-static {v1}, Lcom/android/contacts/util/ViewPager;->-get1(Lcom/android/contacts/util/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    .line 2772
    iget-object v1, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    invoke-static {v1}, Lcom/android/contacts/util/ViewPager;->-get2(Lcom/android/contacts/util/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 2773
    iget-object v1, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    invoke-static {v1}, Lcom/android/contacts/util/ViewPager;->-get2(Lcom/android/contacts/util/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 2764
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 2779
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2780
    const-class v0, Lcom/android/contacts/util/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2781
    invoke-direct {p0}, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2782
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2783
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2785
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2786
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2778
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2792
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2793
    return v2

    .line 2795
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 2809
    return v3

    .line 2797
    :sswitch_0
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    invoke-virtual {v0, v2}, Lcom/android/contacts/util/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2798
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    iget-object v1, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    invoke-static {v1}, Lcom/android/contacts/util/ViewPager;->-get2(Lcom/android/contacts/util/ViewPager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/ViewPager;->setCurrentItem(I)V

    .line 2799
    return v2

    .line 2801
    :cond_1
    return v3

    .line 2803
    :sswitch_1
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2804
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    iget-object v1, p0, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/android/contacts/util/ViewPager;

    invoke-static {v1}, Lcom/android/contacts/util/ViewPager;->-get2(Lcom/android/contacts/util/ViewPager;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/ViewPager;->setCurrentItem(I)V

    .line 2805
    return v2

    .line 2807
    :cond_2
    return v3

    .line 2795
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
