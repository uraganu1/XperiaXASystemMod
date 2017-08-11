.class interface abstract Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ViewCompatImpl"
.end annotation


# virtual methods
.method public abstract getAlpha(Landroid/view/View;)F
.end method

.method public abstract onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method public abstract performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
.end method

.method public abstract setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .param p2    # Landroid/support/v4/view/AccessibilityDelegateCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
