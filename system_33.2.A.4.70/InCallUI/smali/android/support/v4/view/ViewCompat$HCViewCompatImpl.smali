.class Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HCViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 991
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 998
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getAlpha(Landroid/view/View;)F

    move-result v0

    return v0
.end method
